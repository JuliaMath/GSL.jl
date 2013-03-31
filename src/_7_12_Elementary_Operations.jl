#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.12 Elementary Operations #
##############################
export gsl_sf_multiply_e, gsl_sf_multiply_err_e


# This function multiplies x and y storing the product and its associated error
# in result.
# 
#   Returns: Cint
function gsl_sf_multiply_e(x::Cdouble, y::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_multiply_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), x, y, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function multiplies x and y with associated absolute errors dx and dy.
# The product  xy +/- xy \sqrt((dx/x)^2 +(dy/y)^2) is stored in result.
# 
#   Returns: Cint
function gsl_sf_multiply_err_e(x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_multiply_err_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), x, dx, y, dy, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
