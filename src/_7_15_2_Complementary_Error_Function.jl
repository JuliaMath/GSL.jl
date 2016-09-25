#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 7.15.2 Complementary Error Function #
#######################################
export sf_erfc, sf_erfc_e


# These routines compute the complementary error function  erfc(x) = 1 - erf(x)
# = (2/\sqrt(\pi)) \int_x^\infty \exp(-t^2).
# 
#   Returns: Cdouble
function sf_erfc(x::Real)
    ccall( (:gsl_sf_erfc, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_erfc


# These routines compute the complementary error function  erfc(x) = 1 - erf(x)
# = (2/\sqrt(\pi)) \int_x^\infty \exp(-t^2).
# 
#   Returns: Cint
function sf_erfc_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_erfc_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_erfc_e
