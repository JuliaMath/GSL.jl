using Compat
using Compat.Test
using Compat.Random
using GSL
using SpecialFunctions

const VERBOSE=true #change to show test output

if VERSION < v"0.7"
    srand(1)
else
    Random.seed!(1)
end

@testset "Basic" begin
    include("basic.jl")
end

#XXX doesn't work anymore?
#include("9_Permutations.jl")

@testset "7_24_1_Legendre_Polynomials" begin
    include("7_24_1_Legendre_Polynomials.jl")
end

@testset "7_24_2_Associated_Legendre_Polynomials_and_Spherical_Harmonics" begin
    include("7_24_2_Associated_Legendre_Polynomials_and_Spherical_Harmonics.jl")
end

#include("28_Numerical_Differentiation.jl")

@testset "HypergeometricFunctions" begin
    include("HypergeometricFunctions.jl")
end
