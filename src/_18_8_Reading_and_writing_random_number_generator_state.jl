#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################################
# 18.8 Reading and writing random number generator state #
##########################################################
export rng_fwrite, rng_fread


# This function writes the random number state of the random number generator r
# to the stream stream in binary format.  The return value is 0 for success and
# GSL_EFAILED if there was a problem writing to the file.  Since the data is
# written in the native binary format it may not be portable between different
# architectures.
# 
#   Returns: Cint
function rng_fwrite(stream::Ref{Nothing}, r::Ref{gsl_rng})
    errno = ccall( (:gsl_rng_fwrite, libgsl), Cint, (Ref{Nothing},
        Ref{gsl_rng}), stream, r )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads the random number state into the random number generator
# r from the open stream stream in binary format.  The random number generator
# r must be preinitialized with the correct random number generator type since
# type information is not saved.  The return value is 0 for success and
# GSL_EFAILED if there was a problem reading from the file.  The data is
# assumed to have been written in the native binary format on the same
# architecture.
# 
#   Returns: Cint
function rng_fread(stream::Ref{Nothing})
    r = Ref{gsl_rng}()
    errno = ccall( (:gsl_rng_fread, libgsl), Cint, (Ref{Nothing},
        Ref{gsl_rng}), stream, r )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return r[]
end
