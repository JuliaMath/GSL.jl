#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 3.4 Using GSL error reporting in your own functions #
#######################################################
export GSL_ERROR, GSL_ERROR_VAL


# This macro reports an error using the GSL conventions and returns a status
# value of gsl_errno.  It expands to the following code fragment,
# gsl_error (reason, __FILE__, __LINE__, gsl_errno);           return
# gsl_errno;  The macro definition in gsl_errno.h actually wraps the code in a
# do { ... } while (0) block to prevent possible parsing problems.
# 
#   Returns: 
#XXX Unknown input type reason::
#XXX Unknown input type gsl_errno::
#XXX Unknown output type 
function GSL_ERROR (reason::, gsl_errno::)
    ccall( (:GSL_ERROR, "libgsl"), , (, ), reason, gsl_errno )
end


# This macro is the same as GSL_ERROR but returns a user-defined value of value
# instead of an error code.  It can be used for mathematical functions that
# return a floating point value.
# 
#   Returns: 
#XXX Unknown input type reason::
#XXX Unknown input type gsl_errno::
#XXX Unknown input type value::
#XXX Unknown output type 
function GSL_ERROR_VAL (reason::, gsl_errno::, value::)
    ccall( (:GSL_ERROR_VAL, "libgsl"), , (, , ), reason, gsl_errno, value )
end