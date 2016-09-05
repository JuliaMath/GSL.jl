#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 7.26.2 Mathieu Function Characteristic Values #
#################################################
export sf_mathieu_a, sf_mathieu_b, sf_mathieu_a_array, sf_mathieu_b_array


# These routines compute the characteristic values a_n(q), b_n(q) of the
# Mathieu functions ce_n(q,x) and se_n(q,x), respectively.
# 
#   Returns: Cint
function sf_mathieu_a(n::Integer, q::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_mathieu_a, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, q, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_mathieu_a


# These routines compute the characteristic values a_n(q), b_n(q) of the
# Mathieu functions ce_n(q,x) and se_n(q,x), respectively.
# 
#   Returns: Cint
function sf_mathieu_b(n::Integer, q::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_mathieu_b, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, q, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_mathieu_b


# These routines compute a series of Mathieu characteristic values a_n(q),
# b_n(q) for n from order_min to order_max inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function sf_mathieu_a_array(order_min::Integer, order_max::Integer, q::Real)
    work = Ref{gsl_sf_mathieu_workspace}()
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_mathieu_a_array, libgsl), Cint, (Cint, Cint,
        Cdouble, Ref{gsl_sf_mathieu_workspace}, Cdouble), order_min, order_max,
        q, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return work[], result_array[][1]
end


# These routines compute a series of Mathieu characteristic values a_n(q),
# b_n(q) for n from order_min to order_max inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function sf_mathieu_b_array(order_min::Integer, order_max::Integer, q::Real)
    work = Ref{gsl_sf_mathieu_workspace}()
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_mathieu_b_array, libgsl), Cint, (Cint, Cint,
        Cdouble, Ref{gsl_sf_mathieu_workspace}, Cdouble), order_min, order_max,
        q, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return work[], result_array[][1]
end
