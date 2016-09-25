#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.27 Power Function #
#######################
export sf_pow_int, sf_pow_int_e




# These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
#   Returns: Cdouble
function sf_pow_int(x::Real, n::Integer)
    ccall( (:gsl_sf_pow_int, libgsl), Cdouble, (Cdouble, Cint), x, n )
end
Compat.@dep_vectorize_2arg Number sf_pow_int


# These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
#   Returns: Cint
function sf_pow_int_e(x::Real, n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_pow_int_e, libgsl), Cint, (Cdouble, Cint,
        Ref{gsl_sf_result}), x, n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_pow_int_e
