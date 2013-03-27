#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 18.9 Random number generator algorithms #
###########################################
export gsl_rng_mt19937, gsl_rng_ranlxs0, gsl_rng_ranlxs1, gsl_rng_ranlxs2,
       gsl_rng_ranlxd1, gsl_rng_ranlxd2, gsl_rng_ranlux, gsl_rng_ranlux389,
       gsl_rng_cmrg, gsl_rng_mrg, gsl_rng_taus, gsl_rng_taus2, gsl_rng_gfsr4


# The MT19937 generator of Makoto Matsumoto and Takuji Nishimura is a variant
# of the twisted generalized feedback shift-register algorithm, and is known as
# the “Mersenne Twister” generator.  It has a Mersenne prime period of  2^19937
# - 1 (about  10^6000) and is equi-distributed in 623 dimensions.  It has
# passed the diehard statistical tests.  It uses 624 words of state per
# generator and is comparable in speed to the other generators.  The original
# generator used a default seed of 4357 and choosing s equal to zero in
# gsl_rng_set reproduces this.  Later versions switched to 5489 as the default
# seed, you can choose this explicitly via gsl_rng_set instead if you require
# it.          For more information see,            Makoto Matsumoto and Takuji
# Nishimura, “Mersenne Twister: A 623-dimensionally equidistributed uniform
# pseudorandom number generator”. ACM Transactions on Modeling and Computer
# Simulation, Vol. 8, No. 1 (Jan. 1998), Pages 3–30  The generator
# gsl_rng_mt19937 uses the second revision of the seeding procedure published
# by the two authors above in 2002.  The original seeding procedures could
# cause spurious artifacts for some seed values. They are still available
# through the alternative generators gsl_rng_mt19937_1999 and
# gsl_rng_mt19937_1998.
# 
#   {$2^{19937} - 1$} 
#   {$10^{6000}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_mt19937 ()
    ccall( (:gsl_rng_mt19937, "libgsl"), , () )
end


#  The generator ranlxs0 is a second-generation version of the ranlux algorithm
# of Lüscher, which produces “luxury random numbers”.  This generator provides
# single precision output (24 bits) at three luxury levels ranlxs0, ranlxs1 and
# ranlxs2, in increasing order of strength.  It uses double-precision floating
# point arithmetic internally and can be significantly faster than the integer
# version of ranlux, particularly on 64-bit architectures.  The period of the
# generator is about  10^171.  The algorithm has mathematically proven
# properties and can provide truly decorrelated numbers at a known level of
# randomness.  The higher luxury levels provide increased decorrelation between
# samples as an additional safety margin.          Note that the range of
# allowed seeds for this generator is  [0,2^31-1]. Higher seed values are
# wrapped modulo  2^31.
# 
#   {$10^{171}$} 
#   {$[0,2^{31}-1]$} 
#   {$2^{31}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlxs0 ()
    ccall( (:gsl_rng_ranlxs0, "libgsl"), , () )
end


#  The generator ranlxs0 is a second-generation version of the ranlux algorithm
# of Lüscher, which produces “luxury random numbers”.  This generator provides
# single precision output (24 bits) at three luxury levels ranlxs0, ranlxs1 and
# ranlxs2, in increasing order of strength.  It uses double-precision floating
# point arithmetic internally and can be significantly faster than the integer
# version of ranlux, particularly on 64-bit architectures.  The period of the
# generator is about  10^171.  The algorithm has mathematically proven
# properties and can provide truly decorrelated numbers at a known level of
# randomness.  The higher luxury levels provide increased decorrelation between
# samples as an additional safety margin.          Note that the range of
# allowed seeds for this generator is  [0,2^31-1]. Higher seed values are
# wrapped modulo  2^31.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlxs1 ()
    ccall( (:gsl_rng_ranlxs1, "libgsl"), , () )
end


#  The generator ranlxs0 is a second-generation version of the ranlux algorithm
# of Lüscher, which produces “luxury random numbers”.  This generator provides
# single precision output (24 bits) at three luxury levels ranlxs0, ranlxs1 and
# ranlxs2, in increasing order of strength.  It uses double-precision floating
# point arithmetic internally and can be significantly faster than the integer
# version of ranlux, particularly on 64-bit architectures.  The period of the
# generator is about  10^171.  The algorithm has mathematically proven
# properties and can provide truly decorrelated numbers at a known level of
# randomness.  The higher luxury levels provide increased decorrelation between
# samples as an additional safety margin.          Note that the range of
# allowed seeds for this generator is  [0,2^31-1]. Higher seed values are
# wrapped modulo  2^31.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlxs2 ()
    ccall( (:gsl_rng_ranlxs2, "libgsl"), , () )
end


#  These generators produce double precision output (48 bits) from the ranlxs
# generator.  The library provides two luxury levels ranlxd1 and ranlxd2, in
# increasing order of strength.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlxd1 ()
    ccall( (:gsl_rng_ranlxd1, "libgsl"), , () )
end


