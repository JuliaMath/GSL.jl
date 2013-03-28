#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 7.7.3 Coulomb Wave Function Normalization Constant #
######################################################
export gsl_sf_coulomb_CL_e, gsl_sf_coulomb_CL_array


### Function uses unknown type; disabled
### # This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L > -1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_coulomb_CL_e (L::Cdouble, eta::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_coulomb_CL_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), L, eta, result )
### end


# This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L = Lmin \dots Lmin + kmax, Lmin > -1.
# 
#   Returns: Cint
function gsl_sf_coulomb_CL_array (Lmin::Cdouble, kmax::Cint, eta::Cdouble, cl::Cdouble)
    ccall( (:gsl_sf_coulomb_CL_array, "libgsl"), Cint, (Cdouble, Cint,
        Cdouble, Cdouble), Lmin, kmax, eta, cl )
end