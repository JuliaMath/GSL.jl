#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 18.6 Random number environment variables #
############################################
export rng_env_setup








# This function reads the environment variables GSL_RNG_TYPE and GSL_RNG_SEED
# and uses their values to set the corresponding library variables
# gsl_rng_default and gsl_rng_default_seed.  These global variables are defined
# as follows,                 extern const gsl_rng_type *gsl_rng_default
# extern unsigned long int gsl_rng_default_seed  The environment variable
# GSL_RNG_TYPE should be the name of a generator, such as taus or mt19937.  The
# environment variable GSL_RNG_SEED should contain the desired seed value.  It
# is converted to an unsigned long int using the C library function strtoul.
# If you don't specify a generator for GSL_RNG_TYPE then gsl_rng_mt19937 is
# used as the default.  The initial value of gsl_rng_default_seed is zero.
# 
#   Returns: Ptr{gsl_rng_type}
function rng_env_setup()
    ccall( (:gsl_rng_env_setup, :libgsl), Ptr{gsl_rng_type}, () )
end
