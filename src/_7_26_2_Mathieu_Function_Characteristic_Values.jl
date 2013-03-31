#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 7.26.2 Mathieu Function Characteristic Values #
#################################################
export gsl_sf_mathieu_a, gsl_sf_mathieu_b, gsl_sf_mathieu_a_array,
       gsl_sf_mathieu_b_array


# These routines compute the characteristic values a_n(q), b_n(q) of the
# Mathieu functions ce_n(q,x) and se_n(q,x), respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_a{gsl_int<:Integer}(n::gsl_int, q::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_a, :libgsl), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, q, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the characteristic values a_n(q), b_n(q) of the
# Mathieu functions ce_n(q,x) and se_n(q,x), respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_b{gsl_int<:Integer}(n::gsl_int, q::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_b, :libgsl), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, q, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute a series of Mathieu characteristic values a_n(q),
# b_n(q) for n from order_min to order_max inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_a_array{gsl_int<:Integer}(order_min::gsl_int, order_max::gsl_int, q::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_a_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{Void}, Cdouble), order_min, order_max, q, work,
        result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute a series of Mathieu characteristic values a_n(q),
# b_n(q) for n from order_min to order_max inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_b_array{gsl_int<:Integer}(order_min::gsl_int, order_max::gsl_int, q::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_b_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{Void}, Cdouble), order_min, order_max, q, work,
        result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end
