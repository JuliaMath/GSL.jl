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
function gsl_sf_psi_1_int (n::Cint)
    ccall( (:gsl_sf_psi_1_int, "libgsl"), Cdouble, (Cint, ), n )
end


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cint
function gsl_sf_psi_1_int_e (n::Cint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_psi_1_int_e, "libgsl"), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
end


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cdouble
function gsl_sf_psi_1 (x::Cdouble)
    ccall( (:gsl_sf_psi_1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cint
function gsl_sf_psi_1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_psi_1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end
