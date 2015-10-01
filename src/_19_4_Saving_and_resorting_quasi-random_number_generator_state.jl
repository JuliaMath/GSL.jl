#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################################
# 19.4 Saving and resorting quasi-random number generator state #
#################################################################
export qrng_memcpy, qrng_clone


# This function copies the quasi-random sequence generator src into the pre-
# existing generator dest, making dest into an exact copy of src.  The two
# generators must be of the same type.
# 
#   Returns: Cint
function qrng_memcpy(src::Ptr{gsl_qrng})
    dest = Ref{gsl_qrng}()
    errno = ccall( (:gsl_qrng_memcpy, libgsl), Cint, (Ptr{gsl_qrng},
        Ptr{gsl_qrng}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(dest)
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator q.
# 
#   Returns: Ptr{gsl_qrng}
function qrng_clone(q::Ptr{gsl_qrng})
    output_ptr = ccall( (:gsl_qrng_clone, libgsl), Ptr{gsl_qrng},
        (Ptr{gsl_qrng}, ), q )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
