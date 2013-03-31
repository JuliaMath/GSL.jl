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
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_interp_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_interp}
#XXX Coerced type for output Ptr{Void}
function gsl_interp_alloc{gsl_int<:Integer}(T::Ptr{Void}, size::gsl_int)
    ccall( (:gsl_interp_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, Csize_t),
        T, size )
end


# This function initializes the interpolation object interp for the data
# (xa,ya) where xa and ya are arrays of size size.  The interpolation object
# (gsl_interp) does not save the data arrays xa and ya and only stores the
# static state computed from the data.  The xa data array is always assumed to
# be strictly ordered, with increasing x values; the behavior for other
# arrangements is not defined.
# 
#   Returns: Cint
#XXX Unknown input type interp::Ptr{gsl_interp}
#XXX Coerced type for interp::Ptr{Void}
function gsl_interp_init(interp::Ptr{Void}, xa::Cdouble)
    gsl_errno = ccall( (:gsl_interp_init, :libgsl), Cint, (Ptr{Void},
        Cdouble), interp, xa )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function frees the interpolation object interp.
# 
#   Returns: Void
#XXX Unknown input type interp::Ptr{gsl_interp}
#XXX Coerced type for interp::Ptr{Void}
function gsl_interp_free(interp::Ptr{Void})
    ccall( (:gsl_interp_free, :libgsl), Void, (Ptr{Void}, ), interp )
end
