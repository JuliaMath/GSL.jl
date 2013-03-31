#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.6 Clausen Functions #
#########################
export gsl_sf_clausen, gsl_sf_clausen_e




# These routines compute the Clausen integral Cl_2(x).
# 
#   Returns: Cdouble
function gsl_sf_clausen(x::Cdouble)
    ccall( (:gsl_sf_clausen, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Clausen integral Cl_2(x).
# 
#   Returns: Cint
function gsl_sf_clausen_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_clausen_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
