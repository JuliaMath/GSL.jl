#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################################
# 18.8 Reading and writing random number generator state #
##########################################################
export gsl_rng_fwrite, gsl_rng_fread


### Function uses unknown type; disabled
### # This function writes the random number state of the random number generator r
# to the stream stream in binary format.  The return value is 0 for success and
# GSL_EFAILED if there was a problem writing to the file.  Since the data is
# written in the native binary format it may not be portable between different
# architectures.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_rng_fwrite (stream::Ptr{FILE}, r::Ptr{gsl_rng})
###     ccall( (:gsl_rng_fwrite, "libgsl"), Cint, (Ptr{FILE}, Ptr{gsl_rng}),
###         stream, r )
### end


### Function uses unknown type; disabled
### # This function reads the random number state into the random number generator
# r from the open stream stream in binary format.  The random number generator
# r must be preinitialized with the correct random number generator type since
# type information is not saved.  The return value is 0 for success and
# GSL_EFAILED if there was a problem reading from the file.  The data is
# assumed to have been written in the native binary format on the same
# architecture.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_rng_fread (stream::Ptr{FILE}, r::Ptr{gsl_rng})
###     ccall( (:gsl_rng_fread, "libgsl"), Cint, (Ptr{FILE}, Ptr{gsl_rng}),
###         stream, r )
### end