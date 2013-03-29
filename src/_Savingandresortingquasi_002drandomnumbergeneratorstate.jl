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
#XXX Unknown input type dest::Ptr{gsl_qrng}
#XXX Coerced type for dest::Ptr{Void}
#XXX Unknown input type src::Ptr{gsl_qrng}
#XXX Coerced type for src::Ptr{Void}
function gsl_qrng_memcpy (dest::Ptr{Void}, src::Ptr{Void})
    ccall( (:gsl_qrng_memcpy, "libgsl"), Cint, (Ptr{Void}, Ptr{Void}),
        dest, src )
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator q.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
#XXX Unknown output type Ptr{gsl_qrng}
#XXX Coerced type for output Ptr{Void}
function gsl_qrng_clone (q::Ptr{Void})
    ccall( (:gsl_qrng_clone, "libgsl"), Ptr{Void}, (Ptr{Void}, ), q )
end
