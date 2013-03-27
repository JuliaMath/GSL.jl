#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 7.26.3 Angular Mathieu Functions #
####################################
export gsl_sf_mathieu_ce, gsl_sf_mathieu_se, gsl_sf_mathieu_ce_array,
       gsl_sf_mathieu_se_array


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_ce (n::Cint, q::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_mathieu_ce, "libgsl"), Cint, (Cint, Cdouble, Cdouble,
        Ptr{gsl_sf_result}), n, q, x, result )
end


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_se (n::Cint, q::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_mathieu_se, "libgsl"), Cint, (Cint, Cdouble, Cdouble,
        Ptr{gsl_sf_result}), n, q, x, result )
end


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function gsl_sf_mathieu_ce_array (nmin::Cint, nmax::Cint, q::Cdouble, x::Cdouble, work::Ptr{gsl_sf_mathieu_workspace}, result_array::Cdouble)
    ccall( (:gsl_sf_mathieu_ce_array, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), nmin, nmax,
        q, x, work, result_array )
end


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function gsl_sf_mathieu_se_array (nmin::Cint, nmax::Cint, q::Cdouble, x::Cdouble, work::Ptr{gsl_sf_mathieu_workspace}, result_array::Cdouble)
    ccall( (:gsl_sf_mathieu_se_array, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), nmin, nmax,
        q, x, work, result_array )
end