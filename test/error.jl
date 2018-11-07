using Test
import GSL

@testset "Error Handling" begin
    @info "Testing error handler..."
    try
        GSL.vector_alloc(typemax(Csize_t)) 
    catch e
        @test typeof(e) == OutOfMemoryError
    end

    @info "Testing error handler..."    
    try
        sf_hyperg_2F1(1,2,3,4)
    catch e
        @test typeof(e) == DomainError
    end
end
