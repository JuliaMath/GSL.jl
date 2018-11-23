# Generates Julia wrappers from the GSL headers
#
# Ludvig af Klinteberg, 2018
#
# To run this, you need:
# - Modules Glob
# - pandoc
#
#
# TODO:
# - deal with variable length arguments, i.e. "splat"
# - maybe translate enum's to @enum ?

using Markdown
using Glob
include("readdocs.jl")

OUTPUT_DIR = joinpath(@__DIR__, "..", "src", "gen")
GSL_DIR = joinpath(@__DIR__, "..", "deps", "usr", "include", "gsl")

HEAD = "#
# This code is auto generated from the GSL headers, do not edit!
#

"

# List of header files to ignore
# no sparse types supported right now
ignore_headers = ["gsl_spmatrix.h", "gsl_splinalg.h", "gsl_spblas.h"]
ignore_header(filename) = any(endswith.(filename, ignore_headers))

# List of names to ignore in export
ignore_list_prefix = ["gsl_blas", "gsl_eigen_", "gsl_sort", "cblas_", "gsl_fft_", "gsl_linalg_"]
ignore_list = ["gsl_asinh", "gsl_atanh", "gsl_error", "gsl_expm1", "gsl_frexp",
               "gsl_hypot", "gsl_isinf", "gsl_isnan", "gsl_ldexp", "gsl_log1p",
               "gsl_max", "gsl_min", "gsl_acosh",
               "gsl_sf_legendre_Plm_array", "gsl_sf_legendre_Plm_deriv_array"]
ignore_this(name) = any(startswith.(name, ignore_list_prefix)) || (name in ignore_list)

type_match = Dict(
    "int" => "Cint",
    "unsigned int" => "Cuint",    
    "size_t" => "Csize_t",    
    "float" => "Cfloat",
    "double" => "Cdouble",
    "char" => "Cchar",
    "unsigned char" => "Cuchar",
    "void" => "Cvoid",
    "long" => "Clong",
    "unsigned long" => "Culong",
    "unsigned long int" => "Culong",    
    "short" => "Cshort",
    "unsigned short" => "Cushort",

    # Exceptions
    "_cfunction_" => "Ptr{Cvoid}", # As return by @cfunction    
    "CBLAS_INDEX" => "size_t", # This is #define'd in the GSL code
    "FILE" => "Cvoid", # ??
    "long double" => "Cdouble" # Fake
)
known_types = keys(type_match)

# Signatures that we use
mutable struct struct_signature
    cname
    name
    args
end
mutable struct function_signature
    name
    ret
    args
    decl
end
mutable struct function_argument
    name
    ctype
    ptr
    dblptr
    fixedlength
    constant
end
mutable struct constant_signature
    name
    value
end
mutable struct global_var_signature
    name
    type
end


