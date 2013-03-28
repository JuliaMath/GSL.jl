#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 19.1 Quasi-random number generator initialization #
#####################################################
export gsl_qrng_alloc, gsl_qrng_free, gsl_qrng_init


### Function uses unknown type; disabled
### # This function returns a pointer to a newly-created instance of a quasi-random
# sequence generator of type T and dimension d.  If there is insufficient
# memory to create the generator then the function returns a null pointer and
# the error handler is invoked with an error code of GSL_ENOMEM.
# 
### #   Returns: Ptr{gsl_qrng}
### #XXX Unknown input type T::Ptr{gsl_qrng_type}
### #XXX Unknown output type Ptr{gsl_qrng}
### function gsl_qrng_alloc (T::Ptr{gsl_qrng_type}, d::Cuint)
###     ccall( (:gsl_qrng_alloc, "libgsl"), Ptr{gsl_qrng}, (Ptr{gsl_qrng_type},
###         Cuint), T, d )
### end


### Function uses unknown type; disabled
### # This function frees all the memory associated with the generator q.
# 
### #   Returns: Void
### #XXX Unknown input type q::Ptr{gsl_qrng}
### function gsl_qrng_free (q::Ptr{gsl_qrng})
###     ccall( (:gsl_qrng_free, "libgsl"), Void, (Ptr{gsl_qrng}, ), q )
### end


### Function uses unknown type; disabled
### # This function reinitializes the generator q to its starting point.  Note that
# quasi-random sequences do not use a seed and always produce the same set of
# values.
# 
### #   Returns: Void
### #XXX Unknown input type q::Ptr{gsl_qrng}
### function gsl_qrng_init (q::Ptr{gsl_qrng})
###     ccall( (:gsl_qrng_init, "libgsl"), Void, (Ptr{gsl_qrng}, ), q )
### end