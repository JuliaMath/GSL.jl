#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.28.2 Trigamma Function #
############################
export sf_psi_1_int, sf_psi_1_int_e, sf_psi_1, sf_psi_1_e


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cdouble
function sf_psi_1_int(n::Integer)
    ccall( (:gsl_sf_psi_1_int, :libgsl), Cdouble, (Cint, ), n )
end
@vectorize_1arg Number sf_psi_1_int


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cint
function sf_psi_1_int_e(n::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_psi_1_int_e, :libgsl), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number sf_psi_1_int_e


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cdouble
function sf_psi_1(x::Real)
    ccall( (:gsl_sf_psi_1, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_psi_1


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cint
function sf_psi_1_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_psi_1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number sf_psi_1_e
