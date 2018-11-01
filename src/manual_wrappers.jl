## Root finding
# Macros for easier creation of gsl_function and gsl_function_fdf structs
export @gsl_function, @gsl_function_fdf
macro gsl_function(f)
    return :(
        gsl_function( @cfunction( (x,p) -> $f(x), Cdouble, (Cdouble, Ptr{Cvoid})),
                      0 )
    )
end
macro gsl_function_fdf(f, df, fdf)
    return :(
        gsl_function_fdf( @cfunction( (x,p) -> $f(x),   Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( (x,p) -> $df(x),  Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( (x,p,f,df) -> $fdf(x,f,df), Cvoid,
                                      (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
                          0 )
    )
end

## Hypergeometric function wrappers from original GSL.jl
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
export hypergeom, hypergeom_e
function hypergeom(a, b, x)
    n = length(a), length(b)
    if n == (0, 0)
        exp(x)
    elseif n == (0, 1)
        gsl_sf_hyperg_0F1(b[1], x)
    elseif n == (1, 1)
        gsl_sf_hyperg_1F1(a[1], b[1], x)
    elseif n == (2, 0)
        gsl_sf_hyperg_2F0(a[1], a[2], x)
    elseif n == (2, 1)
        gsl_sf_hyperg_2F1(a[1], a[2], b[1], x)
    else
        error("hypergeometric function of order $n is not implemented")
    end
end
function hypergeom_e(a, b, x)
    n = length(a), length(b)
    if n == (0, 0)
        sf_exp_err_e(x,0.0)
    elseif n == (0, 1)
        sf_hyperg_0F1_e(b[1], x)
    elseif n == (1, 1)
        sf_hyperg_1F1_e(a[1], b[1], x)
    elseif n == (2, 0)
        sf_hyperg_2F0_e(a[1], a[2], x)
    elseif n == (2, 1)
        sf_hyperg_2F1_e(a[1], a[2], b[1], x)
    else
        error("hypergeometric function of order $n is not implemented")
    end
end
