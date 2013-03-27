#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 8.3.2 Accessing vector elements #
###################################
export gsl_vector_get, gsl_vector_set, gsl_vector_ptr, gsl_vector_const_ptr


# This function returns the i-th element of a vector v.  If i lies outside the
# allowed range of 0 to n-1 then the error handler is invoked and 0 is
# returned.  An inline version of this function is used when HAVE_INLINE is
# defined.
# 
#   Returns: Cdouble
function gsl_vector_get (v::Ptr{gsl_vector}, i::Csize_t)
    ccall( (:gsl_vector_get, "libgsl"), Cdouble, (Ptr{gsl_vector},
        Csize_t), v, i )
end


# This function sets the value of the i-th element of a vector v to x.  If i
# lies outside the allowed range of 0 to n-1 then the error handler is invoked.
# An inline version of this function is used when HAVE_INLINE is defined.
# 
#   Returns: Void
function gsl_vector_set (v::Ptr{gsl_vector}, i::Csize_t, x::Cdouble)
    ccall( (:gsl_vector_set, "libgsl"), Void, (Ptr{gsl_vector}, Csize_t,
        Cdouble), v, i, x )
end


# These functions return a pointer to the i-th element of a vector v.  If i
# lies outside the allowed range of 0 to n-1 then the error handler is invoked
# and a null pointer is returned.  Inline versions of these functions are used
# when HAVE_INLINE is defined.
# 
#   Returns: Ptr{Cdouble}
function gsl_vector_ptr (v::Ptr{gsl_vector}, i::Csize_t)
    ccall( (:gsl_vector_ptr, "libgsl"), Ptr{Cdouble}, (Ptr{gsl_vector},
        Csize_t), v, i )
end


# These functions return a pointer to the i-th element of a vector v.  If i
# lies outside the allowed range of 0 to n-1 then the error handler is invoked
# and a null pointer is returned.  Inline versions of these functions are used
# when HAVE_INLINE is defined.
# 
#   Returns: Ptr{Cdouble}
function gsl_vector_const_ptr (v::Ptr{gsl_vector}, i::Csize_t)
    ccall( (:gsl_vector_const_ptr, "libgsl"), Ptr{Cdouble},
        (Ptr{gsl_vector}, Csize_t), v, i )
end