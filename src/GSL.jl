module GSL

using Markdown
using REPL # For Docs.doc

# BEGIN MODULE C
# low-level interface
module C

using Markdown
using Libdl
using GSL_jll

# Generated code
include("gen/gsl_export.jl")
include("gen/gsl_types.jl")
include("gen/gsl_direct_wrappers.jl")
include("gen/gsl_global_vars.jl")
# Hand-written code
include("error_handling.jl")

function __init__()
    # Seems we need to load BLAS with this RTLD_GLOBAL
    flags = Libdl.RTLD_LAZY | Libdl.RTLD_DEEPBIND | Libdl.RTLD_GLOBAL
    if Libdl.dlopen_e(GSL_jll.libgslcblas_path, flags) in (C_NULL, nothing)
        error("$(libgslcblas) cannot be opened, Please re-run Pkg.build(\"GSL\"), and restart Julia.")
    end    
    # # Turn off default error handler
    set_error_handler_off()
    # Register new error handler
    set_error_handler(@cfunction(custom_error_handler, Cvoid,
                                 (Ptr{UInt8}, Ptr{UInt8}, Cint, Cint)
                                 )
                      )
    # Other things that need loading
    init_global_vars()
end

end
# END MODULE C

# BEGIN MODULE Const
# Physical constants
module Const
using Markdown
include("gen/gsl_const.jl")
end
# END MODULE Const

# Import low-level interface, re-export symbols and add secondary wrappers
using .C
include("gen/gsl_export.jl")
include("gen/heuristic_wrappers.jl")
include("manual_wrappers.jl")

end
