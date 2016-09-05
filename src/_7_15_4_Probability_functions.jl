#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.15.4 Probability functions #
################################
export sf_erf_Z, sf_erf_Z_e, sf_erf_Q, sf_erf_Q_e, sf_hazard, sf_hazard_e




# These routines compute the Gaussian probability density function  Z(x) =
# (1/\sqrt{2\pi}) \exp(-x^2/2).
# 
#   Returns: Cdouble
function sf_erf_Z(x::Real)
    ccall( (:gsl_sf_erf_Z, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_erf_Z


# These routines compute the Gaussian probability density function  Z(x) =
# (1/\sqrt{2\pi}) \exp(-x^2/2).
# 
#   Returns: Cint
function sf_erf_Z_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_erf_Z_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_erf_Z_e


# These routines compute the upper tail of the Gaussian probability function
# Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2).
# 
#   Returns: Cdouble
function sf_erf_Q(x::Real)
    ccall( (:gsl_sf_erf_Q, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_erf_Q


# These routines compute the upper tail of the Gaussian probability function
# Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2).
# 
#   Returns: Cint
function sf_erf_Q_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_erf_Q_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_erf_Q_e


# These routines compute the hazard function for the normal distribution.
# 
#   Returns: Cdouble
function sf_hazard(x::Real)
    ccall( (:gsl_sf_hazard, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_hazard


# These routines compute the hazard function for the normal distribution.
# 
#   Returns: Cint
function sf_hazard_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hazard_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_hazard_e
