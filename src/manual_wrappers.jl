#
# Manual wrappers for the gsl_* stuff
# 

export wrap_gsl_vector, wrap_gsl_matrix

"""
    wrap_gsl_vector(v::Ptr{gsl_vector}) -> Array{Float64}

Return a Julia array wrapping the data of a gsl_vector
"""
@inline function wrap_gsl_vector(v::Ptr{gsl_vector})
    V = unsafe_load(v)
    @assert V.stride==1 "Cannot unsafe_wrap gsl_vector with stride != 1"
    return unsafe_wrap(Array{Float64}, V.data, V.size)
end

"""
    wrap_gsl_matrix(m::Ptr{gsl_matrix}) -> Array{Float64,2}

Return a Julia matrix wrapping the data of a gsl_matrix

**REMEMBER** that GSL stores matrices in row-major, so matrix will be transposed.
"""
@inline function wrap_gsl_matrix(m::Ptr{gsl_matrix})
    M = unsafe_load(m)
    @assert M.size2==M.tda "Cannot unsafe_wrap gsl_matrix with tda != size2."     
    return unsafe_wrap(Array{Float64}, M.data, (M.size1, M.size2))
end


## Root finding
gsl_function_helper(x::Cdouble, fn)::Cdouble = fn(x)

# The following code relies on `gsl_function` being a mutable type
# (such that we can call `pointer_from_objref` on it) to simplify the object structure
# a little bit and avoid hitting some limitation of the allocation optimizer.
@assert ismutable(gsl_function(C_NULL, C_NULL))

function wrap_gsl_function(fn::F) where F
    # We need to allocate the `gsl_function` here to be kept alive by ccall
    # This require us to create the pointer to the function and the callable object
    param_ref = Base.cconvert(Ref{F}, fn)
    fptr = @cfunction(gsl_function_helper, Cdouble, (Cdouble, Ref{F}))
    param_ptr = Base.unsafe_convert(Ref{F}, param_ref)
    gsl_func = gsl_function(fptr, param_ptr)
    return gsl_func, param_ref
end

function Base.cconvert(::Type{Ref{gsl_function}}, fn::F) where F
    return wrap_gsl_function(fn)
end
function Base.unsafe_convert(::Type{Ref{gsl_function}},
                             (gsl_func,)::Tuple{gsl_function,Any})
    return pointer_from_objref(gsl_func)
end

Base.cconvert(::Type{Ref{gsl_function}}, gslf::gsl_function) =
    convert(Ref{gsl_function}, gslf)

# The following code relies on `gsl_function_fdf` being a mutable type
@assert ismutable(gsl_function_fdf(C_NULL, C_NULL, C_NULL, C_NULL))

function gsl_function_f_helper(x::Cdouble, (f,))::Cdouble
    return f(x)
end
function gsl_function_df_helper(x::Cdouble, (f, df))::Cdouble
    return df(x)
end
function gsl_function_fdf_helper(x::Cdouble, (f, df)::NTuple{2,Any}, pf, pdf)
    unsafe_store!(pf, f(x))
    unsafe_store!(pdf, df(x))
    return
end
function gsl_function_fdf_helper(x::Cdouble, (f, df, fdf)::NTuple{3,Any}, pf, pdf)
    f, df = fdf(x)
    unsafe_store!(pf, f)
    unsafe_store!(pdf, df)
    return
end

function wrap_gsl_function_fdf(fn::FDF) where FDF
    param_ref = Base.cconvert(Ref{FDF}, fn)
    fptr = @cfunction(gsl_function_f_helper, Cdouble, (Cdouble, Ref{FDF}))
    dfptr = @cfunction(gsl_function_df_helper, Cdouble, (Cdouble, Ref{FDF}))
    fdfptr = @cfunction(gsl_function_fdf_helper, Cvoid,
                        (Cdouble, Ref{FDF}, Ptr{Cdouble}, Ptr{Cdouble}))
    param_ptr = Base.unsafe_convert(Ref{FDF}, param_ref)
    gsl_func = gsl_function_fdf(fptr, dfptr, fdfptr, param_ptr)
    return gsl_func, param_ref
