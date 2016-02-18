#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 27.2 Interpolation Functions #
################################
export interp_alloc, interp_init, interp_free


# This function returns a pointer to a newly allocated interpolation object of
# type T for size data-points.
#
#   Returns: Ptr{gsl_interp}
function interp_alloc(T::Ref{gsl_interp_type}, size::Integer)
    output_ptr = ccall( (:gsl_interp_alloc, libgsl), Ptr{gsl_interp},
        (Ref{gsl_interp_type}, Csize_t), T, size )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function initializes the interpolation object interp for the data
# (xa,ya) where xa and ya are arrays of size size.  The interpolation object
# (gsl_interp) does not save the data arrays xa and ya and only stores the
# static state computed from the data.  The xa data array is always assumed to
# be strictly ordered, with increasing x values; the behavior for other
# arrangements is not defined.
#
#   Returns: Cint
function interp_init(interp::Ref{gsl_interp}, xa::Real)
    errno = ccall( (:gsl_interp_init, libgsl), Cint, (Ref{gsl_interp},
        Cdouble), interp, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function frees the interpolation object interp.
#
#   Returns: Void
function interp_free(interp::Ref{gsl_interp})
    ccall( (:gsl_interp_free, libgsl), Void, (Ref{gsl_interp}, ), interp )
end
