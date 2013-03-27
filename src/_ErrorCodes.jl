#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################
# 3.2 Error Codes #
###################
export GSL_EDOM, GSL_ERANGE, GSL_ENOMEM, GSL_EINVAL, gsl_strerror


# Domain error; used by mathematical functions when an argument value does not
# fall into the domain over which the function is defined (like EDOM in the C
# library)
# 
#   Returns: Cint
function GSL_EDOM ()
    ccall( (:GSL_EDOM, "libgsl"), Cint, () )
end


# Range error; used by mathematical functions when the result value is not
# representable because of overflow or underflow (like ERANGE in the C library)
# 
#   Returns: Cint
function GSL_ERANGE ()
    ccall( (:GSL_ERANGE, "libgsl"), Cint, () )
end


# No memory available.  The system cannot allocate more virtual memory because
# its capacity is full (like ENOMEM in the C library).  This error is reported
# when a GSL routine encounters problems when trying to allocate memory with
# malloc.
# 
#   Returns: Cint
function GSL_ENOMEM ()
    ccall( (:GSL_ENOMEM, "libgsl"), Cint, () )
end


# Invalid argument.  This is used to indicate various kinds of problems with
# passing the wrong argument to a library function (like EINVAL in the C
# library).
# 
#   Returns: Cint
function GSL_EINVAL ()
    ccall( (:GSL_EINVAL, "libgsl"), Cint, () )
end


# This function returns a pointer to a string describing the error code
# gsl_errno. For example,                 printf ("error: %s\n", gsl_strerror
# (status));  would print an error message like error: output range error for a
# status value of GSL_ERANGE.
# 
#   Returns: Ptr{Cchar}
function gsl_strerror (gsl_errno::Cint)
    ccall( (:gsl_strerror, "libgsl"), Ptr{Cchar}, (Cint, ), gsl_errno )
end