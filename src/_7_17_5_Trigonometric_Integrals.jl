#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 7.17.5 Trigonometric Integrals #
##################################
export gsl_sf_Si, gsl_sf_Si_e, gsl_sf_Ci, gsl_sf_Ci_e


# These routines compute the Sine integral  Si(x) = \int_0^x dt \sin(t)/t.
# 
#   Returns: Cdouble
function gsl_sf_Si(x::Real)
    ccall( (:gsl_sf_Si, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_Si


# These routines compute the Sine integral  Si(x) = \int_0^x dt \sin(t)/t.
# 
#   Returns: Cint
function gsl_sf_Si_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_Si_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_Si_e


# These routines compute the Cosine integral  Ci(x) = -\int_x^\infty dt
# \cos(t)/t for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_Ci(x::Real)
    ccall( (:gsl_sf_Ci, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_Ci


# These routines compute the Cosine integral  Ci(x) = -\int_x^\infty dt
# \cos(t)/t for x > 0.
# 
#   Returns: Cint
function gsl_sf_Ci_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_Ci_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_Ci_e
