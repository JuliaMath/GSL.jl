#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 6.1 Polynomial Evaluation #
#############################
export gsl_poly_eval, gsl_poly_complex_eval, gsl_complex_poly_complex_eval,
       gsl_poly_eval_derivs


# This function evaluates a polynomial with real coefficients for the real
# variable x.
# 
#   Returns: Cdouble
function gsl_poly_eval(c::Cdouble)
    ccall( (:gsl_poly_eval, :libgsl), Cdouble, (Cdouble, ), c )
end


# This function evaluates a polynomial with real coefficients for the complex
# variable z.
# 
#   Returns: gsl_complex
function gsl_poly_complex_eval(c::Cdouble)
    ccall( (:gsl_poly_complex_eval, :libgsl), gsl_complex, (Cdouble, ), c )
end


# This function evaluates a polynomial with complex coefficients for the
# complex variable z.
# 
#   Returns: gsl_complex
function gsl_complex_poly_complex_eval(c::gsl_complex)
    ccall( (:gsl_complex_poly_complex_eval, :libgsl), gsl_complex,
        (gsl_complex, ), c )
end


# This function evaluates a polynomial and its derivatives storing the results
# in the array res of size lenres.  The output array contains the values of d^k
# P/d x^k for the specified value of x starting with k = 0.
# 
#   Returns: Cint
function gsl_poly_eval_derivs(c::Cdouble)
    gsl_errno = ccall( (:gsl_poly_eval_derivs, :libgsl), Cint, (Cdouble, ),
        c )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
