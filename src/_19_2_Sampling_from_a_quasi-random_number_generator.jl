#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 19.2 Sampling from a quasi-random number generator #
######################################################
export gsl_qrng_get


# This function stores the next point from the sequence generator q in the
# array x.  The space available for x must match the dimension of the
# generator.  The point x will lie in the range 0 < x_i < 1 for each x_i.  An
# inline version of this function is used when HAVE_INLINE is defined.
# 
#   Returns: Cint
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_get(q::Ptr{Void}, x::Cdouble)
    gsl_errno = ccall( (:gsl_qrng_get, :libgsl), Cint, (Ptr{Void},
        Cdouble), q, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
