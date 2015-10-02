#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 19.1 Quasi-random number generator initialization #
#####################################################
export qrng_alloc, qrng_free, qrng_init


# This function returns a pointer to a newly-created instance of a quasi-random
# sequence generator of type T and dimension d.  If there is insufficient
# memory to create the generator then the function returns a null pointer and
# the error handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ref{gsl_qrng}
function qrng_alloc(T::Ref{gsl_qrng_type}, d::Integer)
    output_ptr = ccall( (:gsl_qrng_alloc, libgsl), Ref{gsl_qrng},
        (Ref{gsl_qrng_type}, Cuint), T, d )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function frees all the memory associated with the generator q.
# 
#   Returns: Void
function qrng_free(q::Ref{gsl_qrng})
    ccall( (:gsl_qrng_free, libgsl), Void, (Ref{gsl_qrng}, ), q )
end


# This function reinitializes the generator q to its starting point.  Note that
# quasi-random sequences do not use a seed and always produce the same set of
# values.
# 
#   Returns: Void
function qrng_init(q::Ref{gsl_qrng})
    ccall( (:gsl_qrng_init, libgsl), Void, (Ref{gsl_qrng}, ), q )
end
