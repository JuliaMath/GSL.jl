#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 18.11 Other random number generators #
########################################
export gsl_rng_ranf, gsl_rng_ranmar, gsl_rng_r250, gsl_rng_tt800, gsl_rng_vax,
       gsl_rng_transputer, gsl_rng_randu, gsl_rng_minstd, gsl_rng_uni,
       gsl_rng_uni32, gsl_rng_slatec, gsl_rng_zuf, gsl_rng_knuthran2,
       gsl_rng_knuthran2002, gsl_rng_knuthran, gsl_rng_borosh13,
       gsl_rng_fishman18, gsl_rng_fishman20, gsl_rng_lecuyer21,
       gsl_rng_waterman14, gsl_rng_fishman2x, gsl_rng_coveyou


### Function uses unknown type; disabled
### # This is the CRAY random number generator RANF.  Its sequence is
# x_{n+1} = (a x_n) mod m  defined on 48-bit unsigned integers with a =
# 44485709377909 and  m = 2^48.  The seed specifies the lower 32 bits of the
# initial value, x_1, with the lowest bit set to prevent the seed taking an
# even value.  The upper 16 bits of x_1 are set to 0. A consequence of this
# procedure is that the pairs of seeds 2 and 3, 4 and 5, etc. produce the same
# sequences.          The generator compatible with the CRAY MATHLIB routine
# RANF. It produces double precision floating point numbers which should be
# identical to those from the original RANF.          There is a subtlety in
# the implementation of the seeding.  The initial state is reversed through one
# step, by multiplying by the modular inverse of a mod m.  This is done for
# compatibility with the original CRAY implementation.          Note that you
# can only seed the generator with integers up to  2^32, while the original
# CRAY implementation uses non-portable wide integers which can cover all  2^48
# states of the generator.          The function gsl_rng_get returns the upper
# 32 bits from each term of the sequence.  The function gsl_rng_uniform uses
# the full 48 bits to return the double precision number x_n/m.          The
# period of this generator is  2^46.
# 
### #   {$m = 2^{48}$} 
### #   {$2^{32}$} 
### #   {$2^{48}$} 
### #   {$2^{46}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_ranf ()
###     ccall( (:gsl_rng_ranf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the RANMAR lagged-fibonacci generator of Marsaglia, Zaman and Tsang.
# It is a 24-bit generator, originally designed for single-precision IEEE
# floating point numbers.  It was included in the CERNLIB high-energy physics
# library.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_ranmar ()
###     ccall( (:gsl_rng_ranmar, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the shift-register generator of Kirkpatrick and Stoll.  The sequence
# is based on the recurrence                 x_n = x_{n-103} ^^ x_{n-250}
# where  ^^ denotes “exclusive-or”, defined on 32-bit words.  The period of
# this generator is about  2^250 and it uses 250 words of state per generator.
# For more information see,            S. Kirkpatrick and E. Stoll, “A very
# fast shift-register sequence random number generator”, Journal of
# Computational Physics, 40, 517–526 (1981)
# 
### #   {$\oplus$} 
### #   {$2^{250}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_r250 ()
###     ccall( (:gsl_rng_r250, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is an earlier version of the twisted generalized feedback shift-register
# generator, and has been superseded by the development of MT19937.  However,
# it is still an acceptable generator in its own right.  It has a period of
# 2^800 and uses 33 words of storage per generator.          For more
# information see,            Makoto Matsumoto and Yoshiharu Kurita, “Twisted
# GFSR Generators II”, ACM Transactions on Modelling and Computer Simulation,
# Vol. 4, No. 3, 1994, pages 254–266.
# 
### #   {$2^{800}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_tt800 ()
###     ccall( (:gsl_rng_tt800, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the VAX generator MTH$RANDOM.  Its sequence is,
# x_{n+1} = (a x_n + c) mod m  with a = 69069, c = 1 and  m = 2^32.  The seed
# specifies the initial value, x_1.  The period of this generator is  2^32 and
# it uses 1 word of storage per generator.
# 
### #   {$m = 2^{32}$} 
### #   {$2^{32}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_vax ()
###     ccall( (:gsl_rng_vax, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the random number generator from the INMOS Transputer Development
# system.  Its sequence is,                 x_{n+1} = (a x_n) mod m  with a =
# 1664525 and  m = 2^32.  The seed specifies the initial value,  x_1.
# 
### #   {$m = 2^{32}$} 
### #   {$x_1$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_transputer ()
###     ccall( (:gsl_rng_transputer, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the IBM RANDU generator.  Its sequence is                 x_{n+1} =
# (a x_n) mod m  with a = 65539 and  m = 2^31.  The seed specifies the initial
# value, x_1.  The period of this generator was only  2^29.  It has become a
# textbook example of a poor generator.
# 
### #   {$m = 2^{31}$} 
### #   {$2^{29}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_randu ()
###     ccall( (:gsl_rng_randu, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is Park and Miller's “minimal standard” minstd generator, a simple
# linear congruence which takes care to avoid the major pitfalls of such
# algorithms.  Its sequence is,                 x_{n+1} = (a x_n) mod m  with a
# = 16807 and  m = 2^31 - 1 = 2147483647.  The seed specifies the initial
# value,  x_1.  The period of this generator is about  2^31.          This
# generator is used in the IMSL Library (subroutine RNUN) and in MATLAB (the
# RAND function).  It is also sometimes known by the acronym “GGL” (I'm not
# sure what that stands for).          For more information see,
# Park and Miller, “Random Number Generators: Good ones are hard to find”,
# Communications of the ACM, October 1988, Volume 31, No 10, pages 1192–1201.
# 
### #   {$m = 2^{31} - 1 = 2147483647$} 
### #   {$x_1$} 
### #   {$2^{31}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_minstd ()
###     ccall( (:gsl_rng_minstd, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a reimplementation of the 16-bit SLATEC random number generator
# RUNIF. A generalization of the generator to 32 bits is provided by
# gsl_rng_uni32.  The original source code is available from NETLIB.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_uni ()
###     ccall( (:gsl_rng_uni, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a reimplementation of the 16-bit SLATEC random number generator
# RUNIF. A generalization of the generator to 32 bits is provided by
# gsl_rng_uni32.  The original source code is available from NETLIB.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_uni32 ()
###     ccall( (:gsl_rng_uni32, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the SLATEC random number generator RAND. It is ancient.  The original
# source code is available from NETLIB.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_slatec ()
###     ccall( (:gsl_rng_slatec, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the ZUFALL lagged Fibonacci series generator of Peterson.  Its
# sequence is,                 t = u_{n-273} + u_{n-607}           u_n  = t -
# floor(t)  The original source code is available from NETLIB.  For more
# information see,            W. Petersen, “Lagged Fibonacci Random Number
# Generators for the NEC SX-3”, International Journal of High Speed Computing
# (1994).
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_zuf ()
###     ccall( (:gsl_rng_zuf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a second-order multiple recursive generator described by Knuth in
# Seminumerical Algorithms, 3rd Ed., page 108.  Its sequence is,
# x_n = (a_1 x_{n-1} + a_2 x_{n-2}) mod m  with a_1 = 271828183, a_2 =
# 314159269, and  m = 2^31 - 1.
# 
### #   {$m = 2^{31}-1$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_knuthran2 ()
###     ccall( (:gsl_rng_knuthran2, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a second-order multiple recursive generator described by Knuth in
# Seminumerical Algorithms, 3rd Ed., Section 3.6.  Knuth provides its C code.
# The updated routine gsl_rng_knuthran2002 is from the revised 9th printing and
# corrects some weaknesses in the earlier version, which is implemented as
# gsl_rng_knuthran.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_knuthran2002 ()
###     ccall( (:gsl_rng_knuthran2002, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a second-order multiple recursive generator described by Knuth in
# Seminumerical Algorithms, 3rd Ed., Section 3.6.  Knuth provides its C code.
# The updated routine gsl_rng_knuthran2002 is from the revised 9th printing and
# corrects some weaknesses in the earlier version, which is implemented as
# gsl_rng_knuthran.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_knuthran ()
###     ccall( (:gsl_rng_knuthran, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These multiplicative generators are taken from Knuth's Seminumerical
# Algorithms, 3rd Ed., pages 106–108. Their sequence is,
# x_{n+1} = (a x_n) mod m  where the seed specifies the initial value,  x_1.
# The parameters a and m are as follows, Borosh-Niederreiter: a = 1812433253,
# m = 2^32, Fishman18: a = 62089911,  m = 2^31 - 1, Fishman20: a = 48271,  m =
# 2^31 - 1, L'Ecuyer: a = 40692,  m = 2^31 - 249, Waterman: a = 1566083941,  m
# = 2^32.
# 
### #   {$x_1$} 
### #   {$m = 2^{32}$} 
### #   {$m = 2^{31}-1$} 
### #   {$m = 2^{31}-1$} 
### #   {$m = 2^{31}-249$} 
### #   {$m = 2^{32}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_borosh13 ()
###     ccall( (:gsl_rng_borosh13, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These multiplicative generators are taken from Knuth's Seminumerical
# Algorithms, 3rd Ed., pages 106–108. Their sequence is,
# x_{n+1} = (a x_n) mod m  where the seed specifies the initial value,  x_1.
# The parameters a and m are as follows, Borosh-Niederreiter: a = 1812433253,
# m = 2^32, Fishman18: a = 62089911,  m = 2^31 - 1, Fishman20: a = 48271,  m =
# 2^31 - 1, L'Ecuyer: a = 40692,  m = 2^31 - 249, Waterman: a = 1566083941,  m
# = 2^32.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_fishman18 ()
###     ccall( (:gsl_rng_fishman18, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These multiplicative generators are taken from Knuth's Seminumerical
# Algorithms, 3rd Ed., pages 106–108. Their sequence is,
# x_{n+1} = (a x_n) mod m  where the seed specifies the initial value,  x_1.
# The parameters a and m are as follows, Borosh-Niederreiter: a = 1812433253,
# m = 2^32, Fishman18: a = 62089911,  m = 2^31 - 1, Fishman20: a = 48271,  m =
# 2^31 - 1, L'Ecuyer: a = 40692,  m = 2^31 - 249, Waterman: a = 1566083941,  m
# = 2^32.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_fishman20 ()
###     ccall( (:gsl_rng_fishman20, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These multiplicative generators are taken from Knuth's Seminumerical
# Algorithms, 3rd Ed., pages 106–108. Their sequence is,
# x_{n+1} = (a x_n) mod m  where the seed specifies the initial value,  x_1.
# The parameters a and m are as follows, Borosh-Niederreiter: a = 1812433253,
# m = 2^32, Fishman18: a = 62089911,  m = 2^31 - 1, Fishman20: a = 48271,  m =
# 2^31 - 1, L'Ecuyer: a = 40692,  m = 2^31 - 249, Waterman: a = 1566083941,  m
# = 2^32.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_lecuyer21 ()
###     ccall( (:gsl_rng_lecuyer21, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These multiplicative generators are taken from Knuth's Seminumerical
# Algorithms, 3rd Ed., pages 106–108. Their sequence is,
# x_{n+1} = (a x_n) mod m  where the seed specifies the initial value,  x_1.
# The parameters a and m are as follows, Borosh-Niederreiter: a = 1812433253,
# m = 2^32, Fishman18: a = 62089911,  m = 2^31 - 1, Fishman20: a = 48271,  m =
# 2^31 - 1, L'Ecuyer: a = 40692,  m = 2^31 - 249, Waterman: a = 1566083941,  m
# = 2^32.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_waterman14 ()
###     ccall( (:gsl_rng_waterman14, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the L'Ecuyer–Fishman random number generator. It is taken from
# Knuth's Seminumerical Algorithms, 3rd Ed., page 108. Its sequence is,
# z_{n+1} = (x_n - y_n) mod m  with  m = 2^31 - 1.  x_n and y_n are given by
# the fishman20 and lecuyer21 algorithms.  The seed specifies the initial
# value,  x_1.
# 
### #   {$m = 2^{31}-1$} 
### #   {$x_1$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_fishman2x ()
###     ccall( (:gsl_rng_fishman2x, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Coveyou random number generator. It is taken from Knuth's
# Seminumerical Algorithms, 3rd Ed., Section 3.2.2. Its sequence is,
# x_{n+1} = (x_n (x_n + 1)) mod m  with  m = 2^32.  The seed specifies the
# initial value,  x_1.
# 
### #   {$m = 2^{32}$} 
### #   {$x_1$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_rng_coveyou ()
###     ccall( (:gsl_rng_coveyou, "libgsl"), , () )
### end