function create_base_wrappers()
    headers = String[]
   
    # Try to load things in a correct     
    # This explicit ordering might or might not be enough
    push!(headers, joinpath(GSL_DIR, "gsl_block_double.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_block_complex_double.h"
                            ))    
    push!(headers, joinpath(GSL_DIR, "gsl_vector_double.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_vector_complex_double.h"))    
    push!(headers, joinpath(GSL_DIR, "gsl_matrix_double.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_eigen.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_matrix_complex_double.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_complex.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_mode.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_math.h"))
    push!(headers, joinpath(GSL_DIR, "gsl_movstat.h"))
    # Glob the rest
    append!(headers, glob("gsl_*.h", GSL_DIR))

    
    # Make sure we only load each file once
    headers = unique(headers)
    # Lists of all the items that we find
    structs = Array{struct_signature}(undef, 0)
    typedefs = Array{function_argument}(undef, 0)
    constants = Array{constant_signature}(undef, 0)
    physical_constants = Array{constant_signature}(undef, 0)
    global_vars = Array{global_var_signature}(undef, 0)                
    allfunctions = []
    # Initialize output for type file
    type_output = "const size_t = Csize_t\n\n"
    # Parse headers
    for filename in headers
        if ignore_header(filename)
            continue
        end
        filestr = load_and_clean_file(filename)
        # Parse file
        newstructs = Array{struct_signature}(undef, 0)
        newtypedefs = Array{function_argument}(undef, 0)
        newfunctions = Array{function_signature}(undef, 0)
        newconstants = Array{constant_signature}(undef, 0)        
        for line in split(filestr, "\n")
            out = parse_line(line)
            if typeof(out) == struct_signature
                push!(newstructs, out)
            elseif typeof(out) == global_var_signature
                push!(global_vars, out)
            elseif typeof(out) <: Array{function_argument}            
                append!(newtypedefs, out)
            elseif typeof(out) <: Array{constant_signature}
                for c in out
                    if startswith(c.name, "GSL_CONST_")
                        push!(physical_constants, c)
                    else
                        push!(newconstants, c)
                    end
                end
            elseif typeof(out) == function_signature
                if !any([out.name == g.name for g in newfunctions])
                    push!(newfunctions, out)
                end
            end
        end
        # Save functions for later
        if !isempty(newfunctions)
            push!(allfunctions, (filename, newfunctions))
        else
            #@info("No functions to export from here")
        end
        # Add new types to list of known types
        for s in newstructs
            type_match[s.cname] = s.name
        end
        for t in newtypedefs
            type_match[t.name] = t.name
        end
        for t in newconstants
            if t.value=="Cint" # enum
                type_match[t.name] = t.name
            end
        end
        # Output
        type_output *= gen_julia(newstructs, newtypedefs, newconstants, [], basename(filename)) 
        append!(structs, newstructs)        
        append!(typedefs, newtypedefs)
        append!(constants, newconstants)
    end
    # Write type file
    fh = open(joinpath(OUTPUT_DIR, "gsl_types.jl"), "w")
    write(fh, HEAD*type_output)
    close(fh)
    # Write physical constant file
    phys_const_output = ""
    for c in physical_constants
        phys_const_output *= "export $(juliavarname(c.name))\n"
    end
    phys_const_output *= gen_julia([], [], physical_constants, [], "Physical constants")
    fh = open(joinpath(OUTPUT_DIR, "gsl_const.jl"), "w")
    write(fh, HEAD*phys_const_output)    
    close(fh)    
    ## Next, function wrappers
    @info("Generating function wrappers")
    allfcnwrappers = ""
    functions = Array{function_signature}(undef, 0)        
    # One file per header
    wrapper_list = String[]
    for (filename, newfunctions) in allfunctions
        # Output wrapper for this header
        cleanname = replace( basename(filename), r"\W" => "_" )
        wrapfile = joinpath("direct_wrappers", "$cleanname.jl")
        push!(wrapper_list, wrapfile)
        fh = open(joinpath(OUTPUT_DIR, wrapfile), "w")
        fcn_output = gen_julia([], [], [], newfunctions, basename(filename))
        write(fh, HEAD*fcn_output)
        close(fh)
        append!(functions, newfunctions)
        allfcnwrappers *= fcn_output
    end
    # Loader for all global vars
    output = gen_global_vars(global_vars)
    fh = open(joinpath(OUTPUT_DIR, "gsl_global_vars.jl"), "w")
    write(fh, HEAD*output)
    close(fh)    
    # Main wrapper to include all subwrappers
    output = ""
    for w in wrapper_list
       output *= "include(\"$w\")\n"
    end
    fh = open(joinpath(OUTPUT_DIR, "gsl_direct_wrappers.jl"), "w")
    write(fh, HEAD*output)
    close(fh)
    # Export all names
    vnames = String[]
    append!(vnames, [t.name for t in structs])
    append!(vnames, [t.name for t in typedefs])
    append!(vnames, [t.name for t in constants])
    append!(vnames, [t.name for t in global_vars])
    fnames =  [t.name for t in functions]
    output = ""
    for n in vnames
        if exportname(n)
            output *= "export $(juliavarname(n))\n"
        end
    end
    for n in fnames
        if exportname(n)
            output *= "export $(juliafuncname(n))\n"
        end
    end
    fh = open(joinpath(OUTPUT_DIR,"gsl_export.jl"), "w")
    write(fh, HEAD*output)
    close(fh)    
    
    # # Good for debugging, remove in production
    # fh = open(joinpath(OUTPUT_DIR, "allwrappers.jl"), "w")
    # write(fh, allfcnwrappers)
    # close(fh)

    return functions
