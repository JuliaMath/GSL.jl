#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 22.21 Resampling from 2D histograms #
#######################################
export gsl_histogram2d_pdf, histogram2d_pdf_alloc, histogram2d_pdf_init,
       histogram2d_pdf_free, histogram2d_pdf_sample




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
function histogram2d_pdf_alloc(nx::Integer, ny::Integer)
    output_ptr = ccall( (:gsl_histogram2d_pdf_alloc, libgsl),
        Ptr{gsl_histogram2d_pdf}, (Csize_t, Csize_t), nx, ny )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number histogram2d_pdf_alloc


# This function initializes the two-dimensional probability distribution
# calculated p from the histogram h.  If any of the bins of h are negative then
# the error handler is invoked with an error code of GSL_EDOM because a
# probability distribution cannot contain negative values.
#
#   Returns: Cint
function histogram2d_pdf_init(p::Ref{gsl_histogram2d_pdf}, h::Ref{gsl_histogram2d})
    errno = ccall( (:gsl_histogram2d_pdf_init, libgsl), Cint,
        (Ref{gsl_histogram2d_pdf}, Ref{gsl_histogram2d}), p, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function frees the two-dimensional probability distribution function p
# and all of the memory associated with it.
#
#   Returns: Void
function histogram2d_pdf_free(p::Ref{gsl_histogram2d_pdf})
    ccall( (:gsl_histogram2d_pdf_free, libgsl), Void,
        (Ref{gsl_histogram2d_pdf}, ), p )
end


# This function uses two uniform random numbers between zero and one, r1 and
# r2, to compute a single random sample from the two-dimensional probability
# distribution p.
#
#   Returns: Cint
function histogram2d_pdf_sample(p::Ref{gsl_histogram2d_pdf}, r1::Real, r2::Real)
    x = Ref{Cdouble}()
    y = Ref{Cdouble}()
    errno = ccall( (:gsl_histogram2d_pdf_sample, libgsl), Cint,
        (Ref{gsl_histogram2d_pdf}, Cdouble, Cdouble, Ref{Cdouble},
        Ref{Cdouble}), p, r1, r2, x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return x[], y[]
end
