#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 7.4.4 Zeros of Derivatives of Airy Functions #
################################################
export gsl_sf_airy_zero_Ai_deriv, gsl_sf_airy_zero_Ai_deriv_e,
       gsl_sf_airy_zero_Bi_deriv, gsl_sf_airy_zero_Bi_deriv_e


# These routines compute the location of the s-th zero of the Airy function
# derivative Ai'(x).
# 
#   Returns: Cdouble
function gsl_sf_airy_zero_Ai_deriv(s::Integer)
    ccall( (:gsl_sf_airy_zero_Ai_deriv, :libgsl), Cdouble, (Cuint, ), s )
end
@vectorize_1arg Number gsl_sf_airy_zero_Ai_deriv


# These routines compute the location of the s-th zero of the Airy function
# derivative Ai'(x).
# 
#   Returns: Cint
function gsl_sf_airy_zero_Ai_deriv_e(s::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_airy_zero_Ai_deriv_e, :libgsl), Cint,
        (Cuint, Ptr{gsl_sf_result}), s, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_airy_zero_Ai_deriv_e


# These routines compute the location of the s-th zero of the Airy function
# derivative Bi'(x).
# 
#   Returns: Cdouble
function gsl_sf_airy_zero_Bi_deriv(s::Integer)
    ccall( (:gsl_sf_airy_zero_Bi_deriv, :libgsl), Cdouble, (Cuint, ), s )
end
@vectorize_1arg Number gsl_sf_airy_zero_Bi_deriv


# These routines compute the location of the s-th zero of the Airy function
# derivative Bi'(x).
# 
#   Returns: Cint
function gsl_sf_airy_zero_Bi_deriv_e(s::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_airy_zero_Bi_deriv_e, :libgsl), Cint,
        (Cuint, Ptr{gsl_sf_result}), s, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_airy_zero_Bi_deriv_e
