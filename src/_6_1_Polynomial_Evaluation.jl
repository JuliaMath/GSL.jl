#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 6.1 Polynomial Evaluation #
#############################
export poly_eval, poly_complex_eval, poly_eval_derivs


# This function evaluates a polynomial with real coefficients for the real
# variable x.
# 
#   Returns: Cdouble
function poly_eval(c::Real)
    ccall( (:gsl_poly_eval, libgsl), Cdouble, (Cdouble, ), c )
end
Compat.@dep_vectorize_1arg Number poly_eval


# This function evaluates a polynomial with real coefficients for the complex
# variable z.
# 
#   Returns: gsl_complex
function poly_complex_eval(c::Real)
    ccall( (:gsl_poly_complex_eval, libgsl), gsl_complex, (Cdouble, ), c )
end
Compat.@dep_vectorize_1arg Number poly_complex_eval


# This function evaluates a polynomial and its derivatives storing the results
# in the array res of size lenres.  The output array contains the values of d^k
# P/d x^k for the specified value of x starting with k = 0.
# 
#   Returns: Cint
function poly_eval_derivs(c::Real)
    errno = ccall( (:gsl_poly_eval_derivs, libgsl), Cint, (Cdouble, ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number poly_eval_derivs
