#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 7.7.3 Coulomb Wave Function Normalization Constant #
######################################################
export sf_coulomb_CL_e, sf_coulomb_CL_array


# This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L > -1.
# 
#   Returns: Cint
function sf_coulomb_CL_e(L::Real, eta::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_coulomb_CL_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), L, eta, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_2arg Number sf_coulomb_CL_e


# This function computes the Coulomb wave function normalization constant
# C_L(\eta) for L = Lmin \dots Lmin + kmax, Lmin > -1.
# 
#   Returns: Cint
function sf_coulomb_CL_array(Lmin::Real, kmax::Integer, eta::Real, cl::Real)
    errno = ccall( (:gsl_sf_coulomb_CL_array, :libgsl), Cint, (Cdouble,
        Cint, Cdouble, Cdouble), Lmin, kmax, eta, cl )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number sf_coulomb_CL_array
