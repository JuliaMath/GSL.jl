#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 18.4 Sampling from a random number generator #
################################################
export gsl_rng_get, gsl_rng_uniform, gsl_rng_uniform_pos, gsl_rng_uniform_int


# This function returns a random integer from the generator r.  The minimum and
# maximum values depend on the algorithm used, but all integers in the range
# [min,max] are equally likely.  The values of min and max can determined using
# the auxiliary functions gsl_rng_max (r) and gsl_rng_min (r).
# 
#   Returns: unsignedlongint
#XXX Unknown output type unsignedlongint
function gsl_rng_get (r::Ptr{gsl_rng})
    ccall( (:gsl_rng_get, "libgsl"), unsignedlongint, (Ptr{gsl_rng}, ), r )
end


# This function returns a double precision floating point number uniformly
# distributed in the range [0,1).  The range includes 0.0 but excludes 1.0.
# The value is typically obtained by dividing the result of gsl_rng_get(r) by
# gsl_rng_max(r) + 1.0 in double precision.  Some generators compute this ratio
# internally so that they can provide floating point numbers with more than 32
# bits of randomness (the maximum number of bits that can be portably
# represented in a single unsigned long int).
# 
#   Returns: Cdouble
function gsl_rng_uniform (r::Ptr{gsl_rng})
    ccall( (:gsl_rng_uniform, "libgsl"), Cdouble, (Ptr{gsl_rng}, ), r )
end


# This function returns a positive double precision floating point number
# uniformly distributed in the range (0,1), excluding both 0.0 and 1.0.  The
# number is obtained by sampling the generator with the algorithm of
# gsl_rng_uniform until a non-zero value is obtained.  You can use this
# function if you need to avoid a singularity at 0.0.
# 
#   Returns: Cdouble
function gsl_rng_uniform_pos (r::Ptr{gsl_rng})
    ccall( (:gsl_rng_uniform_pos, "libgsl"), Cdouble, (Ptr{gsl_rng}, ), r )
end


# This function returns a random integer from 0 to n-1 inclusive by scaling
# down and/or discarding samples from the generator r.  All integers in the
# range [0,n-1] are produced with equal probability.  For generators with a
# non-zero minimum value an offset is applied so that zero is returned with the
# correct probability.          Note that this function is designed for
# sampling from ranges smaller than the range of the underlying generator.  The
# parameter n must be less than or equal to the range of the generator r.  If n
# is larger than the range of the generator then the function calls the error
# handler with an error code of GSL_EINVAL and returns zero.          In
# particular, this function is not intended for generating the full range of
# unsigned integer values  [0,2^32-1]. Instead choose a generator with the
# maximal integer range and zero minimum value, such as gsl_rng_ranlxd1,
# gsl_rng_mt19937 or gsl_rng_taus, and sample it directly using gsl_rng_get.
# The range of each generator can be found using the auxiliary functions
# described in the next section.
# 
#   {$[0,2^{32}-1]$} 
#   Returns: unsignedlongint
#XXX Unknown input type n::unsignedlongint
#XXX Unknown output type unsignedlongint
function gsl_rng_uniform_int (r::Ptr{gsl_rng}, n::unsignedlongint)
    ccall( (:gsl_rng_uniform_int, "libgsl"), unsignedlongint,
        (Ptr{gsl_rng}, unsignedlongint), r, n )
end