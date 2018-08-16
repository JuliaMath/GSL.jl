using Compat.Test
using GSL

const VERBOSE=false #change to show test output

if VERSION >= v"0.7.0-beta.234"
    import Random
    if VERSION >= v"0.7.0-DEV.3406"
        const seed! = Random.seed!
    else
        const seed! = Random.srand
    end
else
    const seed! = srand
end

seed!(1)
include("basic.jl")

#XXX doesn't work anymore?
#include("9_Permutations.jl")
include("7_24_1_Legendre_Polynomials.jl")
include("7_24_2_Associated_Legendre_Polynomials_and_Spherical_Harmonics.jl")
include("28_Numerical_Differentiation.jl")
include("HypergeometricFunctions.jl")
