__precompile__(true)

module GSL

using Compat

if isfile(joinpath(dirname(@__FILE__),"..","deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("GSL not properly installed. Please run Pkg.build(\"GSL\")")
end

include("__FILELIST.jl")
include("ConvertGSL.jl")
include("Constants.jl")
include("6_3_QuadraticEquations.jl")
include("6_4_CubicEquations.jl")
include("6_5_GeneralPolynomialEquations.jl")
include("7_5_Bessel_Functions.jl")
include("7_21_HypergeometricFunctions.jl")
include("20_23_SphericalVectorDistributions.jl")
include("23_2_Creating_ntuples.jl")
include("23_3_Opening_an_existing_ntuple_file.jl")
include("28_1_NumericalDifferentiationfunctions.jl")

function __init__()
    try
        # Turn off GSL's default error handler so that Julia doesn't segfault
        # on error
        custom_gsl_error_handler[] = try
        convert(Ptr{gsl_error_handler_t},
        cfunction(custom_error_handler, Void,
                  (Ptr{UInt8}, Ptr{UInt8}, Cint, Cint)
                  ))
        catch
            error("""Could not find the GNU Scientific Library.
                  Please ensure that libgsl is installed on your system and is available on the system path.""")
        end
        set_error_handler_off()
        set_error_handler(custom_gsl_error_handler[])
        sf_hyperg_U(-1.0, -1.0, rand())
    catch
        throw(LoadError("The GNU Scientific Library does not appear to be installed."))
    end
    function_callback_ptr[] = cfunction(function_callback, Cdouble,
                                        (Cdouble, Ptr{Void}))
end

end #module
