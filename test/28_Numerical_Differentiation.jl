using GSL
using Test

let
    f(x) = x^3
    x = 1.0
    h = 1e-3

    df_dx = 3.0
    d2f_dx2 = 6.0

    for deriv in [deriv_central, deriv_forward, deriv_backward]
        df, ddf = deriv(f, x, h)
        @test abs(df_dx - df) <= ddf <= d2f_dx2*h/2 + 2eps()/h
    end
end

