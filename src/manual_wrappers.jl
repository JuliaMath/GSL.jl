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

# The following code relies on `gsl_multiroot_function` being a mutable type
@assert ismutable(gsl_multiroot_function(C_NULL, 0, C_NULL))

function gsl_multiroot_function_helper(x_vec, f, y_vec)
    x = wrap_gsl_vector(x_vec)
    y = wrap_gsl_vector(y_vec)
    f(x, y)
    return Cint(GSL.GSL_SUCCESS)
end

function wrap_gsl_multiroot_function(fn::F, n) where F
    param_ref = Base.cconvert(Ref{F}, fn)
    fptr = @cfunction(gsl_multiroot_function_helper,
                      Cint, (Ptr{gsl_vector}, Ref{F}, Ptr{gsl_vector}))
    param_ptr = Base.unsafe_convert(Ref{F}, param_ref)
    gsl_func = gsl_multiroot_function(fptr, n, param_ptr)
    return gsl_func, param_ref
end

function Base.cconvert(::Type{Ref{gsl_multiroot_function}}, (fn, n)::NTuple{2,Any})
    return wrap_gsl_multiroot_function(fn, n)
end
function Base.unsafe_convert(::Type{Ref{gsl_multiroot_function}},
                             (gsl_func,)::Tuple{gsl_multiroot_function,Any})
    return pointer_from_objref(gsl_func)
end

Base.cconvert(::Type{Ref{gsl_multiroot_function}}, gslf::gsl_multiroot_function) =
    convert(Ref{gsl_multiroot_function}, gslf)

# The following code relies on `gsl_multiroot_function_fdf` being a mutable type
@assert ismutable(gsl_multiroot_function_fdf(C_NULL, C_NULL, C_NULL, 0, C_NULL))

function gsl_multiroot_function_f_helper(x_vec, (f,), f_vec)
    xarr = wrap_gsl_vector(x_vec)
    farr = wrap_gsl_vector(f_vec)
    f(xarr, farr)
    return Cint(GSL.GSL_SUCCESS)
end
function gsl_multiroot_function_df_helper(x_vec, (f, df), J_vec)
    xarr = wrap_gsl_vector(x_vec)
    Jmat = wrap_gsl_matrix(J_vec)
    df(xarr, Jmat)
    return Cint(GSL.GSL_SUCCESS)
end
function gsl_multiroot_function_fdf_helper(x_vec, (f, df)::NTuple{2,Any}, f_vec, J_vec)
    xarr = wrap_gsl_vector(x_vec)
    farr = wrap_gsl_vector(f_vec)
    Jmat = wrap_gsl_matrix(J_vec)
    f(xarr, farr)
    df(xarr, Jmat)
    return Cint(GSL.GSL_SUCCESS)
end
function gsl_multiroot_function_fdf_helper(x_vec, (f, df, fdf)::NTuple{3,Any},
                                           f_vec, J_vec)
    xarr = wrap_gsl_vector(x_vec)
    farr = wrap_gsl_vector(f_vec)
    Jmat = wrap_gsl_matrix(J_vec)
    fdf(xarr, farr, Jmat)
    return Cint(GSL.GSL_SUCCESS)
end

function wrap_gsl_multiroot_function_fdf(fn::FDF, n) where FDF
    param_ref = Base.cconvert(Ref{FDF}, fn)
    fptr = @cfunction(gsl_multiroot_function_f_helper,
                      Cint, (Ptr{gsl_vector}, Ref{FDF}, Ptr{gsl_vector}))
    dfptr = @cfunction(gsl_multiroot_function_df_helper,
                       Cint, (Ptr{gsl_vector}, Ref{FDF}, Ptr{gsl_matrix}))
    fdfptr = @cfunction(gsl_multiroot_function_fdf_helper,
                        Cint, (Ptr{gsl_vector}, Ref{FDF}, Ptr{gsl_vector}, Ptr{gsl_matrix}))
    param_ptr = Base.unsafe_convert(Ref{FDF}, param_ref)
    gsl_func = gsl_multiroot_function_fdf(fptr, dfptr, fdfptr, n, param_ptr)
    return gsl_func, param_ref
end

# Do not define these since there's no safe way to use these at the moment
# function Base.cconvert(::Type{Ref{gsl_multiroot_function_fdf}},
#                        (f, df, n)::NTuple{3,Any})
#     return wrap_gsl_multiroot_function_fdf((f, df), n)
# end
# function Base.cconvert(::Type{Ref{gsl_multiroot_function_fdf}},
#                        (f, df, fdf, n)::NTuple{4,Any})
#     return wrap_gsl_multiroot_function_fdf((f, df, fdf), n)
# end
# function Base.unsafe_convert(::Type{Ref{gsl_multiroot_function_fdf}},
#                              (gsl_func,)::Tuple{gsl_multiroot_function_fdf,Any})
#     return pointer_from_objref(gsl_func)
# end

