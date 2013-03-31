#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 7.7.3 Coulomb Wave Function Normalization Constant #
######################################################
export gsl_sf_coulomb_CL_e, gsl_sf_coulomb_CL_array


# This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L > -1.
# 
#   Returns: Cint
function gsl_sf_coulomb_CL_e(L::Cdouble, eta::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_coulomb_CL_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), L, eta, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L = Lmin \dots Lmin + kmax, Lmin > -1.
# 
#   Returns: Cint
function gsl_sf_coulomb_CL_array{gsl_int<:Integer}(Lmin::Cdouble, kmax::gsl_int, eta::Cdouble, cl::Cdouble)
    gsl_errno = ccall( (:gsl_sf_coulomb_CL_array, :libgsl), Cint, (Cdouble,
        Cint, Cdouble, Cdouble), Lmin, kmax, eta, cl )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