end

function load_and_clean_file(filename)
    # Regular expressions
    ml_comment = r"/\*(\*(?!/)|[^*])*\*/"s
    sl_comment = r"//.*$"m
    @info("Parsing $filename")
    fh = open(filename)
    l = readlines(fh)
    close(fh)
    filestr = join(l, "\n")
    # Remove comments
    filestr = replace(filestr, ml_comment => s"")
    filestr = replace(filestr, sl_comment => s"")
    # Remove multiline defines
    filestr = replace(filestr, r"^ *#define (.*\\ *\n)+.*"m => "")
    # Remove remaining preprocessor code,
    # except constant declarations
    filestr = replace(filestr, r"^ *#(?!define +\w+ +\(?\d[\.\de\-\+]*\)?).*$"m => "")        
    # Remove various macros
    filestr = replace(filestr, "__BEGIN_DECLS" => "")
    filestr = replace(filestr, "__END_DECLS" => "")
    filestr = replace(filestr, "INLINE_DECL" => "")
    filestr = replace(filestr, "INLINE_FUN" => "")
    # Compress all whitespace
    filestr = replace(filestr, r"\s+" => " ")
    # Add newlines after semicolons
    filestr = replace(filestr, r";+" => ";\n")
    # Add newlines after the #defines we kept
    filestr = replace(filestr, r"(#define +\w+ +\(?\d[\.\de\-\+]*\)?)" => s -> s*"\n")
    # Remove newlines inside braces or parentheses
    filestr = replace(filestr, r"\([^)]+\)" => x -> replace(x, "\n"=> " "))
    filestr = replace(filestr, r"\{[^}]+\}" => x -> replace(x, "\n"=> " "))
    # Remove leading end brace (comes from function body)
    filestr = replace(filestr, r"^ *} *"m=>"")
    # Clean up whitespace
    filestr = replace(filestr, r"^ +"m=>"")
    filestr = replace(filestr, r" +$"m=>"")
    filestr = replace(filestr, r"\n+"m=>"\n")
    filestr = replace(filestr, r" +"=>" ")    
    # Hope everything looks good now!
    #@info(filestr)
    return filestr
end

function parse_line(line)
    if line == ""
        # empty line
    elseif occursin(r"^struct \w+ {", line) || startswith(line, "typedef struct {")
        # struct declaration
        return match_struct(line)
    elseif occursin(r"^enum \w+ {", line) || startswith(line, "typedef enum {") || startswith(line, "enum {")
        # enum
        return match_enum(line)
    elseif startswith(line, "typedef ")
        # typedef
        return match_typedef(line)
    elseif startswith(line, "#define")
        return match_define(line)
    elseif startswith(line, "GSL_VAR")
        return match_gsl_var(line)
    else
        foutput = match_function(line)
        if foutput != nothing
            # function
            if !ignore_this(foutput.name)
                return foutput
            end
        end
    end
end

function match_function(s)
    if startswith(s, "return")
        # Ooops
        return nothing
    end
    # This will fail to match function declarations which define a function pointer argument
    func_dec = r"^(([\w ]+\w)( |\* | \*| \* )(\w+) ?\(([^)]+)\)) ?([;{])"s    
    functions = Array{function_signature}(undef, 0)    
    m = match(func_dec, s)
    if m == nothing
        # No match
        return nothing
    end
    decl = m.captures[1]
    ret = m.captures[2]
    star = m.captures[3]
    name = m.captures[4]
    args = split(m.captures[5],",")
    ending = m.captures[6]
    numargs = length(args)
    fargs = Array{function_argument}(undef, 0)
    for i in 1:numargs
        # Parse args
        try
            out = parse_argument(args[i])
            if out != nothing
                append!(fargs, out)
            end
        catch
            error("Failed to parse argument \"$(args[i])\"function declaration \"$(m.match)\"")
        end
    end
    nunknowns = 0
    for i=1:length(fargs)
        # Give names to nameless args
        if fargs[i].name == "_unknown_"
            fargs[i].name = "arg$nunknowns"
            nunknowns += 1
        end
    end
    if length(fargs)==1 && fargs[1].ctype=="void" && !fargs[1].ptr
        # No arguments
        pop!(fargs)
    end        
    ret = parse_argument(ret * star *"ret")[1] # Give return val a dummy name to parse it as arg
    return function_signature(name, ret, fargs, decl)