# Base.cconvert(::Type{Ref{gsl_multiroot_function_fdf}}, gslf::gsl_multiroot_function_fdf) =
#     convert(Ref{gsl_multiroot_function_fdf}, gslf)

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

@doc md"""
$(Docs.doc(C.cheb_alloc))
"""
mutable struct GSLCheb
    ptr::Ptr{gsl_cheb_series}
    param_ref
    gsl_func::gsl_function
    function GSLCheb(order)
        cs = new(cheb_alloc(order), nothing)
        finalizer(cheb_free, cs)
        return cs
    end
end
export GSLCheb

Base.cconvert(::Type{Ref{gsl_cheb_series}}, cs::GSLCheb) = cs
Base.unsafe_convert(::Type{Ref{gsl_cheb_series}}, cs::GSLCheb) = cs.ptr
Base.unsafe_convert(::Type{Ptr{gsl_cheb_series}}, cs::GSLCheb) = cs.ptr

@doc md"""
$(Docs.doc(C.cheb_init))
"""
function cheb_init(cs::GSLCheb, func::F, a, b) where F
    cs.gsl_func, cs.param_ref = wrap_gsl_function(func)
    return C.cheb_init(cs, cs.gsl_func, a, b)
end
function cheb_init(cs::GSLCheb, func::gsl_function, a, b)
    cs.gsl_func = func
    cs.param_ref = nothing
    return C.cheb_init(cs, cs.gsl_func, a, b)
end
function cheb_init(cs::Ptr{gsl_cheb_series}, func::gsl_function, a, b)
    return C.cheb_init(cs, func, a, b)
end

@doc md"""
$(Docs.doc(C.cheb_free))
"""
function cheb_free(cs::Ptr{gsl_cheb_series})
    C.cheb_free(cs)
end
function cheb_free(cs::GSLCheb)
    if cs.ptr != C_NULL
        C.cheb_free(cs)
        cs.ptr = C_NULL
    end
    return
end

@doc md"""
$(Docs.doc(C.min_fminimizer_alloc))
"""
mutable struct GSLMinFMinimizer
    ptr::Ptr{gsl_min_fminimizer}
    param_ref
    gsl_func::gsl_function
    function GSLMinFMinimizer(T)
        s = new(min_fminimizer_alloc(T), nothing)
        finalizer(min_fminimizer_free, s)
        return s
    end
end
export GSLMinFMinimizer

Base.cconvert(::Type{Ref{gsl_min_fminimizer}}, s::GSLMinFMinimizer) = s
Base.unsafe_convert(::Type{Ref{gsl_min_fminimizer}}, s::GSLMinFMinimizer) = s.ptr
Base.unsafe_convert(::Type{Ptr{gsl_min_fminimizer}}, s::GSLMinFMinimizer) = s.ptr

@doc md"""
$(Docs.doc(C.min_fminimizer_set))
"""
function min_fminimizer_set(s::GSLMinFMinimizer, f::F,
                            x_minimum, x_lower, x_upper) where F
    s.gsl_func, s.param_ref = wrap_gsl_function(f)
    return C.min_fminimizer_set(s, s.gsl_func, x_minimum, x_lower, x_upper)
end
function min_fminimizer_set(s::GSLMinFMinimizer, f::gsl_function,
                            x_minimum, x_lower, x_upper)
    s.gsl_func = f
    s.param_ref = nothing
    return C.min_fminimizer_set(s, s.gsl_func, x_minimum, x_lower, x_upper)
end
function min_fminimizer_set(s::Ptr{gsl_min_fminimizer}, f::gsl_function,
                            x_minimum, x_lower, x_upper)
    return C.min_fminimizer_set(s, f, x_minimum, x_lower, x_upper)
end

@doc md"""
$(Docs.doc(C.min_fminimizer_set_with_values))
"""
function min_fminimizer_set_with_values(s::GSLMinFMinimizer, f::F, x_minimum, f_minimum,
                                        x_lower, f_lower, x_upper, f_upper) where F
    s.gsl_func, s.param_ref = wrap_gsl_function(f)
    return C.min_fminimizer_set_with_values(s, s.gsl_func, x_minimum, f_minimum,
                                            x_lower, f_lower, x_upper, f_upper)
end
function min_fminimizer_set_with_values(s::GSLMinFMinimizer, f::gsl_function, x_minimum,
                                        f_minimum, x_lower, f_lower, x_upper, f_upper)
    s.gsl_func = f
    s.param_ref = nothing
    return C.min_fminimizer_set_with_values(s, s.gsl_func, x_minimum,
                                            f_minimum, x_lower, f_lower,
                                            x_upper, f_upper)
