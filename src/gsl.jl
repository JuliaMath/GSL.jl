module GSL
    include("__FILELIST.jl")
    include("HypergeometricFunctions.jl")
    include("NumericalDifferentiationfunctions.jl")
    include("SphericalVectorDistributions.jl")
end #module

#Test
using GSL
x = randn()
try
    gsl_sf_hyperg_U(-1.0, -1.0, x) - (1 + x)
catch
    error("The GNU Scientific Library does not appear to be installed.")
end