end

function parse_struct(fieldstr)
    fieldstr = split(fieldstr,";")    
    numfields = length(fieldstr)
    fields = Array{function_argument}(undef, 0)
    for i in 1:numfields-1
        # Parse args
        out = parse_argument(fieldstr[i])
        append!(fields, out)
    end
    return fields
end

function match_struct(s)
    s = trim_whitespace(s)
    # Match "struct ..." and "typedef struct ..."
    struct_dec = r"^(typedef struct|struct (\w+)) ?\{([^}]+)\} ?(\w+)? ?;"
    m = match(struct_dec, s)
    try
        if m.captures[1]=="typedef struct"
            name = m.captures[4]
            cname = name
        else
            name = m.captures[2]
            cname = "struct $name"
        end
        fields = parse_struct(m.captures[3])
        if name=="gsl_odeiv2_evolve_struct"
            # Exception: gsl_odeiv2_evolve_struct and gsl_odeiv2_driver_struct
            # have circular dependency. Set Ptr to Cvoid to avoid this.
            if fields[end].ctype=="gsl_odeiv2_driver"
                fields[end].ctype = "void"
            else
                error("Exception failed for gsl_odeiv2_evolve_struct")
            end
        end
        return struct_signature(cname, name, fields)
    catch err
        @show err                        
        error("Failed to match struct declaration \"$(m.match)\"")
    end            
end

function match_typedef(s)
    # Match simple typedefs (not struct or enum declarations)
    td_dec = r"typedef ([^{};]+);"
    m = match(td_dec, s)
    return parse_argument(m.captures[1])
end

function match_enum(s)
    # Match any "[typedef] enum {...} [name];"
    tdenum = r"enum ?\{([^}]+)\} ?(\w*) ?;"
    m = match(tdenum, s)
    if m != nothing
        interior = m.captures[1]
        name = m.captures[2]
        output = match_enum_interior(interior)
        if !isempty(name)
            push!(output, constant_signature(name, "Cint"))
        end
        return output
    end
    # Match any "enum name {...}"
    enum = r"enum (\w+) ?\{([^}]+)\}"
    m = match(enum, s)
    if m != nothing
        interior = m.captures[2]
        name = m.captures[1]
        output = match_enum_interior(interior)
        push!(output, constant_signature(name, "Cint"))
        return output
    end
    error("Failed to match enum declaration $s")
end

function match_enum_interior(interior)
    list = split(interior, ", ")
    output = Array{constant_signature}(undef, 0)
    count = 0
    for l in list
        if occursin("=", l)
            name, val = split(l, "=")
            val = trim_whitespace(val)
            # Catch if unitialized element comes after this one
            count = nothing 
        else
            name = l
            val = count
            count += 1
        end
        name = trim_whitespace(name)
        push!(output, constant_signature(name, val))
    end
    return output
end


function match_define(line)
    m = match(r"#define (\w+) \(?(\d[e\.\d\-\+]*)\)?", line)
    name = m.captures[1]
    value = m.captures[2]
    return [constant_signature(name, value)]
end

function match_gsl_var(line)
    m = match(r"^GSL_VAR const (\w+)( \*| \* |\* )(\w+) *;", line)
    if m!==nothing
        typ = m.captures[1]            
        nam = m.captures[3]
        return global_var_signature(nam, typ)
    end
    return nothing
end