end
function min_fminimizer_set_with_values(s::Ptr{gsl_min_fminimizer}, f::gsl_function,
                                        x_minimum, f_minimum, x_lower, f_lower,
                                        x_upper, f_upper)
    return C.min_fminimizer_set_with_values(s, f, x_minimum, f_minimum, x_lower,
                                            f_lower, x_upper, f_upper)
end

@doc md"""
$(Docs.doc(C.min_fminimizer_free))
"""
function min_fminimizer_free(s::Ptr{gsl_min_fminimizer})
    C.min_fminimizer_free(s)
end
function min_fminimizer_free(s::GSLMinFMinimizer)
    if s.ptr != C_NULL
        C.min_fminimizer_free(s)
        s.ptr = C_NULL
    end
    return
end

@doc md"""
$(Docs.doc(C.root_fsolver_alloc))
"""
mutable struct GSLRootFSolver
    ptr::Ptr{gsl_root_fsolver}
    param_ref
    gsl_func::gsl_function
    function GSLRootFSolver(T)
        s = new(root_fsolver_alloc(T), nothing)
        finalizer(root_fsolver_free, s)
        return s
    end
end
export GSLRootFSolver

Base.cconvert(::Type{Ref{gsl_root_fsolver}}, s::GSLRootFSolver) = s
Base.unsafe_convert(::Type{Ref{gsl_root_fsolver}}, s::GSLRootFSolver) = s.ptr
Base.unsafe_convert(::Type{Ptr{gsl_root_fsolver}}, s::GSLRootFSolver) = s.ptr

@doc md"""
$(Docs.doc(C.root_fsolver_set))
"""
function root_fsolver_set(s::GSLRootFSolver, f::F, x_lower, x_upper) where F
    s.gsl_func, s.param_ref = wrap_gsl_function(f)
    return C.root_fsolver_set(s, s.gsl_func, x_lower, x_upper)
end
function root_fsolver_set(s::GSLRootFSolver, f::gsl_function, x_lower, x_upper)
    s.gsl_func = f
    s.param_ref = nothing
    return C.root_fsolver_set(s, s.gsl_func, x_lower, x_upper)
end
function root_fsolver_set(s::Ptr{gsl_root_fsolver}, f::gsl_function, x_lower, x_upper)
    return C.root_fsolver_set(s, f, x_lower, x_upper)
end

@doc md"""
$(Docs.doc(C.root_fsolver_free))
"""
function root_fsolver_free(s::Ptr{gsl_root_fsolver})
    C.root_fsolver_free(s)
end
function root_fsolver_free(s::GSLRootFSolver)
    if s.ptr != C_NULL
        C.root_fsolver_free(s)
        s.ptr = C_NULL
    end
    return
end

@doc md"""
$(Docs.doc(C.root_fdfsolver_alloc))
"""
mutable struct GSLRootFDFSolver
    ptr::Ptr{gsl_root_fdfsolver}
    param_ref
    gsl_func::gsl_function_fdf
    function GSLRootFDFSolver(T)
        s = new(root_fdfsolver_alloc(T), nothing)
        finalizer(root_fdfsolver_free, s)
        return s
    end
end
export GSLRootFDFSolver

Base.cconvert(::Type{Ref{gsl_root_fdfsolver}}, s::GSLRootFDFSolver) = s
Base.unsafe_convert(::Type{Ref{gsl_root_fdfsolver}}, s::GSLRootFDFSolver) = s.ptr
Base.unsafe_convert(::Type{Ptr{gsl_root_fdfsolver}}, s::GSLRootFDFSolver) = s.ptr

@doc md"""
$(Docs.doc(C.root_fdfsolver_set))
"""
function root_fdfsolver_set(s::GSLRootFDFSolver,
                            fdf::Union{NTuple{2,Any},NTuple{3,Any}}, root)
    s.gsl_func, s.param_ref = wrap_gsl_function_fdf(fdf)
    return C.root_fdfsolver_set(s, s.gsl_func, root)
end
function root_fdfsolver_set(s::GSLRootFDFSolver, f::gsl_function_fdf, root)
    s.gsl_func = f
    s.param_ref = nothing
    return C.root_fdfsolver_set(s, s.gsl_func, root)
end
function root_fdfsolver_set(s::Ptr{gsl_root_fdfsolver}, f::gsl_function_fdf, root)
    return C.root_fdfsolver_set(s, f, root)
end

@doc md"""
$(Docs.doc(C.root_fdfsolver_free))
"""
function root_fdfsolver_free(s::Ptr{gsl_root_fdfsolver})
    C.root_fdfsolver_free(s)
end
function root_fdfsolver_free(s::GSLRootFDFSolver)
    if s.ptr != C_NULL
        C.root_fdfsolver_free(s)
        s.ptr = C_NULL
    end
    return
end

