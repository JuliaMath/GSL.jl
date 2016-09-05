#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 7.4.3 Zeros of Airy Functions #
#################################
export sf_airy_zero_Ai, sf_airy_zero_Ai_e, sf_airy_zero_Bi, sf_airy_zero_Bi_e


# These routines compute the location of the s-th zero of the Airy function
# Ai(x).
# 
#   Returns: Cdouble
function sf_airy_zero_Ai(s::Integer)
    ccall( (:gsl_sf_airy_zero_Ai, libgsl), Cdouble, (Cuint, ), s )
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Ai


# These routines compute the location of the s-th zero of the Airy function
# Ai(x).
# 
#   Returns: Cint
function sf_airy_zero_Ai_e(s::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_airy_zero_Ai_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Ai_e


# These routines compute the location of the s-th zero of the Airy function
# Bi(x).
# 
#   Returns: Cdouble
function sf_airy_zero_Bi(s::Integer)
    ccall( (:gsl_sf_airy_zero_Bi, libgsl), Cdouble, (Cuint, ), s )
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Bi


# These routines compute the location of the s-th zero of the Airy function
# Bi(x).
# 
#   Returns: Cint
function sf_airy_zero_Bi_e(s::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_airy_zero_Bi_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_airy_zero_Bi_e
