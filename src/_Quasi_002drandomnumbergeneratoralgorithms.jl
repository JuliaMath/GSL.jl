#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 19.5 Quasi-random number generator algorithms #
#################################################
export gsl_qrng_niederreiter_2, gsl_qrng_sobol, gsl_qrng_halton,
       gsl_qrng_reversehalton


### Function uses unknown type; disabled
### # This generator uses the algorithm described in Bratley, Fox, Niederreiter,
# ACM Trans. Model. Comp. Sim. 2, 195 (1992). It is valid up to 12 dimensions.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_qrng_niederreiter_2 ()
###     ccall( (:gsl_qrng_niederreiter_2, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This generator uses the Sobol sequence described in Antonov, Saleev, USSR
# Comput. Maths. Math. Phys. 19, 252 (1980). It is valid up to 40 dimensions.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_qrng_sobol ()
###     ccall( (:gsl_qrng_sobol, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These generators use the Halton and reverse Halton sequences described in
# J.H. Halton, Numerische Mathematik 2, 84-90 (1960) and B. Vandewoestyne and
# R. Cools Computational and Applied Mathematics 189, 1&2, 341-361 (2006).
# They are valid up to 1229 dimensions.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_qrng_halton ()
###     ccall( (:gsl_qrng_halton, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These generators use the Halton and reverse Halton sequences described in
# J.H. Halton, Numerische Mathematik 2, 84-90 (1960) and B. Vandewoestyne and
# R. Cools Computational and Applied Mathematics 189, 1&2, 341-361 (2006).
# They are valid up to 1229 dimensions.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_qrng_reversehalton ()
###     ccall( (:gsl_qrng_reversehalton, "libgsl"), , () )
### end