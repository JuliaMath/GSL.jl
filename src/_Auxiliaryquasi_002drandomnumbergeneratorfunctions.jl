#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################################
# 19.3 Auxiliary quasi-random number generator functions #
##########################################################
export gsl_qrng_name, gsl_qrng_size, gsl_qrng_state




# This function returns a pointer to the name of the generator.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_name (q::Ptr{Void})
    ccall( (:gsl_qrng_name, "libgsl"), Ptr{Cchar}, (Ptr{Void}, ), q )
end


# These functions return a pointer to the state of generator r and its size.
# You can use this information to access the state directly.  For example, the
# following code will write the state of a generator to a stream,
# void * state = gsl_qrng_state (q);           size_t n = gsl_qrng_size (q);
# fwrite (state, n, 1, stream);
# 
#   Returns: Csize_t
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_size (q::Ptr{Void})
    ccall( (:gsl_qrng_size, "libgsl"), Csize_t, (Ptr{Void}, ), q )
end


# These functions return a pointer to the state of generator r and its size.
# You can use this information to access the state directly.  For example, the
# following code will write the state of a generator to a stream,
# void * state = gsl_qrng_state (q);           size_t n = gsl_qrng_size (q);
# fwrite (state, n, 1, stream);
# 
#   Returns: Ptr{Void}
#XXX Unknown input type q::Ptr{gsl_qrng}
#XXX Coerced type for q::Ptr{Void}
function gsl_qrng_state (q::Ptr{Void})
    ccall( (:gsl_qrng_state, "libgsl"), Ptr{Void}, (Ptr{Void}, ), q )
end
