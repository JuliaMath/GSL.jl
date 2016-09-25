#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 4.7 Maximum and Minimum functions #
#####################################
export GSL_MAX_DBL, GSL_MIN_DBL, GSL_MAX_INT, GSL_MIN_INT, GSL_MAX_LDBL,
       GSL_MIN_LDBL


# This function returns the maximum of the double precision numbers a and b
# using an inline function. The use of a function allows for type checking of
# the arguments as an extra safety feature. On platforms where inline functions
# are not available the macro GSL_MAX will be automatically substituted.
# 
#   Returns: Cdouble
function GSL_MAX_DBL(a::Real, b::Real)
    ccall( (:GSL_MAX_DBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number GSL_MAX_DBL


# This function returns the minimum of the double precision numbers a and b
# using an inline function. The use of a function allows for type checking of
# the arguments as an extra safety feature. On platforms where inline functions
# are not available the macro GSL_MIN will be automatically substituted.
# 
#   Returns: Cdouble
function GSL_MIN_DBL(a::Real, b::Real)
    ccall( (:GSL_MIN_DBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number GSL_MIN_DBL


# These functions return the maximum or minimum of the integers a and b using
# an inline function.  On platforms where inline functions are not available
# the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
#   Returns: Cint
function GSL_MAX_INT(a::Integer, b::Integer)
    errno = ccall( (:GSL_MAX_INT, libgsl), Cint, (Cint, Cint), a, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_2arg Number GSL_MAX_INT


# These functions return the maximum or minimum of the integers a and b using
# an inline function.  On platforms where inline functions are not available
# the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
#   Returns: Cint
function GSL_MIN_INT(a::Integer, b::Integer)
    errno = ccall( (:GSL_MIN_INT, libgsl), Cint, (Cint, Cint), a, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_2arg Number GSL_MIN_INT


# These functions return the maximum or minimum of the long doubles a and b
# using an inline function.  On platforms where inline functions are not
# available the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
#   Returns: Cdouble
function GSL_MAX_LDBL(a::Real, b::Real)
    ccall( (:GSL_MAX_LDBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number GSL_MAX_LDBL


# These functions return the maximum or minimum of the long doubles a and b
# using an inline function.  On platforms where inline functions are not
# available the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
#   Returns: Cdouble
function GSL_MIN_LDBL(a::Real, b::Real)
    ccall( (:GSL_MIN_LDBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number GSL_MIN_LDBL
