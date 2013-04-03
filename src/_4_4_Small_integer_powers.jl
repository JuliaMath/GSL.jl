#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 4.4 Small integer powers #
############################
export gsl_pow_int, gsl_pow_uint, gsl_pow_2, gsl_pow_3, gsl_pow_4, gsl_pow_5,
       gsl_pow_6, gsl_pow_7, gsl_pow_8, gsl_pow_9




# These routines computes the power x^n for integer n.  The power is computed
# efficiently—for example, x^8 is computed as ((x^2)^2)^2, requiring only 3
# multiplications.  A version of this function which also computes the
# numerical error in the result is available as gsl_sf_pow_int_e.
# 
#   Returns: Cdouble
function gsl_pow_int(x::Real, n::Integer)
    ccall( (:gsl_pow_int, :libgsl), Cdouble, (Cdouble, Cint), x, n )
end
@vectorize_2arg Number gsl_pow_int


# These routines computes the power x^n for integer n.  The power is computed
# efficiently—for example, x^8 is computed as ((x^2)^2)^2, requiring only 3
# multiplications.  A version of this function which also computes the
# numerical error in the result is available as gsl_sf_pow_int_e.
# 
#   Returns: Cdouble
function gsl_pow_uint(x::Real, n::Integer)
    ccall( (:gsl_pow_uint, :libgsl), Cdouble, (Cdouble, Cuint), x, n )
end
@vectorize_2arg Number gsl_pow_uint


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_2(x::Real)
    ccall( (:gsl_pow_2, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_2


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_3(x::Real)
    ccall( (:gsl_pow_3, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_3


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_4(x::Real)
    ccall( (:gsl_pow_4, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_4


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_5(x::Real)
    ccall( (:gsl_pow_5, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_5


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_6(x::Real)
    ccall( (:gsl_pow_6, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_6


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_7(x::Real)
    ccall( (:gsl_pow_7, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_7


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_8(x::Real)
    ccall( (:gsl_pow_8, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_8


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function gsl_pow_9(x::Real)
    ccall( (:gsl_pow_9, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_pow_9
