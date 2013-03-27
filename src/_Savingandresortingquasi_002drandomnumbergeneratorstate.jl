#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################################
# 19.4 Saving and resorting quasi-random number generator state #
#################################################################
export gsl_qrng_memcpy, gsl_qrng_clone


# This function copies the quasi-random sequence generator src into the pre-
# existing generator dest, making dest into an exact copy of src.  The two
# generators must be of the same type.
# 
#   Returns: Cint
function gsl_qrng_memcpy (dest::Ptr{gsl_qrng}, src::Ptr{gsl_qrng})
    ccall( (:gsl_qrng_memcpy, "libgsl"), Cint, (Ptr{gsl_qrng},
        Ptr{gsl_qrng}), dest, src )
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator q.
# 
#   Returns: Ptr{gsl_qrng}
function gsl_qrng_clone (q::Ptr{gsl_qrng})
    ccall( (:gsl_qrng_clone, "libgsl"), Ptr{gsl_qrng}, (Ptr{gsl_qrng}, ), q
        )
end