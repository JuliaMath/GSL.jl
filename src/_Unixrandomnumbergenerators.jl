#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 18.10 Unix random number generators #
#######################################
export gsl_rng_rand, gsl_rng_random_bsd, gsl_rng_random_libc5,
       gsl_rng_random_glibc2, gsl_rng_rand48


### Function uses unknown type; disabled
### # This is the BSD rand generator.  Its sequence is                 x_{n+1} = (a
# x_n + c) mod m  with a = 1103515245, c = 12345 and  m = 2^31.  The seed
# specifies the initial value, x_1.  The period of this generator is  2^31, and
# it uses 1 word of storage per generator.
# 
### #   {$m = 2^{31}$} 
### #   {$2^{31}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_rand ()
###     ccall( (:gsl_rng_rand, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These generators implement the random family of functions, a set of linear
# feedback shift register generators originally used in BSD Unix.  There are
# several versions of random in use today: the original BSD version (e.g. on
# SunOS4), a libc5 version (found on older GNU/Linux systems) and a glibc2
# version.  Each version uses a different seeding procedure, and thus produces
# different sequences.          The original BSD routines accepted a variable
# length buffer for the generator state, with longer buffers providing higher-
# quality randomness.  The random function implemented algorithms for buffer
# lengths of 8, 32, 64, 128 and 256 bytes, and the algorithm with the largest
# length that would fit into the user-supplied buffer was used.  To support
# these algorithms additional generators are available with the following
# names,                 gsl_rng_random8_bsd           gsl_rng_random32_bsd
# gsl_rng_random64_bsd           gsl_rng_random128_bsd
# gsl_rng_random256_bsd  where the numeric suffix indicates the buffer length.
# The original BSD random function used a 128-byte default buffer and so
# gsl_rng_random_bsd has been made equivalent to gsl_rng_random128_bsd.
# Corresponding versions of the libc5 and glibc2 generators are also available,
# with the names gsl_rng_random8_libc5, gsl_rng_random8_glibc2, etc.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_random_bsd ()
###     ccall( (:gsl_rng_random_bsd, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These generators implement the random family of functions, a set of linear
# feedback shift register generators originally used in BSD Unix.  There are
# several versions of random in use today: the original BSD version (e.g. on
# SunOS4), a libc5 version (found on older GNU/Linux systems) and a glibc2
# version.  Each version uses a different seeding procedure, and thus produces
# different sequences.          The original BSD routines accepted a variable
# length buffer for the generator state, with longer buffers providing higher-
# quality randomness.  The random function implemented algorithms for buffer
# lengths of 8, 32, 64, 128 and 256 bytes, and the algorithm with the largest
# length that would fit into the user-supplied buffer was used.  To support
# these algorithms additional generators are available with the following
# names,                 gsl_rng_random8_bsd           gsl_rng_random32_bsd
# gsl_rng_random64_bsd           gsl_rng_random128_bsd
# gsl_rng_random256_bsd  where the numeric suffix indicates the buffer length.
# The original BSD random function used a 128-byte default buffer and so
# gsl_rng_random_bsd has been made equivalent to gsl_rng_random128_bsd.
# Corresponding versions of the libc5 and glibc2 generators are also available,
# with the names gsl_rng_random8_libc5, gsl_rng_random8_glibc2, etc.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_random_libc5 ()
###     ccall( (:gsl_rng_random_libc5, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These generators implement the random family of functions, a set of linear
# feedback shift register generators originally used in BSD Unix.  There are
# several versions of random in use today: the original BSD version (e.g. on
# SunOS4), a libc5 version (found on older GNU/Linux systems) and a glibc2
# version.  Each version uses a different seeding procedure, and thus produces
# different sequences.          The original BSD routines accepted a variable
# length buffer for the generator state, with longer buffers providing higher-
# quality randomness.  The random function implemented algorithms for buffer
# lengths of 8, 32, 64, 128 and 256 bytes, and the algorithm with the largest
# length that would fit into the user-supplied buffer was used.  To support
# these algorithms additional generators are available with the following
# names,                 gsl_rng_random8_bsd           gsl_rng_random32_bsd
# gsl_rng_random64_bsd           gsl_rng_random128_bsd
# gsl_rng_random256_bsd  where the numeric suffix indicates the buffer length.
# The original BSD random function used a 128-byte default buffer and so
# gsl_rng_random_bsd has been made equivalent to gsl_rng_random128_bsd.
# Corresponding versions of the libc5 and glibc2 generators are also available,
# with the names gsl_rng_random8_libc5, gsl_rng_random8_glibc2, etc.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_random_glibc2 ()
###     ccall( (:gsl_rng_random_glibc2, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Unix rand48 generator.  Its sequence is                 x_{n+1} =
# (a x_n + c) mod m  defined on 48-bit unsigned integers with a = 25214903917,
# c = 11 and  m = 2^48.  The seed specifies the upper 32 bits of the initial
# value, x_1, with the lower 16 bits set to 0x330E.  The function gsl_rng_get
# returns the upper 32 bits from each term of the sequence.  This does not have
# a direct parallel in the original rand48 functions, but forcing the result to
# type long int reproduces the output of mrand48.  The function gsl_rng_uniform
# uses the full 48 bits of internal state to return the double precision number
# x_n/m, which is equivalent to the function drand48.  Note that some versions
# of the GNU C Library contained a bug in mrand48 function which caused it to
# produce different results (only the lower 16-bits of the return value were
# set).
# 
### #   {$m = 2^{48}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_rand48 ()
###     ccall( (:gsl_rng_rand48, "libgsl"), , () )
### end