end

# Do not define these since there's no safe way to use these at the moment
# function Base.cconvert(::Type{Ref{gsl_function_fdf}},
#                        fn::Union{NTuple{2,Any},NTuple{3,Any}})
#     return wrap_gsl_function_fdf(fn)
# end
# function Base.unsafe_convert(::Type{Ref{gsl_function_fdf}},
#                              (gsl_func,)::Tuple{gsl_function_fdf,Any})
#     return pointer_from_objref(gsl_func)
# end

# Base.cconvert(::Type{Ref{gsl_function_fdf}}, gslf::gsl_function_fdf) =
#     convert(Ref{gsl_function_fdf}, gslf)

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
        gsl_function_fdf( # f
                          @cfunction( (x,p) -> $f(x),   Cdouble, (Cdouble, Ptr{Cvoid})),
                          # df
                          @cfunction( (x,p) -> $df(x),  Cdouble, (Cdouble, Ptr{Cvoid})),
                          # fdf
                          @cfunction( function (x, p, f_ptr, df_ptr)
                                          f, df = $fdf(x)
                                          unsafe_store!(f_ptr, f)
                                          unsafe_store!(df_ptr, df)
                                          return nothing
                                      end,
                                      Cvoid,
                                      (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
                          # params
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
        gsl_function_fdf( # f
                          @cfunction( (x,p) -> $f(x),   Cdouble, (Cdouble, Ptr{Cvoid})),
                          # df
                          @cfunction( (x,p) -> $df(x),  Cdouble, (Cdouble, Ptr{Cvoid})),
                          # fdf that just calls f and df
                          @cfunction( function (x, p, f_ptr, df_ptr)
                                          unsafe_store!(f_ptr, $f(x))
                                          unsafe_store!(df_ptr, $df(x))
                                          return nothing
                                      end,
                                      Cvoid,
                                      (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
                          0 )
    )
end


export @gsl_multiroot_function, @gsl_multiroot_function_fdf

"""
    @gsl_multiroot_function(f, n)

Create a `gsl_multiroot_function` object for a problem of dimension `n`.

`f(x::Array{Float64}, out::Array{Float64})` stores ``f(x)`` in `out`
"""
macro gsl_multiroot_function(f, n)
    return :(
        gsl_multiroot_function(
            # f
            @cfunction(
                function (x_vec, p, y_vec)
                    x = GSL.wrap_gsl_vector(x_vec)
                    y = GSL.wrap_gsl_vector(y_vec)
                    $f(x, y)
                    return Cint(GSL.GSL_SUCCESS)                       
                end,
                Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector})),
            # n
            $(esc(n)),
            # params
            0
        )
    )
end

"""
    @gsl_multiroot_function_fdf(f, df, n)

Create a `gsl_multiroot_function_fdf` object for a problem of dimension `n`.

`f(x::Array{Float64}, out::Array{Float64})` stores ``f(x)`` in `out`.

`df(x::Array{Float64}, Jtrans::Array{Float64,2})` stores the **TRANSPOSE** of the Jacobian of ``f(x)`` in `Jtrans`.

"""
macro gsl_multiroot_function_fdf(f, df, n)
    return :(
        gsl_multiroot_function_fdf(
            # f
            @cfunction(function (x, p, f)
                           xarr = GSL.wrap_gsl_vector(x)
                           farr = GSL.wrap_gsl_vector(f)
                           $f(xarr, farr)
                           return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector})),
            # df
            @cfunction(function (x, p, J)
                       xarr = GSL.wrap_gsl_vector(x)
                       Jmat = GSL.wrap_gsl_matrix(J)
                       $df(xarr, Jmat)
                       return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_matrix})),
            # fdf that just calls f and df
            @cfunction(function (x, p, f, J)
                       xarr = GSL.wrap_gsl_vector(x)
                       farr = GSL.wrap_gsl_vector(f)
                       Jmat = GSL.wrap_gsl_matrix(J)
                       $f(xarr, farr)
                       $df(xarr, Jmat)
                       return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector}, Ptr{gsl_matrix})),
            # n
            $(esc(n)),
            # params
            0
        )
    )
