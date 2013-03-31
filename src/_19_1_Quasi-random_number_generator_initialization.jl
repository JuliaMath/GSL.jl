#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 19.1 Quasi-random number generator initialization #
#####################################################
export gsl_qrng_alloc, gsl_qrng_free, gsl_qrng_init


# This function returns a pointer to a newly-created instance of a quasi-random
# sequence generator of type T and dimension d.  If there is insufficient
# memory to create the generator then the function returns a null pointer and
# the error handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_qrng_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_qrng}
#XXX Coerced type for output Ptr{Void}
function gsl_qrng_alloc(T::Ptr{Void}, d::Cuint)
    ccall( (:gsl_qrng_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, Cuint), T, d
        )
end


# This function frees all the memory associated with the generator q.
# 
#   Returns: Void
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_free(q::Ptr{Void})
    ccall( (:gsl_qrng_free, :libgsl), Void, (Ptr{Void}, ), q )
end


# This function reinitializes the generator q to its starting point.  Note that
# quasi-random sequences do not use a seed and always produce the same set of
# values.
# 
#   Returns: Void
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_init(q::Ptr{Void})
    ccall( (:gsl_qrng_init, :libgsl), Void, (Ptr{Void}, ), q )
end
