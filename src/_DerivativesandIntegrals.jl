#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 29.5 Derivatives and Integrals #
##################################
export gsl_cheb_calc_deriv, gsl_cheb_calc_integ


# This function computes the derivative of the series cs, storing the
# derivative coefficients in the previously allocated deriv.  The two series cs
# and deriv must have been allocated with the same order.
# 
#   Returns: Cint
function gsl_cheb_calc_deriv (deriv::Ptr{gsl_cheb_series}, cs::Ptr{gsl_cheb_series})
    ccall( (:gsl_cheb_calc_deriv, "libgsl"), Cint, (Ptr{gsl_cheb_series},
        Ptr{gsl_cheb_series}), deriv, cs )
end


# This function computes the integral of the series cs, storing the integral
# coefficients in the previously allocated integ.  The two series cs and integ
# must have been allocated with the same order.  The lower limit of the
# integration is taken to be the left hand end of the range a.
# 
#   Returns: Cint
function gsl_cheb_calc_integ (integ::Ptr{gsl_cheb_series}, cs::Ptr{gsl_cheb_series})
    ccall( (:gsl_cheb_calc_integ, "libgsl"), Cint, (Ptr{gsl_cheb_series},
        Ptr{gsl_cheb_series}), integ, cs )
end
