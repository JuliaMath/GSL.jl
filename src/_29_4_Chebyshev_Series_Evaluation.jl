#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 29.4 Chebyshev Series Evaluation #
####################################
export cheb_eval, cheb_eval_err, cheb_eval_n, cheb_eval_n_err


# This function evaluates the Chebyshev series cs at a given point x.
# 
#   Returns: Cdouble
function cheb_eval(cs::Ptr{gsl_cheb_series}, x::Real)
    ccall( (:gsl_cheb_eval, libgsl), Cdouble, (Ptr{gsl_cheb_series},
        Cdouble), cs, x )
end


# This function computes the Chebyshev series cs at a given point x, estimating
# both the series result and its absolute error abserr.  The error estimate is
# made from the first neglected term in the series.
# 
#   Returns: Cint
function cheb_eval_err(cs::Ptr{gsl_cheb_series}, x::Real)
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_cheb_eval_err, libgsl), Cint,
        (Ptr{gsl_cheb_series}, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), cs, x,
        result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[], abserr[]
end


# This function evaluates the Chebyshev series cs at a given point x, to (at
# most) the given order order.
# 
#   Returns: Cdouble
function cheb_eval_n(cs::Ptr{gsl_cheb_series}, order::Integer, x::Real)
    ccall( (:gsl_cheb_eval_n, libgsl), Cdouble, (Ptr{gsl_cheb_series},
        Csize_t, Cdouble), cs, order, x )
end


# This function evaluates a Chebyshev series cs at a given point x, estimating
# both the series result and its absolute error abserr, to (at most) the given
# order order.  The error estimate is made from the first neglected term in the
# series.
# 
#   Returns: Cint
function cheb_eval_n_err(cs::Ptr{gsl_cheb_series}, order::Integer, x::Real)
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_cheb_eval_n_err, libgsl), Cint,
        (Ptr{gsl_cheb_series}, Csize_t, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}),
        cs, order, x, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[], abserr[]
end