#  These generators produce double precision output (48 bits) from the ranlxs
# generator.  The library provides two luxury levels ranlxd1 and ranlxd2, in
# increasing order of strength.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlxd2 ()
    ccall( (:gsl_rng_ranlxd2, "libgsl"), , () )
end


# The ranlux generator is an implementation of the original algorithm developed
# by Lüscher.  It uses a lagged-fibonacci-with-skipping algorithm to produce
# “luxury random numbers”.  It is a 24-bit generator, originally designed for
# single-precision IEEE floating point numbers.  This implementation is based
# on integer arithmetic, while the second-generation versions ranlxs and ranlxd
# described above provide floating-point implementations which will be faster
# on many platforms.  The period of the generator is about  10^171.  The
# algorithm has mathematically proven properties and it can provide truly
# decorrelated numbers at a known level of randomness.  The default level of
# decorrelation recommended by Lüscher is provided by gsl_rng_ranlux, while
# gsl_rng_ranlux389 gives the highest level of randomness, with all 24 bits
# decorrelated.  Both types of generator use 24 words of state per generator.
# For more information see,            M. Lüscher, “A portable high-quality
# random number generator for lattice field theory calculations”, Computer
# Physics Communications, 79 (1994) 100–110.  F. James, “RANLUX: A Fortran
# implementation of the high-quality pseudo-random number generator of
# Lüscher”, Computer Physics Communications, 79 (1994) 111–114
# 
#   {$10^{171}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlux ()
    ccall( (:gsl_rng_ranlux, "libgsl"), , () )
end


# The ranlux generator is an implementation of the original algorithm developed
# by Lüscher.  It uses a lagged-fibonacci-with-skipping algorithm to produce
# “luxury random numbers”.  It is a 24-bit generator, originally designed for
# single-precision IEEE floating point numbers.  This implementation is based
# on integer arithmetic, while the second-generation versions ranlxs and ranlxd
# described above provide floating-point implementations which will be faster
# on many platforms.  The period of the generator is about  10^171.  The
# algorithm has mathematically proven properties and it can provide truly
# decorrelated numbers at a known level of randomness.  The default level of
# decorrelation recommended by Lüscher is provided by gsl_rng_ranlux, while
# gsl_rng_ranlux389 gives the highest level of randomness, with all 24 bits
# decorrelated.  Both types of generator use 24 words of state per generator.
# For more information see,            M. Lüscher, “A portable high-quality
# random number generator for lattice field theory calculations”, Computer
# Physics Communications, 79 (1994) 100–110.  F. James, “RANLUX: A Fortran
# implementation of the high-quality pseudo-random number generator of
# Lüscher”, Computer Physics Communications, 79 (1994) 111–114
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_ranlux389 ()
    ccall( (:gsl_rng_ranlux389, "libgsl"), , () )
end


# This is a combined multiple recursive generator by L'Ecuyer.  Its sequence
# is,                 z_n = (x_n - y_n) mod m_1  where the two underlying
# generators x_n and y_n are,                 x_n = (a_1 x_{n-1} + a_2 x_{n-2}
# + a_3 x_{n-3}) mod m_1           y_n = (b_1 y_{n-1} + b_2 y_{n-2} + b_3
# y_{n-3}) mod m_2  with coefficients a_1 = 0, a_2 = 63308, a_3 = -183326, b_1
# = 86098, b_2 = 0, b_3 = -539608, and moduli  m_1 = 2^31 - 1 = 2147483647 and
# m_2 = 2145483479.          The period of this generator is  lcm(m_1^3-1,
# m_2^3-1), which is approximately  2^185 (about  10^56).  It uses 6 words of
# state per generator.  For more information see,             P. L'Ecuyer,
# “Combined Multiple Recursive Random Number Generators”, Operations Research,
# 44, 5 (1996), 816–822.
# 
#   {$m_1 = 2^{31} - 1 = 2147483647$} 
#   {$m_2 = 2145483479$} 
#   {$\hbox{lcm}(m_1^3-1, m_2^3-1)$} 
#   {$2^{185}$} 
#   {$10^{56}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_cmrg ()
    ccall( (:gsl_rng_cmrg, "libgsl"), , () )
end


# This is a fifth-order multiple recursive generator by L'Ecuyer, Blouin and
# Coutre.  Its sequence is,                 x_n = (a_1 x_{n-1} + a_5 x_{n-5})
# mod m  with a_1 = 107374182, a_2 = a_3 = a_4 = 0, a_5 = 104480 and  m = 2^31
# - 1.          The period of this generator is about  10^46.  It uses 5 words
# of state per generator.  More information can be found in the following
# paper,            P. L'Ecuyer, F. Blouin, and R. Coutre, “A search for good
# multiple recursive random number generators”, ACM Transactions on Modeling
# and Computer Simulation 3, 87–98 (1993).
# 
#   {$m = 2^{31}-1$} 
#   {$10^{46}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_mrg ()
    ccall( (:gsl_rng_mrg, "libgsl"), , () )
end


