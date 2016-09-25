#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 7.19.6 Incomplete Beta Function #
###################################
export sf_beta_inc, sf_beta_inc_e


# These routines compute the normalized incomplete Beta function
# I_x(a,b)=B_x(a,b)/B(a,b) where  B_x(a,b) = \int_0^x t^{a-1} (1-t)^{b-1} dt
# for  0 <= x <= 1.   For a > 0, b > 0 the value is computed using a continued
# fraction expansion.  For all other values it is computed using the relation
# I_x(a,b,x) = (1/a) x^a 2F1(a,1-b,a+1,x)/B(a,b).
# 
#   Returns: Cdouble
function sf_beta_inc(a::Real, b::Real, x::Real)
    ccall( (:gsl_sf_beta_inc, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end


# These routines compute the normalized incomplete Beta function
# I_x(a,b)=B_x(a,b)/B(a,b) where  B_x(a,b) = \int_0^x t^{a-1} (1-t)^{b-1} dt
# for  0 <= x <= 1.   For a > 0, b > 0 the value is computed using a continued
# fraction expansion.  For all other values it is computed using the relation
# I_x(a,b,x) = (1/a) x^a 2F1(a,1-b,a+1,x)/B(a,b).
# 
#   Returns: Cint
function sf_beta_inc_e(a::Real, b::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_beta_inc_e, libgsl), Cint, (Cdouble, Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, b, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
