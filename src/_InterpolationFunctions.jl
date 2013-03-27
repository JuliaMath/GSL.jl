#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 27.2 Interpolation Functions #
################################
export gsl_interp_alloc, gsl_interp_init, gsl_interp_free


# This function returns a pointer to a newly allocated interpolation object of
# type T for size data-points.
# 
#   Returns: Ptr{gsl_interp}
function gsl_interp_alloc (T::Ptr{gsl_interp_type}, size::Csize_t)
    ccall( (:gsl_interp_alloc, "libgsl"), Ptr{gsl_interp},
        (Ptr{gsl_interp_type}, Csize_t), T, size )
end


# This function initializes the interpolation object interp for the data
# (xa,ya) where xa and ya are arrays of size size.  The interpolation object
# (gsl_interp) does not save the data arrays xa and ya and only stores the
# static state computed from the data.  The xa data array is always assumed to
# be strictly ordered, with increasing x values; the behavior for other
# arrangements is not defined.
# 
#   Returns: Cint
function gsl_interp_init (interp::Ptr{gsl_interp}, xa::Cdouble)
    ccall( (:gsl_interp_init, "libgsl"), Cint, (Ptr{gsl_interp}, Cdouble),
        interp, xa )
end


# This function frees the interpolation object interp.
# 
#   Returns: Void
function gsl_interp_free (interp::Ptr{gsl_interp})
    ccall( (:gsl_interp_free, "libgsl"), Void, (Ptr{gsl_interp}, ), interp
        )
end