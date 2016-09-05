#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 27.4 Index Look-up and Acceleration #
#######################################
export interp_bsearch, interp_accel_alloc, interp_accel_find,
       interp_accel_reset, interp_accel_free


# This function returns the index i of the array x_array such that x_array[i]
# <= x < x_array[i+1].  The index is searched for in the range
# [index_lo,index_hi].  An inline version of this function is used when
# HAVE_INLINE is defined.
#
#   Returns: Csize_t
function interp_bsearch(x_array::Real)
    ccall( (:gsl_interp_bsearch, libgsl), Csize_t, (Cdouble, ), x_array )
end
Compat.@dep_vectorize_1arg Number interp_bsearch


# This function returns a pointer to an accelerator object, which is a kind of
# iterator for interpolation lookups.  It tracks the state of lookups, thus
# allowing for application of various acceleration strategies.
#
#   Returns: Ptr{gsl_interp_accel}
function interp_accel_alloc()
    output_ptr = ccall( (:gsl_interp_accel_alloc, libgsl),
        Ptr{gsl_interp_accel}, () )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function performs a lookup action on the data array x_array of size
# size, using the given accelerator a.  This is how lookups are performed
# during evaluation of an interpolation.  The function returns an index i such
# that x_array[i] <= x < x_array[i+1].  An inline version of this function is
# used when HAVE_INLINE is defined.
#
#   Returns: Csize_t
function interp_accel_find(a::Ref{gsl_interp_accel}, x_array::Real)
    ccall( (:gsl_interp_accel_find, libgsl), Csize_t,
        (Ref{gsl_interp_accel}, Cdouble), a, x_array )
end


# This function reinitializes the accelerator object acc.  It should be used
# when the cached information is no longer applicable—for example, when
# switching to a new dataset.
#
#   Returns: Cint
function interp_accel_reset()
    acc = Ref{gsl_interp_accel}()
    errno = ccall( (:gsl_interp_accel_reset, libgsl), Cint,
        (Ref{gsl_interp_accel}, ), acc )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return acc[]
end


# This function frees the accelerator object acc.
#
#   Returns: Void
function interp_accel_free(acc::Ref{gsl_interp_accel})
    ccall( (:gsl_interp_accel_free, libgsl), Void, (Ref{gsl_interp_accel},
        ), acc )
end
