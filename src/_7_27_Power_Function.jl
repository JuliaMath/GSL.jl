#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.27 Power Function #
#######################
export gsl_sf_pow_int, gsl_sf_pow_int_e




# These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
#   Returns: Cdouble
function gsl_sf_pow_int(x::Real, n::Integer)
    ccall( (:gsl_sf_pow_int, :libgsl), Cdouble, (Cdouble, Cint), x, n )
end
@vectorize_2arg Number gsl_sf_pow_int


# These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
#   Returns: Cint
function gsl_sf_pow_int_e(x::Real, n::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_pow_int_e, :libgsl), Cint, (Cdouble, Cint,
        Ptr{gsl_sf_result}), x, n, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_pow_int_e
