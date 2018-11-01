using Test
using Random
using GSL
using SpecialFunctions

Random.seed!(1)

@testset "GSL" begin
    include("rootfinding.jl")
    include("specfunc.jl")
    include("hypergeom.jl")
    include("legendre.jl")
    include("rng.jl")
end
