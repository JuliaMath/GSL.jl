#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.32.1 Riemann Zeta Function #
################################
export gsl_sf_zeta_int, gsl_sf_zeta_int_e, gsl_sf_zeta, gsl_sf_zeta_e


# These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
#   Returns: Cdouble
function gsl_sf_zeta_int (n::Cint)
    ccall( (:gsl_sf_zeta_int, "libgsl"), Cdouble, (Cint, ), n )
end


# These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
#   Returns: Cint
function gsl_sf_zeta_int_e (n::Cint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_zeta_int_e, "libgsl"), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
end


# These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
#   Returns: Cdouble
function gsl_sf_zeta (s::Cdouble)
    ccall( (:gsl_sf_zeta, "libgsl"), Cdouble, (Cdouble, ), s )
end


# These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
#   Returns: Cint
function gsl_sf_zeta_e (s::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_zeta_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
        s, result )
end
