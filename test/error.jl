using Test
import GSL

# This is only needed to make `@test_logs` work with the custom error handling
# of GSL.jl
Base.occursin(r::Regex, err::GSL.C.GSLError) = occursin(r, repr(err))

@testset "Error Handling" begin
    @test_logs (:warn, r"GSL Error 8") @test_throws OutOfMemoryError GSL.vector_alloc(typemax(Csize_t))
    @test_logs (:warn, r"GSL Error 1") @test_throws DomainError      sf_hyperg_2F1(1,2,3,4)
end
