using Test
using GSL

fquad = x -> x^1.5
@testset "Quadrature" begin
    ws_size = 100
    ws = integration_cquad_workspace_alloc(ws_size)

    ff = @gsl_function(fquad)

    a = 0
    b = 1
    result = Cdouble[0]
    abserr = Cdouble[0]
    nevals = Csize_t[0]
    integration_cquad(ff, a, b, 1e-10, 1e-10, ws, result, abserr, nevals)

    @test abs(result[] - 1/2.5) < abserr[]

    integration_cquad_workspace_free(ws)
end

@testset "Quadrature (closure)" begin
    # Make sure this is actually a closure
    fquad = let n = 1.5
        x -> x^n
    end
    ws_size = 100
    ws = integration_cquad_workspace_alloc(ws_size)

    a = 0
    b = 1
    result = Cdouble[0]
    abserr = Cdouble[0]
    nevals = Csize_t[0]
    integration_cquad(fquad, a, b, 1e-10, 1e-10, ws, result, abserr, nevals)

    @test abs(result[] - 1/2.5) < abserr[]

    integration_cquad_workspace_free(ws)
end
