#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.6 Clausen Functions #
#########################
export sf_clausen, sf_clausen_e




# These routines compute the Clausen integral Cl_2(x).
# 
#   Returns: Cdouble
function sf_clausen(x::Real)
    ccall( (:gsl_sf_clausen, libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Clausen integral Cl_2(x).
# 
#   Returns: Cint
function sf_clausen_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_clausen_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
