#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 37.4 Multi-parameter fitting #
################################
export gsl_multifit_linear_alloc, gsl_multifit_linear_free,
       gsl_multifit_linear, gsl_multifit_wlinear, gsl_multifit_linear_svd,
       gsl_multifit_wlinear_svd, gsl_multifit_linear_usvd,
       gsl_multifit_wlinear_usvd, gsl_multifit_linear_est,
       gsl_multifit_linear_residuals








# This function allocates a workspace for fitting a model to n observations
# using p parameters.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_multifit_linear_alloc (n::Csize_t, p::Csize_t)
    ccall( (:gsl_multifit_linear_alloc, "libgsl"), Ptr{Void}, (Csize_t,
        Csize_t), n, p )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_linear_free (work::Ptr{Void})
    ccall( (:gsl_multifit_linear_free, "libgsl"), Void, (Ptr{Void}, ), work
        )
end


# This function computes the best-fit parameters c of the model y = X c for the
# observations y and the matrix of predictor variables X, using the
# preallocated workspace provided in work.  The variance-covariance matrix of
# the model parameters cov is estimated from the scatter of the observations
# about the best-fit.  The sum of squares of the residuals from the best-fit,
# \chi^2, is returned in chisq. If the coefficient of determination is desired,
# it can be computed from the expression R^2 = 1 - \chi^2 / TSS, where the
# total sum of squares (TSS) of the observations y may be computed from
# gsl_stats_tss.          The best-fit is found by singular value decomposition
# of the matrix X using the modified Golub-Reinsch SVD algorithm, with column
# scaling to improve the accuracy of the singular values. Any components which
# have zero singular value (to machine precision) are discarded from the fit.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_linear (X::Ptr{gsl_matrix}, y::Ptr{gsl_vector}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_linear, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{Cdouble},
        Ptr{Void}), X, y, c, cov, chisq, work )
end


# This function computes the best-fit parameters c of the weighted model y = X
# c for the observations y with weights w and the matrix of predictor variables
# X, using the preallocated workspace provided in work.  The covariance matrix
# of the model parameters cov is computed with the given weights.  The weighted
# sum of squares of the residuals from the best-fit, \chi^2, is returned in
# chisq. If the coefficient of determination is desired, it can be computed
# from the expression R^2 = 1 - \chi^2 / WTSS, where the weighted total sum of
# squares (WTSS) of the observations y may be computed from gsl_stats_wtss.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_wlinear (X::Ptr{gsl_matrix}, w::Ptr{gsl_vector}, y::Ptr{gsl_vector}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_wlinear, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix},
        Ptr{Cdouble}, Ptr{Void}), X, w, y, c, cov, chisq, work )
end


# In these functions components of the fit are discarded if the ratio of
# singular values s_i/s_0 falls below the user-specified tolerance tol, and the
# effective rank is returned in rank.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_linear_svd (X::Ptr{gsl_matrix}, y::Ptr{gsl_vector}, tol::Cdouble, rank::Ptr{Csize_t}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_linear_svd, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Cdouble, Ptr{Csize_t}, Ptr{gsl_vector},
        Ptr{gsl_matrix}, Ptr{Cdouble}, Ptr{Void}), X, y, tol, rank, c, cov,
        chisq, work )
end


# In these functions components of the fit are discarded if the ratio of
# singular values s_i/s_0 falls below the user-specified tolerance tol, and the
# effective rank is returned in rank.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_wlinear_svd (X::Ptr{gsl_matrix}, w::Ptr{gsl_vector}, y::Ptr{gsl_vector}, tol::Cdouble, rank::Ptr{Csize_t}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_wlinear_svd, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_vector}, Cdouble, Ptr{Csize_t},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{Cdouble}, Ptr{Void}), X, w, y,
        tol, rank, c, cov, chisq, work )
end


# These functions compute the fit using an SVD without column scaling.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_linear_usvd (X::Ptr{gsl_matrix}, y::Ptr{gsl_vector}, tol::Cdouble, rank::Ptr{Csize_t}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_linear_usvd, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Cdouble, Ptr{Csize_t}, Ptr{gsl_vector},
        Ptr{gsl_matrix}, Ptr{Cdouble}, Ptr{Void}), X, y, tol, rank, c, cov,
        chisq, work )
end


# These functions compute the fit using an SVD without column scaling.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_multifit_linear_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_multifit_wlinear_usvd (X::Ptr{gsl_matrix}, w::Ptr{gsl_vector}, y::Ptr{gsl_vector}, tol::Cdouble, rank::Ptr{Csize_t}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, chisq::Ptr{Cdouble}, work::Ptr{Void})
    ccall( (:gsl_multifit_wlinear_usvd, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_vector}, Cdouble, Ptr{Csize_t},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{Cdouble}, Ptr{Void}), X, w, y,
        tol, rank, c, cov, chisq, work )
end


# This function uses the best-fit multilinear regression coefficients c and
# their covariance matrix cov to compute the fitted function value y and its
# standard deviation y_err for the model y = x.c at the point x.
# 
#   Returns: Cint
function gsl_multifit_linear_est (x::Ptr{gsl_vector}, c::Ptr{gsl_vector}, cov::Ptr{gsl_matrix}, y::Ptr{Cdouble}, y_err::Ptr{Cdouble})
    ccall( (:gsl_multifit_linear_est, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{Cdouble}, Ptr{Cdouble}), x, c,
        cov, y, y_err )
end


# This function computes the vector of residuals r = y - X c for the
# observations y, coefficients c and matrix of predictor variables X.
# 
#   Returns: Cint
function gsl_multifit_linear_residuals (X::Ptr{gsl_matrix}, y::Ptr{gsl_vector}, c::Ptr{gsl_vector}, r::Ptr{gsl_vector})
    ccall( (:gsl_multifit_linear_residuals, "libgsl"), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        X, y, c, r )
end