function parse_argument(argstr)
    # Attempt to match argument declared in functions or structs
    argname = nothing
    argtype = nothing
    ptr = false
    dblptr = false
    fixedlength = 0
    constant = false
    a = trim_whitespace(argstr)
    if a == "..."
        # Just ignore variable arguments
        @warn("Ignoring variable argument")
        return nothing
    end
    # const has no application for us
    if occursin("const ", a)
        a = replace(a, r"const\s+" => "")
        constant = true
    end
    # Detect pointers
    if occursin(r"\*", a)
        ptr = true
        a = replace(a, r"\*" => " ")
    end
    # Detect pointers
    if occursin(r"\[\]$", a)
        ptr = true
        a = replace(a, r"\[\]$" => "")
    end
    # Detect fixed-length array (in struct declaration)
    reg_fixedlength = r"\[(\d+)\]$"
    m = match(reg_fixedlength, a)
    if m != nothing
        fixedlength = parse(Int, m.captures[1])
        ptr = false
        a = replace(a, reg_fixedlength => "")
    end    
    a = trim_whitespace(a)
    # Start matching
    m = match(r"^[\w ]+\(? *( \w+) *\)? *\([^)]+\)", a) # Check if function pointer
    if m != nothing
        argname = m.captures[1]
        argname = replace(argname, " "=> "")
        argtype = "_cfunction_"
        ptr = false

    elseif occursin(r"^\w+$", a) # singled word = nameless argument
        argname = ""
        argtype = a        
    elseif occursin(",",a) # Comma means this is a list of variables from a struct
        if ptr || dblptr || fixedlength > 0
            # TODO: Now we don't keep track of individual vars being pointers or not
            @warn("Failed to parse arg str \"$argstr\", detected var list and pointers")
            error()
        end        
        list = map(trim_whitespace, split(a, ","))
        argtype, argname1 = rsplit(list[1], " ", limit=2)
        argnames = list
        argnames[1] = argname1
        return map(s -> function_argument(s, argtype, ptr, dblptr, fixedlength, constant), argnames)
    else # Assume that last word is name, and rest is type
        argtype, argname = rsplit(a, " ", limit=2)
    end
    
    if length(argname)==0
        argname = "_unknown_"
    end
        
    # Corner case
    if argname == "function"
        argname *= "_"
    end

    # Try to detect if something went wrong
    if argtype == nothing || occursin(r"\W", argname)
        @show argtype
        @show argname
        @warn("Failed to parse arg str \"$argstr\", got type=$argtype and name=$argname")
        error()
    end
    return [function_argument(argname, argtype, ptr, dblptr, fixedlength, constant)]
end

function trim_whitespace(str)
    # Cleanup leading/trailing whitespace
    str = replace(str, r"^\s+"m => "")
    str = replace(str, r"\s+$"m => "")
    str = replace(str, r"\s+"m => " ")
    return str
end

function gen_julia(structs, typedefs, constants, functions, filename)
    typedefs_lookup = Dict()
    for (i,t) in enumerate(typedefs)
        typedefs_lookup[arg2julia(t)] = i
    end

    output = "\n#### $filename " * join(["#" for i in 1:(73-length(filename))]) * "\n\n"        

    struct_output = ""
    typedefs_written = Int64[]
    for s in structs
        jname = juliavarname(s.name)
        this_struct = ""
        this_struct *= "mutable struct $jname\n"
        this_struct *= "    "
        this_struct *= join([a.name*"::"*arg2julia(a, :struct) for a in s.args], "\n    ")        
        this_struct *= "\nend\n"
        # Add docs
        structdoc = "```\n" * this_struct * "```\n"
        gsldoc = ""
        if haskey(docs, s.name)
            gsldoc = "GSL documentation:\n\n### " * docs[s.name]
        end        
        # Check if theres a typedef pointing to this struct,
        # then write it immediately if there is.
        # This helps is subsequent structs use this typedef
        if haskey(typedefs_lookup, jname)
            idx = typedefs_lookup[jname]
            t = typedefs[idx]
            name = t.name
            jname = juliavarname(name)
            jtype = arg2julia(t, :struct)
            if jname != jtype
                this_struct *= "const $jname = $jtype\n"
                push!(typedefs_written, idx)
            end
            if isempty(gsldoc) && haskey(docs, name)
                gsldoc = "GSL documentation:\n\n### " * docs[name]
            end
        end
        struct_output *= docstr(structdoc*gsldoc)
        struct_output *= this_struct        
        struct_output *= "\n"
    end

    for c in constants
        if haskey(docs, c.name)
            output *= "\n" * docstr(docs[c.name])
        end
        jname = juliavarname(c.name)
        val = c.value
        output *= "const $jname = $val\n"
    end

    for (i,t) in enumerate(typedefs)
        jname = juliavarname(t.name)
        jtype = arg2julia(t, :struct)
        if (i in typedefs_written) || jname==jtype
            continue
        end
        output *= "const $jname = $jtype\n"
    end
    
    output *= "\n"
    output *= struct_output

    for f in functions
        typed = false
        # typed = generate function signatures with typed arguments
        jname = juliafuncname(f.name)
        jret = arg2julia(f.ret, :output)
        arglist = join([a.name * (typed ? "::"*arg2julia(a) : "") for a in f.args],", ")
        head = "$jname($arglist)"
        # See if we have matching docs from GSL
        gsldoc = ""
        if haskey(docs, f.name)
            gsldoc = "\n\nGSL documentation:\n\n### " * docs[f.name]
        end
        doc = docstr("    $head -> $jret\n\n" *
                     "C signature:\n`$(f.decl)`" * gsldoc)

        output *= doc
        output *= "function $head\n"

        output *= "    ccall((:$(f.name), libgsl), $jret, "
        if length(f.args)==1
            output *= "(" * arg2julia(f.args[1], :output) * ",), "
        else
            output *= "(" * join([arg2julia(a, :ccall) for a in f.args],", ") * "), "
        end
        output *= join([a.name for a in f.args],", ")
        output *= ")\n"

        
        output *= "end\n\n"
    end

    return output
