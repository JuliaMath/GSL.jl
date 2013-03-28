#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 22.21 Resampling from 2D histograms #
#######################################
export gsl_histogram2d_pdf, gsl_histogram2d_pdf, gsl_histogram2d_pdf,
       gsl_histogram2d_pdf, gsl_histogram2d_pdf_alloc,
       gsl_histogram2d_pdf_init, gsl_histogram2d_pdf_free,
       gsl_histogram2d_pdf_sample


### Function uses unknown type; disabled
### # 
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_histogram2d_pdf ()
###     ccall( (:gsl_histogram2d_pdf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a two-dimensional probability distribution
# of size nx-by-ny and returns a pointer to a newly initialized
# gsl_histogram2d_pdf struct. If insufficient memory is available a null
# pointer is returned and the error handler is invoked with an error code of
# GSL_ENOMEM.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_histogram2d_pdf ()
###     ccall( (:gsl_histogram2d_pdf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a two-dimensional probability distribution
# of size nx-by-ny and returns a pointer to a newly initialized
# gsl_histogram2d_pdf struct. If insufficient memory is available a null
# pointer is returned and the error handler is invoked with an error code of
# GSL_ENOMEM.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_histogram2d_pdf ()
###     ccall( (:gsl_histogram2d_pdf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a two-dimensional probability distribution
# of size nx-by-ny and returns a pointer to a newly initialized
# gsl_histogram2d_pdf struct. If insufficient memory is available a null
# pointer is returned and the error handler is invoked with an error code of
# GSL_ENOMEM.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_histogram2d_pdf ()
###     ccall( (:gsl_histogram2d_pdf, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a two-dimensional probability distribution
# of size nx-by-ny and returns a pointer to a newly initialized
# gsl_histogram2d_pdf struct. If insufficient memory is available a null
# pointer is returned and the error handler is invoked with an error code of
# GSL_ENOMEM.
# 
### #   Returns: Ptr{gsl_histogram2d_pdf}
### #XXX Unknown output type Ptr{gsl_histogram2d_pdf}
### function gsl_histogram2d_pdf_alloc (nx::Csize_t, ny::Csize_t)
###     ccall( (:gsl_histogram2d_pdf_alloc, "libgsl"),
###         Ptr{gsl_histogram2d_pdf}, (Csize_t, Csize_t), nx, ny )
### end


### Function uses unknown type; disabled
### # This function initializes the two-dimensional probability distribution
# calculated p from the histogram h.  If any of the bins of h are negative then
# the error handler is invoked with an error code of GSL_EDOM because a
# probability distribution cannot contain negative values.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_histogram2d_pdf}
### #XXX Unknown input type h::Ptr{gsl_histogram2d}
### function gsl_histogram2d_pdf_init (p::Ptr{gsl_histogram2d_pdf}, h::Ptr{gsl_histogram2d})
###     ccall( (:gsl_histogram2d_pdf_init, "libgsl"), Cint,
###         (Ptr{gsl_histogram2d_pdf}, Ptr{gsl_histogram2d}), p, h )
### end


### Function uses unknown type; disabled
### # This function frees the two-dimensional probability distribution function p
# and all of the memory associated with it.
# 
### #   Returns: Void
### #XXX Unknown input type p::Ptr{gsl_histogram2d_pdf}
### function gsl_histogram2d_pdf_free (p::Ptr{gsl_histogram2d_pdf})
###     ccall( (:gsl_histogram2d_pdf_free, "libgsl"), Void,
###         (Ptr{gsl_histogram2d_pdf}, ), p )
### end


### Function uses unknown type; disabled
### # This function uses two uniform random numbers between zero and one, r1 and
# r2, to compute a single random sample from the two-dimensional probability
# distribution p.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_histogram2d_pdf}
### function gsl_histogram2d_pdf_sample (p::Ptr{gsl_histogram2d_pdf}, r1::Cdouble, r2::Cdouble, x::Ptr{Cdouble}, y::Ptr{Cdouble})
###     ccall( (:gsl_histogram2d_pdf_sample, "libgsl"), Cint,
###         (Ptr{gsl_histogram2d_pdf}, Cdouble, Cdouble, Ptr{Cdouble},
###         Ptr{Cdouble}), p, r1, r2, x, y )
### end