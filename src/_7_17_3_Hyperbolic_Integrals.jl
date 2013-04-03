#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.3 Hyperbolic Integrals #
###############################
export gsl_sf_Shi, gsl_sf_Shi_e, gsl_sf_Chi, gsl_sf_Chi_e


# These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
#   Returns: Cdouble
function gsl_sf_Shi(x::Real)
    ccall( (:gsl_sf_Shi, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_Shi


# These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
#   Returns: Cint
function gsl_sf_Shi_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_Shi_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_Shi_e


# These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
#   Returns: Cdouble
function gsl_sf_Chi(x::Real)
    ccall( (:gsl_sf_Chi, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_Chi


# These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
#   Returns: Cint
function gsl_sf_Chi_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_Chi_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_Chi_e
