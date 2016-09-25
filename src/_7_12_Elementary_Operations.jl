#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.12 Elementary Operations #
##############################
export sf_multiply_e, sf_multiply_err_e


# This function multiplies x and y storing the product and its associated error
# in result.
# 
#   Returns: Cint
function sf_multiply_e(x::Real, y::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_multiply_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_multiply_e


# This function multiplies x and y with associated absolute errors dx and dy.
# The product  xy +/- xy \sqrt((dx/x)^2 +(dy/y)^2) is stored in result.
# 
#   Returns: Cint
function sf_multiply_err_e(x::Real, dx::Real, y::Real, dy::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_multiply_err_e, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
