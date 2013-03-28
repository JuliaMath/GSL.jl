#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 4.7 Maximum and Minimum functions #
#####################################
export GSL_MAX, GSL_MIN, GSL_MAX_DBL, GSL_MIN_DBL, GSL_MAX_INT, GSL_MIN_INT,
       GSL_MAX_LDBL, GSL_MIN_LDBL


### Function uses unknown type; disabled
### # This macro returns the maximum of a and b. It is defined as ((a) > (b) ?
# (a):(b)).
# 
### #   Returns: 
### #XXX Unknown input type a::
### #XXX Unknown input type b::
### #XXX Unknown output type 
### function GSL_MAX (a::, b::)
###     ccall( (:GSL_MAX, "libgsl"), , (, ), a, b )
### end


### Function uses unknown type; disabled
### # This macro returns the minimum of a and b. It is defined as ((a) < (b) ?
# (a):(b)).
# 
### #   Returns: 
### #XXX Unknown input type a::
### #XXX Unknown input type b::
### #XXX Unknown output type 
### function GSL_MIN (a::, b::)
###     ccall( (:GSL_MIN, "libgsl"), , (, ), a, b )
### end


### Function uses unknown type; disabled
### # This function returns the maximum of the double precision numbers a and b
# using an inline function. The use of a function allows for type checking of
# the arguments as an extra safety feature. On platforms where inline functions
# are not available the macro GSL_MAX will be automatically substituted.
# 
### #   Returns: externinlinedouble
### #XXX Unknown output type externinlinedouble
### function GSL_MAX_DBL (a::Cdouble, b::Cdouble)
###     ccall( (:GSL_MAX_DBL, "libgsl"), externinlinedouble, (Cdouble,
###         Cdouble), a, b )
### end


### Function uses unknown type; disabled
### # This function returns the minimum of the double precision numbers a and b
# using an inline function. The use of a function allows for type checking of
# the arguments as an extra safety feature. On platforms where inline functions
# are not available the macro GSL_MIN will be automatically substituted.
# 
### #   Returns: externinlinedouble
### #XXX Unknown output type externinlinedouble
### function GSL_MIN_DBL (a::Cdouble, b::Cdouble)
###     ccall( (:GSL_MIN_DBL, "libgsl"), externinlinedouble, (Cdouble,
###         Cdouble), a, b )
### end


### Function uses unknown type; disabled
### # These functions return the maximum or minimum of the integers a and b using
# an inline function.  On platforms where inline functions are not available
# the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
### #   Returns: externinlineint
### #XXX Unknown output type externinlineint
### function GSL_MAX_INT (a::Cint, b::Cint)
###     ccall( (:GSL_MAX_INT, "libgsl"), externinlineint, (Cint, Cint), a, b )
### end


### Function uses unknown type; disabled
### # These functions return the maximum or minimum of the integers a and b using
# an inline function.  On platforms where inline functions are not available
# the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
### #   Returns: externinlineint
### #XXX Unknown output type externinlineint
### function GSL_MIN_INT (a::Cint, b::Cint)
###     ccall( (:GSL_MIN_INT, "libgsl"), externinlineint, (Cint, Cint), a, b )
### end


### Function uses unknown type; disabled
### # These functions return the maximum or minimum of the long doubles a and b
# using an inline function.  On platforms where inline functions are not
# available the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
### #   Returns: externinlinelongdouble
### #XXX Unknown input type a::longdouble
### #XXX Unknown input type b::longdouble
### #XXX Unknown output type externinlinelongdouble
### function GSL_MAX_LDBL (a::longdouble, b::longdouble)
###     ccall( (:GSL_MAX_LDBL, "libgsl"), externinlinelongdouble, (longdouble,
###         longdouble), a, b )
### end


### Function uses unknown type; disabled
### # These functions return the maximum or minimum of the long doubles a and b
# using an inline function.  On platforms where inline functions are not
# available the macros GSL_MAX or GSL_MIN will be automatically substituted.
# 
### #   Returns: externinlinelongdouble
### #XXX Unknown input type a::longdouble
### #XXX Unknown input type b::longdouble
### #XXX Unknown output type externinlinelongdouble
### function GSL_MIN_LDBL (a::longdouble, b::longdouble)
###     ccall( (:GSL_MIN_LDBL, "libgsl"), externinlinelongdouble, (longdouble,
###         longdouble), a, b )
### end