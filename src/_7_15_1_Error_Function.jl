#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.15.1 Error Function #
#########################
export gsl_sf_erf, gsl_sf_erf_e


# These routines compute the error function  erf(x), where  erf(x) =
# (2/\sqrt(\pi)) \int_0^x dt \exp(-t^2).
# 
#   Returns: Cdouble
function gsl_sf_erf(x::Cdouble)
    ccall( (:gsl_sf_erf, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the error function  erf(x), where  erf(x) =
# (2/\sqrt(\pi)) \int_0^x dt \exp(-t^2).
# 
#   Returns: Cint
function gsl_sf_erf_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_erf_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
