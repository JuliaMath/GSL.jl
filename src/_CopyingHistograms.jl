#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 22.3 Copying Histograms #
###########################
export gsl_histogram_memcpy, gsl_histogram_clone


# This function copies the histogram src into the pre-existing histogram dest,
# making dest into an exact copy of src.  The two histograms must be of the
# same size.
# 
#   Returns: Cint
function gsl_histogram_memcpy (dest::Ptr{gsl_histogram}, src::Ptr{gsl_histogram})
    ccall( (:gsl_histogram_memcpy, "libgsl"), Cint, (Ptr{gsl_histogram},
        Ptr{gsl_histogram}), dest, src )
end


# This function returns a pointer to a newly created histogram which is an
# exact copy of the histogram src.
# 
#   Returns: Ptr{gsl_histogram}
function gsl_histogram_clone (src::Ptr{gsl_histogram})
    ccall( (:gsl_histogram_clone, "libgsl"), Ptr{gsl_histogram},
        (Ptr{gsl_histogram}, ), src )
end
