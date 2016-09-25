#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.3 Hyperbolic Integrals #
###############################
export sf_Shi, sf_Shi_e, sf_Chi, sf_Chi_e


# These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
#   Returns: Cdouble
function sf_Shi(x::Real)
    ccall( (:gsl_sf_Shi, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_Shi


# These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
#   Returns: Cint
function sf_Shi_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_Shi_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_Shi_e


# These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
#   Returns: Cdouble
function sf_Chi(x::Real)
    ccall( (:gsl_sf_Chi, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_Chi


# These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
#   Returns: Cint
function sf_Chi_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_Chi_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_Chi_e
