#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.11.1 Real Argument #
########################
export gsl_sf_dilog, gsl_sf_dilog_e


# These routines compute the dilogarithm for a real argument. In Lewin's
# notation this is Li_2(x), the real part of the dilogarithm of a real x.  It
# is defined by the integral representation Li_2(x) = - \Re \int_0^x ds
# \log(1-s) / s.  Note that \Im(Li_2(x)) = 0 for  x <= 1, and -\pi\log(x) for x
# > 1.          Note that Abramowitz & Stegun refer to the Spence integral
# S(x)=Li_2(1-x) as the dilogarithm rather than Li_2(x).
# 
#   Returns: Cdouble
function gsl_sf_dilog(x::Cdouble)
    ccall( (:gsl_sf_dilog, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the dilogarithm for a real argument. In Lewin's
# notation this is Li_2(x), the real part of the dilogarithm of a real x.  It
# is defined by the integral representation Li_2(x) = - \Re \int_0^x ds
# \log(1-s) / s.  Note that \Im(Li_2(x)) = 0 for  x <= 1, and -\pi\log(x) for x
# > 1.          Note that Abramowitz & Stegun refer to the Spence integral
# S(x)=Li_2(1-x) as the dilogarithm rather than Li_2(x).
# 
#   Returns: Cint
function gsl_sf_dilog_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_dilog_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
