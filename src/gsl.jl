module GSL
    include("__FILELIST.jl")
    include("GeneralPolynomialEquations.jl")
    include("HypergeometricFunctions.jl")
    include("NumericalDifferentiationfunctions.jl")
    include("SphericalVectorDistributions.jl")
end #module

#Test
using GSL
try
    #Turn off GSL's default error handler so that Julia doesn't segfault on error
    gsl_set_error_handler_off() 
    gsl_sf_hyperg_U(-1.0, -1.0, randn())
catch
    error("The GNU Scientific Library does not appear to be installed.")
end