end

"""
    @gsl_multiroot_function_fdf(f, df, fdf, n)

Create a `gsl_multiroot_function_fdf` object for a problem of dimension `n`.

`f(x::Array{Float64}, out::Array{Float64})` stores ``f(x)`` in `out`.

`df(x::Array{Float64}, Jtrans::Array{Float64,2})` stores the **TRANSPOSE** of the Jacobian of ``f(x)`` in `Jtrans`.

`fdf(x::Array{Float64}, out::Array{Float64}), Jtrans::Array{Float64,2})` does both of the above operations.

"""
macro gsl_multiroot_function_fdf(f, df, fdf, n)
    return :(
        gsl_multiroot_function_fdf(
            # f
            @cfunction(function (x, p, f)
                           xarr = GSL.wrap_gsl_vector(x)
                           farr = GSL.wrap_gsl_vector(f)
                           $f(xarr, farr)
                           return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector})),
            # df
            @cfunction(function (x, p, J)
                       xarr = GSL.wrap_gsl_vector(x)
                       Jmat = GSL.wrap_gsl_matrix(J)
                       $df(xarr, Jmat)
                       return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_matrix})),
            # fdf
            @cfunction(function (x, p, f, J)
                       xarr = GSL.wrap_gsl_vector(x)
                       farr = GSL.wrap_gsl_vector(f)
                       Jmat = GSL.wrap_gsl_matrix(J)
                       $fdf(xarr, farr, Jmat)
                       return Cint(GSL.GSL_SUCCESS)
                       end,
                       Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector}, Ptr{gsl_matrix})),
            # n
            $(esc(n)),
            # params
            0
        )
    )
end   

## Hypergeometric function wrappers from original GSL.jl
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
export hypergeom, hypergeom_e

# NaN values not handled correctly by GSL, see GSL.jl issue #96
@inline _hypergeom_any_nan(a,b,x) = any(isnan,a) || any(isnan,b) || isnan(x)

"""
    hypergeom(a, b, x::Float64) -> Float64

Computes the appropriate hypergeometric ``{}_p F_q`` function, 
where ``p`` and ``p`` are the lengths of the input vectors `a` and `b` respectively.  

Singleton `a` and/or `b` may be specified as scalars, 
and length-0 `a` and/or `b` may be input as simply `[]`.

Supported values of ``(p, q)`` are ``(0, 0)``, ``(0, 1)``, ``(1, 1)``, ``(2, 0)`` and ``(2, 1)``.
"""
function hypergeom(a, b, x)
    _hypergeom_any_nan(a,b,x) && return NaN
    n = length(a), length(b)
    if n == (0, 0)
        exp(x)
    elseif n == (0, 1)
        sf_hyperg_0F1(b[1], x)
    elseif n == (1, 1)
        sf_hyperg_1F1(a[1], b[1], x)
    elseif n == (2, 0)
        sf_hyperg_2F0(a[1], a[2], x)
    elseif n == (2, 1)
        sf_hyperg_2F1(a[1], a[2], b[1], x)
    else
        error("hypergeometric function of order $n is not implemented")
    end
end

"""
    hypergeom_e(a, b, x::Float64) -> gsl_sf_result

Computes the appropriate hypergeometric ``{}_p F_q`` function, 
where ``p`` and ``p`` are the lengths of the input vectors `a` and `b` respectively.  

Singleton `a` and/or `b` may be specified as scalars, 
and length-0 `a` and/or `b` may be input as simply `[]`.

Supported values of ``(p, q)`` are ``(0, 0)``, ``(0, 1)``, ``(1, 1)``, ``(2, 0)`` and ``(2, 1)``.
"""
function hypergeom_e(a, b, x)
    _hypergeom_any_nan(a,b,x) && return gsl_sf_result(NaN, NaN)
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
