#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 27.4 Index Look-up and Acceleration #
#######################################
export gsl_interp_bsearch, gsl_interp_accel_alloc, gsl_interp_accel_find,
       gsl_interp_accel_reset, gsl_interp_accel_free


# This function returns the index i of the array x_array such that x_array[i]
# <= x < x_array[i+1].  The index is searched for in the range
# [index_lo,index_hi].  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: Csize_t
function gsl_interp_bsearch (x_array::Cdouble)
    ccall( (:gsl_interp_bsearch, "libgsl"), Csize_t, (Cdouble, ), x_array )
end


### Function uses unknown type; disabled
### # This function returns a pointer to an accelerator object, which is a kind of
# iterator for interpolation lookups.  It tracks the state of lookups, thus
# allowing for application of various acceleration strategies.
# 
### #   Returns: Ptr{gsl_interp_accel}
### #XXX Unknown input type void::
### #XXX Unknown output type Ptr{gsl_interp_accel}
### function gsl_interp_accel_alloc (void::)
###     ccall( (:gsl_interp_accel_alloc, "libgsl"), Ptr{gsl_interp_accel}, (,
###         ), void )
### end


### Function uses unknown type; disabled
### # This function performs a lookup action on the data array x_array of size
# size, using the given accelerator a.  This is how lookups are performed
# during evaluation of an interpolation.  The function returns an index i such
# that x_array[i] <= x < x_array[i+1].  An inline version of this function is
# used when HAVE_INLINE is defined.
# 
### #   Returns: Csize_t
### #XXX Unknown input type a::Ptr{gsl_interp_accel}
### function gsl_interp_accel_find (a::Ptr{gsl_interp_accel}, x_array::Cdouble)
###     ccall( (:gsl_interp_accel_find, "libgsl"), Csize_t,
###         (Ptr{gsl_interp_accel}, Cdouble), a, x_array )
### end


### Function uses unknown type; disabled
### # This function reinitializes the accelerator object acc.  It should be used
# when the cached information is no longer applicable—for example, when
# switching to a new dataset.
# 
### #   Returns: Cint
### #XXX Unknown input type acc::Ptr{gsl_interp_accel}
### function gsl_interp_accel_reset (acc::Ptr{gsl_interp_accel})
###     ccall( (:gsl_interp_accel_reset, "libgsl"), Cint,
###         (Ptr{gsl_interp_accel}, ), acc )
### end


### Function uses unknown type; disabled
### # This function frees the accelerator object acc.
# 
### #   Returns: Void
### #XXX Unknown input type acc::Ptr{gsl_interp_accel}
### function gsl_interp_accel_free (acc::Ptr{gsl_interp_accel})
###     ccall( (:gsl_interp_accel_free, "libgsl"), Void,
###         (Ptr{gsl_interp_accel}, ), acc )
### end