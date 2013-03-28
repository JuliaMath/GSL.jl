#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 22.15 Copying 2D Histograms #
###############################
export gsl_histogram2d_memcpy, gsl_histogram2d_clone


### Function uses unknown type; disabled
### # This function copies the histogram src into the pre-existing histogram dest,
# making dest into an exact copy of src.  The two histograms must be of the
# same size.
# 
### #   Returns: Cint
### #XXX Unknown input type dest::Ptr{gsl_histogram2d}
### #XXX Unknown input type src::Ptr{gsl_histogram2d}
### function gsl_histogram2d_memcpy (dest::Ptr{gsl_histogram2d}, src::Ptr{gsl_histogram2d})
###     ccall( (:gsl_histogram2d_memcpy, "libgsl"), Cint,
###         (Ptr{gsl_histogram2d}, Ptr{gsl_histogram2d}), dest, src )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to a newly created histogram which is an
# exact copy of the histogram src.
# 
### #   Returns: Ptr{gsl_histogram2d}
### #XXX Unknown input type src::Ptr{gsl_histogram2d}
### #XXX Unknown output type Ptr{gsl_histogram2d}
### function gsl_histogram2d_clone (src::Ptr{gsl_histogram2d})
###     ccall( (:gsl_histogram2d_clone, "libgsl"), Ptr{gsl_histogram2d},
###         (Ptr{gsl_histogram2d}, ), src )
### end