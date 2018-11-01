#
# Manual wrappers for the gsl_* stuff
# 

## Root finding
# Macros for easier creation of gsl_function and gsl_function_fdf structs
export @gsl_function, @gsl_function_fdf

"""
    @gsl_function(f)

Create a `gsl_function` object.

`f(x::Float64) -> Float64`              Return target functions f
"""
macro gsl_function(f)
    return :(
        gsl_function( @cfunction( (x,p) -> $f(x), Cdouble, (Cdouble, Ptr{Cvoid})),
                      0 )
    )
end

"""
    @gsl_function_fdf(f, df, fdf)

Create a `gsl_function_fdf` object.

`f(x::Float64) -> Float64`              Return target functions f \\
`df(x::Float64) -> Float64`             Return derivative f' \\
`fdf(x::Float64) -> (Float64,Float64)`  Return (f(x), df(x))
"""
macro gsl_function_fdf(f, df, fdf)
    return :(
        gsl_function_fdf( @cfunction( (x,p) -> $f(x),   Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( (x,p) -> $df(x),  Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( #(x,p,f,df) -> $fdf(x,f,df)
                                      function (x, p, f_ptr, df_ptr)
                                      f, df = $fdf(x)
                                      unsafe_store!(f_ptr, f)
                                      unsafe_store!(df_ptr, df)
                                      return nothing
                                      end,
                                      Cvoid,
                                      (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
                          0 )
    )
end

"""
    @gsl_function_fdf(f, df)

Create a `gsl_function_fdf` object.

`f(x::Float64) -> Float64`              Return target functions f \\
`df(x::Float64) -> Float64`             Return derivative f'
"""
macro gsl_function_fdf(f, df)
    return :(
        gsl_function_fdf( @cfunction( (x,p) -> $f(x),   Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( (x,p) -> $df(x),  Cdouble, (Cdouble, Ptr{Cvoid})),
                          @cfunction( #(x,p,f,df) -> $fdf(x,f,df)
                                      function (x, p, f_ptr, df_ptr)
                                      unsafe_store!(f_ptr, myfun(x))
                                      unsafe_store!(df_ptr, myfun_deriv(x))
                                      return nothing
                                      end,
                                      Cvoid,
                                      (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
                          0 )
    )
end


export @gsl_multiroot_function

"""
    @gsl_multiroot_function(f, n)

Create a `gsl_multiroot_function` object.

`f` is function accepting `(x::Array{Float64}, out::Array{Float64})`,
both of dimension `n`.
"""
macro gsl_multiroot_function(f, n)
    return :(
        gsl_multiroot_function(
            @cfunction(function (x_vec,p,y_vec)
                           y = unsafe_wrap(Array{Float64}, unsafe_load(y_vec).data, unsafe_load(y_vec).size)
                           x = unsafe_wrap(Array{Float64}, unsafe_load(x_vec).data, unsafe_load(x_vec).size)
                           $f(x, y)
                           return Cint(GSL_SUCCESS)                       
                       end,
                       Cint,
                       (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector})),
            $n, 0 )
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
