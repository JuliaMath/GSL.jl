#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 22.10 The histogram probability distribution struct #
#######################################################
export gsl_histogram_pdf, histogram_pdf_alloc, histogram_pdf_init,
       histogram_pdf_free, histogram_pdf_sample




type gsl_histogram_pdf
    n::Csize_t
    range::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


# This function allocates memory for a probability distribution with n bins and
# returns a pointer to a newly initialized gsl_histogram_pdf struct. If
# insufficient memory is available a null pointer is returned and the error
# handler is invoked with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_histogram_pdf}
function histogram_pdf_alloc(n::Integer)
    output_ptr = ccall( (:gsl_histogram_pdf_alloc, libgsl),
        Ptr{gsl_histogram_pdf}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number histogram_pdf_alloc


# This function initializes the probability distribution p with the contents of
# the histogram h. If any of the bins of h are negative then the error handler
# is invoked with an error code of GSL_EDOM because a probability distribution
# cannot contain negative values.
#
#   Returns: Cint
function histogram_pdf_init(p::Ref{gsl_histogram_pdf}, h::Ref{gsl_histogram})
    errno = ccall( (:gsl_histogram_pdf_init, libgsl), Cint,
        (Ref{gsl_histogram_pdf}, Ref{gsl_histogram}), p, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function frees the probability distribution function p and all of the
# memory associated with it.
#
#   Returns: Void
function histogram_pdf_free(p::Ref{gsl_histogram_pdf})
    ccall( (:gsl_histogram_pdf_free, libgsl), Void,
        (Ref{gsl_histogram_pdf}, ), p )
end


# This function uses r, a uniform random number between zero and one, to
# compute a single random sample from the probability distribution p.  The
# algorithm used to compute the sample s is given by the following formula,
# s = range[i] + delta * (range[i+1] - range[i])  where i is the index which
# satisfies  sum[i] <=  r < sum[i+1] and delta is  (r - sum[i])/(sum[i+1] -
# sum[i]).
#
#   Returns: Cdouble
function histogram_pdf_sample(p::Ref{gsl_histogram_pdf}, r::Real)
    ccall( (:gsl_histogram_pdf_sample, libgsl), Cdouble,
        (Ref{gsl_histogram_pdf}, Cdouble), p, r )
end
