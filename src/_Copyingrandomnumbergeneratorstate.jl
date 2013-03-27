#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 18.7 Copying random number generator state #
##############################################
export gsl_rng_memcpy, gsl_rng_clone


# This function copies the random number generator src into the pre-existing
# generator dest, making dest into an exact copy of src.  The two generators
# must be of the same type.
# 
#   Returns: Cint
function gsl_rng_memcpy (dest::Ptr{gsl_rng}, src::Ptr{gsl_rng})
    ccall( (:gsl_rng_memcpy, "libgsl"), Cint, (Ptr{gsl_rng}, Ptr{gsl_rng}),
        dest, src )
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator r.
# 
#   Returns: Ptr{gsl_rng}
function gsl_rng_clone (r::Ptr{gsl_rng})
    ccall( (:gsl_rng_clone, "libgsl"), Ptr{gsl_rng}, (Ptr{gsl_rng}, ), r )
end