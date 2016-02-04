using Base.Test
using GSL

const VERBOSE=true #change to show test output

srand(1)
include("basic.jl")

#XXX doesn't work anymore?
#include("9_Permutations.jl")
include("7_24_1_Legendre_Polynomials.jl")
include("7_24_2_Associated_Legendre_Polynomials_and_Spherical_Harmonics.jl")
include("28_Numerical_Differentiation.jl")
include("HypergeometricFunctions.jl")
