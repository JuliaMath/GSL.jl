using Test
using GSL

fquad = x -> x^1.5
@testset "Quadrature" begin
    fquad = x -> x^1.5
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