@doc md"""
$(Docs.doc(C.multiroot_fsolver_alloc))
"""
mutable struct GSLMultirootFSolver
    ptr::Ptr{gsl_multiroot_fsolver}
    param_ref
    gsl_func::gsl_multiroot_function
    function GSLMultirootFSolver(T, n)
        s = new(multiroot_fsolver_alloc(T, n), nothing)
        finalizer(multiroot_fsolver_free, s)
        return s
    end
end
export GSLMultirootFSolver

Base.cconvert(::Type{Ref{gsl_multiroot_fsolver}}, s::GSLMultirootFSolver) = s
Base.unsafe_convert(::Type{Ref{gsl_multiroot_fsolver}}, s::GSLMultirootFSolver) = s.ptr
Base.unsafe_convert(::Type{Ptr{gsl_multiroot_fsolver}}, s::GSLMultirootFSolver) = s.ptr

@doc md"""
$(Docs.doc(C.multiroot_fsolver_set))
"""
function multiroot_fsolver_set(s::GSLMultirootFSolver, (f, n), x)
    s.gsl_func, s.param_ref = wrap_gsl_multiroot_function(f, n)
    return C.multiroot_fsolver_set(s, s.gsl_func, x)
end
function multiroot_fsolver_set(s::GSLMultirootFSolver, f::gsl_multiroot_function, x)
    s.gsl_func = f
    s.param_ref = nothing
    return C.multiroot_fsolver_set(s, s.gsl_func, x)
end
function multiroot_fsolver_set(s::Ptr{gsl_multiroot_fsolver},
                               f::gsl_multiroot_function, x)
    return C.multiroot_fsolver_set(s, f, x)
end

@doc md"""
$(Docs.doc(C.multiroot_fsolver_free))
"""
function multiroot_fsolver_free(s::Ptr{gsl_multiroot_fsolver})
    C.multiroot_fsolver_free(s)
end
function multiroot_fsolver_free(s::GSLMultirootFSolver)
    if s.ptr != C_NULL
        C.multiroot_fsolver_free(s)
        s.ptr = C_NULL
    end
    return
end

@doc md"""
$(Docs.doc(C.multiroot_fdfsolver_alloc))
"""
mutable struct GSLMultirootFDFSolver
    ptr::Ptr{gsl_multiroot_fdfsolver}
    param_ref
    gsl_func::gsl_multiroot_function_fdf
    function GSLMultirootFDFSolver(T, n)
        s = new(multiroot_fdfsolver_alloc(T, n), nothing)
        finalizer(multiroot_fdfsolver_free, s)
        return s
    end
end
export GSLMultirootFDFSolver

Base.cconvert(::Type{Ref{gsl_multiroot_fdfsolver}}, s::GSLMultirootFDFSolver) = s
Base.unsafe_convert(::Type{Ref{gsl_multiroot_fdfsolver}}, s::GSLMultirootFDFSolver) =
    s.ptr
Base.unsafe_convert(::Type{Ptr{gsl_multiroot_fdfsolver}}, s::GSLMultirootFDFSolver) =
    s.ptr

@doc md"""
$(Docs.doc(C.multiroot_fdfsolver_set))
"""
function multiroot_fdfsolver_set(s::GSLMultirootFDFSolver,
                                 (f, df, n)::NTuple{3,Any}, x)
    s.gsl_func, s.param_ref = wrap_gsl_multiroot_function_fdf((f, df), n)
    return C.multiroot_fdfsolver_set(s, s.gsl_func, x)
end
function multiroot_fdfsolver_set(s::GSLMultirootFDFSolver,
                                 (f, df, fdf, n)::NTuple{4,Any}, x)
    s.gsl_func, s.param_ref = wrap_gsl_multiroot_function_fdf((f, df, fdf), n)
    return C.multiroot_fdfsolver_set(s, s.gsl_func, x)
end
function multiroot_fdfsolver_set(s::GSLMultirootFDFSolver,
                                 f::gsl_multiroot_function_fdf, x)
    s.gsl_func = f
    s.param_ref = nothing
    return C.multiroot_fdfsolver_set(s, s.gsl_func, x)
end
function multiroot_fdfsolver_set(s::Ptr{gsl_multiroot_fdfsolver}, f::gsl_multiroot_function_fdf, x)
    return C.multiroot_fdfsolver_set(s, f, x)
end

@doc md"""
$(Docs.doc(C.multiroot_fdfsolver_free))
"""
function multiroot_fdfsolver_free(s::Ptr{gsl_multiroot_fdfsolver})
    C.multiroot_fdfsolver_free(s)
end
function multiroot_fdfsolver_free(s::GSLMultirootFDFSolver)
    if s.ptr != C_NULL
        C.multiroot_fdfsolver_free(s)
        s.ptr = C_NULL
    end
    return
end
