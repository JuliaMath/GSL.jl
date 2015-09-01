if !isfile("gsl-1.16.tar.gz")
    download("ftp://ftp.gnu.org/gnu/gsl/gsl-1.16.tar.gz", "gsl-1.16.tar.gz")
    run(`tar zxf gsl-1.16.tar.gz`)
end

function parse_c_args(tokens)
    #Strip (
    tokens[4] = tokens[4][2:end]
    #Strip )
    tokens[end] = tokens[end][1:end-1]

    var_names = ASCIIString[]
    var_types = ASCIIString[]
    state = :read_type
    for token in tokens[4:end]
        if startswith(token, "@var{") #Variable identifier
            offset = endswith(token, "},") ? 2 : 1 #else ends with }
            push!(var_names, token[6:end-offset])

        elseif token=="*" #A pointer
            var_types[end] = "Ref{"*var_types[end]*"}"

        else #Type declaration
            push!(var_types, token)
        end
    end
    var_names, var_types
end

function generate_wrappers(function_data, exceptional_values)
    @show function_data, exceptional_values
    for (return_type, function_name, var_names, var_types) in function_data
        jl_varlist = ["$n::$t" for (n, t) in zip(var_names, var_types)]

        code = ["""
function $(function_name[5:end])($(join(jl_varlist, ", ")))
    errno = ccall(($function_name, :libgsl), $return_type,
        ($(join(var_types, ", ")),),
        $(join(var_names, ", ")))"""]

        if length(exceptional_values) > 0
            push!(code, "    if "*join(
                ["errno == $v" for v in exceptional_values], "||")*"""\n
                        error("Error \$errno")
                    end
                """)
        end
        push!(code, "end")
        println(join(code, "\n"))
        error()
    end
end


open("gsl-1.16/doc/specfunc-psi.texi") do file

    state = :start

    function_data = []
    exceptional_values = []

    for line in eachline(file)
        if state == :start
            if startswith(line, "@deftypefun")
                state = :in_deftypefun_block
                #Defines a function, example:
                #
                #    @deftypefun double gsl_sf_psi_n (int @var{n}, double @var{x})
                #
                tokens = split(line)
                return_type = tokens[2]
                function_name = tokens[3]

                #Parse argument list
                var_names, var_types = parse_c_args(tokens)
                function_data=[(return_type, function_name, var_names, var_types)]
            end
        elseif state == :in_deftypefun_block
            if startswith(line, "@deftypefunx")
                #Defines a function, example:
                #
                #    @deftypefunx int gsl_sf_psi_n_e (int @var{n}, double @var{x}, gsl_sf_result * @var{result})
                #
                tokens = split(line)
                return_type = tokens[2]
                function_name = tokens[3]

                #Parse argument list
                var_names, var_types = parse_c_args(tokens)
                push!(function_data, (return_type, function_name, var_names, var_types))

            elseif startswith(line, "@end deftypefun")
                function_block = generate_wrappers(function_data, exceptional_values)
                state = :start

            elseif startswith(line, "@comment Exceptional Return Values:")
                exceptional_values = ASCIIString[replace(token, ",", "") for token in split(line)[5:end]]
            end
        end
    end
end

