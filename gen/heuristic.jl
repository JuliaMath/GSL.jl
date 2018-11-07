# This tries to create clever wrappers based on heuristics.
# Some of the heuristics are the same as those written for the original GSL.jl
# wrapper script by Jiahao Chen.
#
# Ludvig af Klinteberg, 2018
#
# TODO: error handler on integer output

# List of functions that herustic should ignore (original name)
heuristic_ignore_list = ["gsl_vector_char_const_ptr", "gsl_matrix_char_const_ptr"]

function secondary_wrappers(functions, docs)
    ### Secondary layer of wrappers
    output = HEAD
    for f in functions
        name = f.name
        basename = replace(name, r"^gsl_"=>"")
        allargs_list = map(a->a.name, f.args)
        allargs = join(allargs_list, ", ")                       
        wrapfun = ""
        allocation = ""
        outputcheck = ""
        returnlist = []
        returntypes = []        
        write_wrapper = false

        # Go through args, see if any so be classified as output
        output_args = []
        pass_through_args = []
        for a in f.args
            if startswith(name, "gsl_sf_") &&
                occursin("result", a.name) && a.ctype=="double" && a.ptr && !a.constant
                # For gsl_sf_* functions:
                # If argument:
                # - Name contains result
                # - Type is double*
                # - Type is non const
                # Then:
                # - Assume output array
                # - If integer arguments nmin and nmax, assume size nmax-nmin+1
                # - If integer argument nmax, assume size nmax+1
                # - If integer argument lmax, assume size lmax+1 unless its a Legendre
                # - If a Legendre array function, get size from GSL
                #   Else:
                #   - Assume size is given by first integer argument
                size = ""
                if "nmax" in allargs_list && "nmin" in allargs_list
                    size = "(nmax - nmin + 1)"
                elseif "nmax" in allargs_list
                    size = "(nmax + 1)"                    
                elseif "lmax" in allargs_list
                    if occursin("legendre_array", name) || occursin("legendre_deriv_array", name) ||
                        occursin("legendre_deriv_alt_array", name) || occursin("legendre_deriv2_array", name) ||
                        occursin("legendre_deriv2_alt_array", name)
                        size = "sf_legendre_array_n(lmax)"
                    else 
                        size = "(lmax+1)"
                    end
                else
                    for b in f.args
                        if occursin("int", b.ctype) || occursin("size_t", b.ctype)
                            size = b.name
                            break
                        end
                    end
                end
                if isempty(size)
                    push!(pass_through_args, a)
                else
                    allocation *= "    $(a.name) = zeros(Cdouble, $size)\n"
                    push!(returnlist, a.name)
                    push!(returntypes, "Array{Float64}")
                    write_wrapper = true
                end
            elseif a.ctype == "gsl_sf_result" && a.ptr
                # special function output
                allocation *= "    $(a.name) = gsl_sf_result(0,0)\n"
                push!(returnlist, a.name)
                push!(returntypes, "gsl_sf_result")                
                write_wrapper = true
            elseif a.ctype == "gsl_sf_result_e10" && a.ptr
                # special function output
                allocation *= "    $(a.name) = gsl_sf_result_e10(0,0,0)\n"
                push!(returnlist, a.name)
                push!(returntypes, "gsl_sf_result_e10")                                
                write_wrapper = true
            else
                push!(pass_through_args, a)
            end
        end

        if f.ret.ctype=="char" && f.ret.ptr && f.ret.constant
            # Return value is "const char*", treat as string
            outputcheck = "    output = unsafe_string(output)\n"
            push!(returntypes, "String")
            write_wrapper = true
        end
        
        if write_wrapper && !(f.name in heuristic_ignore_list)
            ptargs = join(map(a->a.name, pass_through_args), ", ")     
            head = "$basename($ptargs)"
            wrapfun = "export $basename\n"
            gsldoc = ""
            if haskey(docs, f.name)
                gsldoc = "\n\nGSL documentation:\n\n### " * docs[f.name]
            end
            if length(returntypes)==1
                outstr = returntypes[1]
            elseif length(returntypes)>1
                outstr = "("*join(returntypes, ", ")*")"
            else
                outstr = ""
            end
            wrapfun *= docstr("    $head -> $outstr\n\nC signature:\n`$(f.decl)`" * gsldoc)
            wrapfun *= "function $head\n"
            wrapfun *= allocation
            wrapfun *= "    output = C.$basename($allargs)\n"
            wrapfun *= outputcheck
            if !isempty(returnlist)
                wrapfun *= "    return " * join(returnlist, ", ") * "\n"
            else
                wrapfun *= "    return output\n"
            end
            wrapfun *= "end\n\n"
            output *= wrapfun
        end
    end
    fh = open(joinpath(OUTPUT_DIR,"heuristic_wrappers.jl"), "w")
    write(fh, output)
    close(fh)    
end
