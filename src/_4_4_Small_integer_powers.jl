#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 4.4 Small integer powers #
############################
export pow_int, pow_uint, pow_2, pow_3, pow_4, pow_5, pow_6, pow_7, pow_8,
       pow_9




# These routines computes the power x^n for integer n.  The power is computed
# efficiently—for example, x^8 is computed as ((x^2)^2)^2, requiring only 3
# multiplications.  A version of this function which also computes the
# numerical error in the result is available as gsl_sf_pow_int_e.
# 
#   Returns: Cdouble
function pow_int(x::Real, n::Integer)
    ccall( (:gsl_pow_int, libgsl), Cdouble, (Cdouble, Cint), x, n )
end
Compat.@dep_vectorize_2arg Number pow_int


# These routines computes the power x^n for integer n.  The power is computed
# efficiently—for example, x^8 is computed as ((x^2)^2)^2, requiring only 3
# multiplications.  A version of this function which also computes the
# numerical error in the result is available as gsl_sf_pow_int_e.
# 
#   Returns: Cdouble
function pow_uint(x::Real, n::Integer)
    ccall( (:gsl_pow_uint, libgsl), Cdouble, (Cdouble, Cuint), x, n )
end
Compat.@dep_vectorize_2arg Number pow_uint


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_2(x::Real)
    ccall( (:gsl_pow_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_2


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_3(x::Real)
    ccall( (:gsl_pow_3, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_3


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_4(x::Real)
    ccall( (:gsl_pow_4, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_4


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_5(x::Real)
    ccall( (:gsl_pow_5, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_5


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_6(x::Real)
    ccall( (:gsl_pow_6, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_6


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_7(x::Real)
    ccall( (:gsl_pow_7, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_7


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_8(x::Real)
    ccall( (:gsl_pow_8, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_8


# These functions can be used to compute small integer powers x^2, x^3, etc.
# efficiently. The functions will be inlined when HAVE_INLINE is defined, so
# that use of these functions should be as efficient as explicitly writing the
# corresponding product expression.
# 
#   Returns: Cdouble
function pow_9(x::Real)
    ccall( (:gsl_pow_9, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number pow_9
