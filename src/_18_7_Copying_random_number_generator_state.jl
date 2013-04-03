#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 18.7 Copying random number generator state #
##############################################
export rng_memcpy, rng_clone


# This function copies the random number generator src into the pre-existing
# generator dest, making dest into an exact copy of src.  The two generators
# must be of the same type.
# 
#   Returns: Cint
function rng_memcpy(src::Ptr{gsl_rng})
    dest = convert(Ptr{gsl_rng}, Array(gsl_rng, 1))
    errno = ccall( (:gsl_rng_memcpy, :libgsl), Cint, (Ptr{gsl_rng},
        Ptr{gsl_rng}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dest)
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator r.
# 
#   Returns: Ptr{gsl_rng}
function rng_clone(r::Ptr{gsl_rng})
    ccall( (:gsl_rng_clone, :libgsl), Ptr{gsl_rng}, (Ptr{gsl_rng}, ), r )
end
