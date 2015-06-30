#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 7.4.2 Derivatives of Airy Functions #
#######################################
export sf_airy_Ai_deriv, sf_airy_Ai_deriv_e, sf_airy_Bi_deriv,
       sf_airy_Bi_deriv_e, sf_airy_Ai_deriv_scaled, sf_airy_Ai_deriv_scaled_e,
       sf_airy_Bi_deriv_scaled, sf_airy_Bi_deriv_scaled_e


# These routines compute the Airy function derivative Ai'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cdouble
function sf_airy_Ai_deriv(x::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Ai_deriv, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute the Airy function derivative Ai'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cint
function sf_airy_Ai_deriv_e(x::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Ai_deriv_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end


# These routines compute the Airy function derivative Bi'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cdouble
function sf_airy_Bi_deriv(x::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Bi_deriv, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute the Airy function derivative Bi'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cint
function sf_airy_Bi_deriv_e(x::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Bi_deriv_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end


# These routines compute the scaled Airy function derivative S_A(x) Ai'(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cdouble
function sf_airy_Ai_deriv_scaled(x::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Ai_deriv_scaled, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute the scaled Airy function derivative S_A(x) Ai'(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
function sf_airy_Ai_deriv_scaled_e(x::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Ai_deriv_scaled_e, libgsl), Cint,
        (Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end


# These routines compute the scaled Airy function derivative S_B(x) Bi'(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cdouble
function sf_airy_Bi_deriv_scaled(x::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Bi_deriv_scaled, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute the scaled Airy function derivative S_B(x) Bi'(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
function sf_airy_Bi_deriv_scaled_e(x::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Bi_deriv_scaled_e, libgsl), Cint,
        (Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
