#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.4.1 Airy Functions #
########################
export sf_airy_Ai, sf_airy_Ai_e, sf_airy_Bi, sf_airy_Bi_e, sf_airy_Ai_scaled,
       sf_airy_Ai_scaled_e, sf_airy_Bi_scaled, sf_airy_Bi_scaled_e


# These routines compute the Airy function Ai(x) with an accuracy specified by
# mode.
#
#   Returns: Cdouble
function sf_airy_Ai(x::Real, mode::Integer)
    ccall( (:gsl_sf_airy_Ai, libgsl), Cdouble, (Cdouble, gsl_mode_t), x,
        mode )
end


# These routines compute the Airy function Ai(x) with an accuracy specified by
# mode.
#
#   Returns: Cint
function sf_airy_Ai_e(x::Real, mode::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_airy_Ai_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ref{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These routines compute the Airy function Bi(x) with an accuracy specified by
# mode.
#
#   Returns: Cdouble
function sf_airy_Bi(x::Real, mode::Integer)
    ccall( (:gsl_sf_airy_Bi, libgsl), Cdouble, (Cdouble, gsl_mode_t), x,
        mode )
end


# These routines compute the Airy function Bi(x) with an accuracy specified by
# mode.
#
#   Returns: Cint
function sf_airy_Bi_e(x::Real, mode::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Bi_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end


# These routines compute a scaled version of the Airy function S_A(x) Ai(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
#
#   Returns: Cdouble
function sf_airy_Ai_scaled(x::Real, mode::Integer)
    ccall( (:gsl_sf_airy_Ai_scaled, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute a scaled version of the Airy function S_A(x) Ai(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
#
#   Returns: Cint
function sf_airy_Ai_scaled_e(x::Real, mode::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Ai_scaled_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end


# These routines compute a scaled version of the Airy function S_B(x) Bi(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
#
#   Returns: Cdouble
function sf_airy_Bi_scaled(x::Real, mode::Integer)
    ccall( (:gsl_sf_airy_Bi_scaled, libgsl), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute a scaled version of the Airy function S_B(x) Bi(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
#
#   Returns: Cint
function sf_airy_Bi_scaled_e(x::Real, mode::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_airy_Bi_scaled_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