end

function juliafuncname(cname)
    return replace(cname, r"^gsl_" => "")
end

function juliavarname(cname)
    n = replace(cname, r"^(GSL_CONST_)" => "")    
    n = replace(n, r"_struct$" => "")
    return n
end

function exportname(cname)
    return (occursin(r"^(GSL_|gsl_)", cname) && !ignore_this(cname))
end

function juliatype(ctype)
    if occursin(r"^enum", ctype)
        return "Cint"
    # elseif occursin(r"\*$", ctype)
    #     ctype = replace(ctype, r"\s*\*$" => "")
    #     return "Arrayz{$(type_match[ctype])}"
    else
        if haskey(type_match, ctype)
            return juliavarname(type_match[ctype])
        else
            error("Unknown type $ctype")
        end
    end
end

function arg2julia(a, context=:julia)
    str = ""
    jtype = juliatype(a.ctype)
    if a.ptr && a.ctype=="void"
        # Void pointers are generally not arrays
        str = "Ptr{Cvoid}"
    elseif a.ptr
        if context==:struct
            # Pointer struct fields have to be Ptr
            str *= "Ptr{$jtype}"
        elseif context==:ccall
            # To ccall we pass Ref
            str *= "Ref{$jtype}"
        elseif context==:output
            # From ccall we expect Ptr
            str *= "Ptr{$jtype}"
        else
            # Native Julia            
            str *= "Array{$jtype}"
        end
    elseif a.fixedlength > 0
        str *= "NTuple{$(a.fixedlength), $jtype}"
    else  
        str *= jtype
    end
    return str
end

function docstr(str)
    #return "\"\"\"\n$str\n\"\"\"\n"
    return "@doc md\"\"\"\n$str\n\"\"\"\n"
end

function gen_global_vars(global_vars)
    header = ""
    loader = ""
    for v in global_vars
        name = v.name
        jtype = juliatype(v.type)
        header *= "const $name = Ref{$jtype}()\n"
        loader *= "    $name[] =  @gload_pp(:$(v.name), $jtype) \n"
    end
    output = header
    output *= "

macro gload_pp(n, t)
    return :( unsafe_load(unsafe_load(cglobal((\$n, libgsl), Ptr{\$t}))) )
end

"
    
    output *= "function init_global_vars()\n"
    output *= loader
    output *= "end\n"
    
    return output
end

## RUN
if !isdefined(Main, :docs) || isempty(docs)
    docs = readdocs()
end

functions = create_base_wrappers()

@info("Generating heuristic wrappers...\n")
include("heuristic.jl")
secondary_wrappers(functions, docs)


