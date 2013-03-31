#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 7.4.3 Zeros of Airy Functions #
#################################
export gsl_sf_airy_zero_Ai, gsl_sf_airy_zero_Ai_e, gsl_sf_airy_zero_Bi,
       gsl_sf_airy_zero_Bi_e


# These routines compute the location of the s-th zero of the Airy function
# Ai(x).
# 
#   Returns: Cdouble
function gsl_sf_airy_zero_Ai(s::Cuint)
    ccall( (:gsl_sf_airy_zero_Ai, :libgsl), Cdouble, (Cuint, ), s )
end


# These routines compute the location of the s-th zero of the Airy function
# Ai(x).
# 
#   Returns: Cint
function gsl_sf_airy_zero_Ai_e(s::Cuint)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_airy_zero_Ai_e, :libgsl), Cint, (Cuint,
        Ptr{gsl_sf_result}), s, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the location of the s-th zero of the Airy function
# Bi(x).
# 
#   Returns: Cdouble
function gsl_sf_airy_zero_Bi(s::Cuint)
    ccall( (:gsl_sf_airy_zero_Bi, :libgsl), Cdouble, (Cuint, ), s )
end


# These routines compute the location of the s-th zero of the Airy function
# Bi(x).
# 
#   Returns: Cint
function gsl_sf_airy_zero_Bi_e(s::Cuint)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_airy_zero_Bi_e, :libgsl), Cint, (Cuint,
        Ptr{gsl_sf_result}), s, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
