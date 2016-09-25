#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.15.1 Error Function #
#########################
export sf_erf, sf_erf_e


# These routines compute the error function  erf(x), where  erf(x) =
# (2/\sqrt(\pi)) \int_0^x dt \exp(-t^2).
# 
#   Returns: Cdouble
function sf_erf(x::Real)
    ccall( (:gsl_sf_erf, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_erf


# These routines compute the error function  erf(x), where  erf(x) =
# (2/\sqrt(\pi)) \int_0^x dt \exp(-t^2).
# 
#   Returns: Cint
function sf_erf_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_erf_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_erf_e
