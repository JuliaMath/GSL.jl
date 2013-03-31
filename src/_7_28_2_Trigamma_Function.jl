#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.28.2 Trigamma Function #
############################
export gsl_sf_psi_1_int, gsl_sf_psi_1_int_e, gsl_sf_psi_1, gsl_sf_psi_1_e


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cdouble
function gsl_sf_psi_1_int{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_sf_psi_1_int, :libgsl), Cdouble, (Cint, ), n )
end


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cint
function gsl_sf_psi_1_int_e{gsl_int<:Integer}(n::gsl_int)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_psi_1_int_e, :libgsl), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cdouble
function gsl_sf_psi_1(x::Cdouble)
    ccall( (:gsl_sf_psi_1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cint
function gsl_sf_psi_1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_psi_1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
