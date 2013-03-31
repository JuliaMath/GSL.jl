#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 22.21 Resampling from 2D histograms #
#######################################
export gsl_histogram2d_pdf, gsl_histogram2d_pdf_alloc,
       gsl_histogram2d_pdf_init, gsl_histogram2d_pdf_free,
       gsl_histogram2d_pdf_sample




type gsl_histogram2d_pdf
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


# This function allocates memory for a two-dimensional probability distribution
# of size nx-by-ny and returns a pointer to a newly initialized
# gsl_histogram2d_pdf struct. If insufficient memory is available a null
# pointer is returned and the error handler is invoked with an error code of
# GSL_ENOMEM.
# 
#   Returns: Ptr{gsl_histogram2d_pdf}
function gsl_histogram2d_pdf_alloc{gsl_int<:Integer}(nx::gsl_int, ny::gsl_int)
    ccall( (:gsl_histogram2d_pdf_alloc, :libgsl), Ptr{gsl_histogram2d_pdf},
        (Csize_t, Csize_t), nx, ny )
end


# This function initializes the two-dimensional probability distribution
# calculated p from the histogram h.  If any of the bins of h are negative then
# the error handler is invoked with an error code of GSL_EDOM because a
# probability distribution cannot contain negative values.
# 
#   Returns: Cint
function gsl_histogram2d_pdf_init(p::Ptr{gsl_histogram2d_pdf}, h::Ptr{gsl_histogram2d})
    gsl_errno = ccall( (:gsl_histogram2d_pdf_init, :libgsl), Cint,
        (Ptr{gsl_histogram2d_pdf}, Ptr{gsl_histogram2d}), p, h )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function frees the two-dimensional probability distribution function p
# and all of the memory associated with it.
# 
#   Returns: Void
function gsl_histogram2d_pdf_free(p::Ptr{gsl_histogram2d_pdf})
    ccall( (:gsl_histogram2d_pdf_free, :libgsl), Void,
        (Ptr{gsl_histogram2d_pdf}, ), p )
end


# This function uses two uniform random numbers between zero and one, r1 and
# r2, to compute a single random sample from the two-dimensional probability
# distribution p.
# 
#   Returns: Cint
function gsl_histogram2d_pdf_sample(p::Ptr{gsl_histogram2d_pdf}, r1::Cdouble, r2::Cdouble)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_histogram2d_pdf_sample, :libgsl), Cint,
        (Ptr{gsl_histogram2d_pdf}, Cdouble, Cdouble, Ptr{Cdouble},
        Ptr{Cdouble}), p, r1, r2, x, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x) ,unsafe_ref(y)
end
