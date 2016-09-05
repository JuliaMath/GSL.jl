#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 7.4.4 Zeros of Derivatives of Airy Functions #
################################################
export sf_airy_zero_Ai_deriv, sf_airy_zero_Ai_deriv_e, sf_airy_zero_Bi_deriv,
       sf_airy_zero_Bi_deriv_e


# These routines compute the location of the s-th zero of the Airy function
# derivative Ai'(x).
# 
#   Returns: Cdouble
function sf_airy_zero_Ai_deriv(s::Integer)
    ccall( (:gsl_sf_airy_zero_Ai_deriv, libgsl), Cdouble, (Cuint, ), s )
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Ai_deriv


# These routines compute the location of the s-th zero of the Airy function
# derivative Ai'(x).
# 
#   Returns: Cint
function sf_airy_zero_Ai_deriv_e(s::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_airy_zero_Ai_deriv_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Ai_deriv_e


# These routines compute the location of the s-th zero of the Airy function
# derivative Bi'(x).
# 
#   Returns: Cdouble
function sf_airy_zero_Bi_deriv(s::Integer)
    ccall( (:gsl_sf_airy_zero_Bi_deriv, libgsl), Cdouble, (Cuint, ), s )
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Bi_deriv


# These routines compute the location of the s-th zero of the Airy function
# derivative Bi'(x).
# 
#   Returns: Cint
function sf_airy_zero_Bi_deriv_e(s::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_airy_zero_Bi_deriv_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Bi_deriv_e
