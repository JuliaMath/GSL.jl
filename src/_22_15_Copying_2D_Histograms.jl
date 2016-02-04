#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 22.15 Copying 2D Histograms #
###############################
export histogram2d_memcpy, histogram2d_clone


# This function copies the histogram src into the pre-existing histogram dest,
# making dest into an exact copy of src.  The two histograms must be of the
# same size.
# 
#   Returns: Cint
function histogram2d_memcpy(src::Ref{gsl_histogram2d})
    dest = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_memcpy, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return dest[]
end


# This function returns a pointer to a newly created histogram which is an
# exact copy of the histogram src.
# 
#   Returns: Ref{gsl_histogram2d}
function histogram2d_clone(src::Ref{gsl_histogram2d})
    output_ptr = ccall( (:gsl_histogram2d_clone, libgsl),
        Ref{gsl_histogram2d}, (Ref{gsl_histogram2d}, ), src )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
