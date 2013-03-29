#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################
# 7.32.2 Riemann Zeta Function Minus One #
##########################################
export gsl_sf_zetam1_int, gsl_sf_zetam1_int_e, gsl_sf_zetam1, gsl_sf_zetam1_e


# These routines compute \zeta(n) - 1 for integer n, n \ne 1.
# 
#   Returns: Cdouble
function gsl_sf_zetam1_int (n::Cint)
    ccall( (:gsl_sf_zetam1_int, "libgsl"), Cdouble, (Cint, ), n )
end


# These routines compute \zeta(n) - 1 for integer n, n \ne 1.
# 
#   Returns: Cint
function gsl_sf_zetam1_int_e (n::Cint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_zetam1_int_e, "libgsl"), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
end


# These routines compute \zeta(s) - 1 for arbitrary s, s \ne 1.
# 
#   Returns: Cdouble
function gsl_sf_zetam1 (s::Cdouble)
    ccall( (:gsl_sf_zetam1, "libgsl"), Cdouble, (Cdouble, ), s )
end


# These routines compute \zeta(s) - 1 for arbitrary s, s \ne 1.
# 
#   Returns: Cint
function gsl_sf_zetam1_e (s::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_zetam1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), s, result )
end
