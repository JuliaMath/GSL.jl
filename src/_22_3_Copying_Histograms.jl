#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 22.3 Copying Histograms #
###########################
export histogram_memcpy, histogram_clone


# This function copies the histogram src into the pre-existing histogram dest,
# making dest into an exact copy of src.  The two histograms must be of the
# same size.
# 
#   Returns: Cint
function histogram_memcpy(src::Ref{gsl_histogram})
    dest = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_memcpy, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return dest[]
end


# This function returns a pointer to a newly created histogram which is an
# exact copy of the histogram src.
# 
#   Returns: Ref{gsl_histogram}
function histogram_clone(src::Ref{gsl_histogram})
    output_ptr = ccall( (:gsl_histogram_clone, libgsl),
        Ref{gsl_histogram}, (Ref{gsl_histogram}, ), src )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