# This is a maximally equidistributed combined Tausworthe generator by
# L'Ecuyer.  The sequence is,                 x_n = (s1_n ^^ s2_n ^^ s3_n)
# where,                 s1_{n+1} =
# (((s1_n&4294967294)<<12)^^(((s1_n<<13)^^s1_n)>>19))           s2_{n+1} =
# (((s2_n&4294967288)<< 4)^^(((s2_n<< 2)^^s2_n)>>25))           s3_{n+1} =
# (((s3_n&4294967280)<<17)^^(((s3_n<< 3)^^s3_n)>>11))  computed modulo  2^32.
# In the formulas above  ^^ denotes “exclusive-or”.  Note that the algorithm
# relies on the properties of 32-bit unsigned integers and has been implemented
# using a bitmask of 0xFFFFFFFF to make it work on 64 bit machines.
# The period of this generator is  2^88 (about  10^26).  It uses 3 words of
# state per generator.  For more information see,             P. L'Ecuyer,
# “Maximally Equidistributed Combined Tausworthe Generators”, Mathematics of
# Computation, 65, 213 (1996), 203–213.   The generator gsl_rng_taus2 uses the
# same algorithm as gsl_rng_taus but with an improved seeding procedure
# described in the paper,             P. L'Ecuyer, “Tables of Maximally
# Equidistributed Combined LFSR Generators”, Mathematics of Computation, 68,
# 225 (1999), 261–269  The generator gsl_rng_taus2 should now be used in
# preference to gsl_rng_taus.
# 
#   {$2^{32}$} 
#   {$\oplus$} 
#   {$2^{88}$} 
#   {$10^{26}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_taus ()
    ccall( (:gsl_rng_taus, "libgsl"), , () )
end


# This is a maximally equidistributed combined Tausworthe generator by
# L'Ecuyer.  The sequence is,                 x_n = (s1_n ^^ s2_n ^^ s3_n)
# where,                 s1_{n+1} =
# (((s1_n&4294967294)<<12)^^(((s1_n<<13)^^s1_n)>>19))           s2_{n+1} =
# (((s2_n&4294967288)<< 4)^^(((s2_n<< 2)^^s2_n)>>25))           s3_{n+1} =
# (((s3_n&4294967280)<<17)^^(((s3_n<< 3)^^s3_n)>>11))  computed modulo  2^32.
# In the formulas above  ^^ denotes “exclusive-or”.  Note that the algorithm
# relies on the properties of 32-bit unsigned integers and has been implemented
# using a bitmask of 0xFFFFFFFF to make it work on 64 bit machines.
# The period of this generator is  2^88 (about  10^26).  It uses 3 words of
# state per generator.  For more information see,             P. L'Ecuyer,
# “Maximally Equidistributed Combined Tausworthe Generators”, Mathematics of
# Computation, 65, 213 (1996), 203–213.   The generator gsl_rng_taus2 uses the
# same algorithm as gsl_rng_taus but with an improved seeding procedure
# described in the paper,             P. L'Ecuyer, “Tables of Maximally
# Equidistributed Combined LFSR Generators”, Mathematics of Computation, 68,
# 225 (1999), 261–269  The generator gsl_rng_taus2 should now be used in
# preference to gsl_rng_taus.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_taus2 ()
    ccall( (:gsl_rng_taus2, "libgsl"), , () )
end


# The gfsr4 generator is like a lagged-fibonacci generator, and produces each
# number as an xor'd sum of four previous values.                 r_n = r_{n-A}
# ^^ r_{n-B} ^^ r_{n-C} ^^ r_{n-D}  Ziff (ref below) notes that “it is now
# widely known” that two-tap registers (such as R250, which is described below)
# have serious flaws, the most obvious one being the three-point correlation
# that comes from the definition of the generator.  Nice mathematical
# properties can be derived for GFSR's, and numerics bears out the claim that
# 4-tap GFSR's with appropriately chosen offsets are as random as can be
# measured, using the author's test.          This implementation uses the
# values suggested the example on p392 of Ziff's article: A=471, B=1586,
# C=6988, D=9689.          If the offsets are appropriately chosen (such as the
# one ones in this implementation), then the sequence is said to be maximal;
# that means that the period is 2^D - 1, where D is the longest lag.  (It is
# one less than 2^D because it is not permitted to have all zeros in the ra[]
# array.)  For this implementation with D=9689 that works out to about
# 10^2917.          Note that the implementation of this generator using a
# 32-bit integer amounts to 32 parallel implementations of one-bit generators.
# One consequence of this is that the period of this 32-bit generator is the
# same as for the one-bit generator.  Moreover, this independence means that
# all 32-bit patterns are equally likely, and in particular that 0 is an
# allowed random value.  (We are grateful to Heiko Bauke for clarifying for us
# these properties of GFSR random number generators.)          For more
# information see,            Robert M. Ziff, “Four-tap shift-register-sequence
# random-number generators”, Computers in Physics, 12(4), Jul/Aug 1998, pp
# 385–392.
# 
#   {$10^{2917}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_rng_gfsr4 ()
    ccall( (:gsl_rng_gfsr4, "libgsl"), , () )
end