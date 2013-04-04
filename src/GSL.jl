module GSL
    include("__FILELIST.jl")
    include("ConvertGSL.jl")
    include("6_3_QuadraticEquations.jl")
    include("6_4_CubicEquations.jl")
    include("6_5_GeneralPolynomialEquations.jl")
    include("7_21_HypergeometricFunctions.jl")
    include("9_5_Permutation_functions.jl")
    include("20_23_SphericalVectorDistributions.jl")
    include("28_1_NumericalDifferentiationfunctions.jl")
end #module

#Test
using GSL
try
    #Turn off GSL's default error handler so that Julia doesn't segfault on error
    set_error_handler_off() 
    sf_hyperg_U(-1.0, -1.0, randn())
catch
    error("The GNU Scientific Library does not appear to be installed.")
end

set_error_handler(custom_gsl_error_handler)
