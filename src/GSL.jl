module GSL

# Deps
const depsfile = joinpath(dirname(@__DIR__), "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("GSL is not properly installed. Please build it first.")
end

# Generated code
include("gen/gsl_export.jl")
include("gen/gsl_types.jl")
include("gen/gsl_direct_wrappers.jl")
include("gen/gsl_global_vars.jl")
include("gen/heuristic_wrappers.jl")

# Hand-written code
include("error_handling.jl")
include("manual_wrappers.jl")

function __init__()
    # Load library
    check_deps()
    # Turn off default error handler
    gsl_set_error_handler_off()
    # Register new error handler
    gsl_set_error_handler(@cfunction(custom_error_handler, Cvoid,
                                     (Ptr{UInt8}, Ptr{UInt8}, Cint, Cint)
                                     )
                          )
    # Other things that need loading
    init_global_vars()
end

end
