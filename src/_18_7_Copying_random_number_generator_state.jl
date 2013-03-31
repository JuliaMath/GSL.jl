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
#XXX Unknown input type dest::Ptr{gsl_rng}
#XXX Coerced type for dest::Ptr{Void}
#XXX Unknown input type src::Ptr{gsl_rng}
#XXX Coerced type for src::Ptr{Void}
function gsl_rng_memcpy(dest::Ptr{Void}, src::Ptr{Void})
    gsl_errno = ccall( (:gsl_rng_memcpy, :libgsl), Cint, (Ptr{Void},
        Ptr{Void}), dest, src )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function returns a pointer to a newly created generator which is an
# exact copy of the generator r.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
#XXX Unknown output type Ptr{gsl_rng}
#XXX Coerced type for output Ptr{Void}
function gsl_rng_clone(r::Ptr{Void})
    ccall( (:gsl_rng_clone, :libgsl), Ptr{Void}, (Ptr{Void}, ), r )
end
