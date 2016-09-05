#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 37.4 Multi-parameter fitting #
################################
export multifit_linear_alloc, multifit_linear_free, multifit_linear,
       multifit_wlinear, multifit_linear_svd, multifit_wlinear_svd,
       multifit_linear_usvd, multifit_wlinear_usvd, multifit_linear_est,
       multifit_linear_residuals

# This function allocates a workspace for fitting a model to n observations
# using p parameters.
#
#   Returns: Ptr{gsl_multifit_linear_workspace}
function multifit_linear_alloc(n::Integer, p::Integer)
    output_ptr = ccall( (:gsl_multifit_linear_alloc, libgsl),
        Ptr{gsl_multifit_linear_workspace}, (Csize_t, Csize_t), n, p )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number multifit_linear_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function multifit_linear_free(work::Ref{gsl_multifit_linear_workspace})
    ccall( (:gsl_multifit_linear_free, libgsl), Void,
        (Ref{gsl_multifit_linear_workspace}, ), work )
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
function multifit_linear(X::Ref{gsl_matrix}, y::Ref{gsl_vector})
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_linear, libgsl), Cint, (Ref{gsl_matrix},
        Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{gsl_multifit_linear_workspace}), X, y, c, cov, chisq, work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c[], cov[], chisq[], work[]
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
function multifit_wlinear(X::Ref{gsl_matrix}, w::Ref{gsl_vector}, y::Ref{gsl_vector})
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_wlinear, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector},
        Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X,
        w, y, c, cov, chisq, work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c[], cov[], chisq[], work[]
end


# In these functions components of the fit are discarded if the ratio of
# singular values s_i/s_0 falls below the user-specified tolerance tol, and the
# effective rank is returned in rank.
#
#   Returns: Cint
function multifit_linear_svd(X::Ref{gsl_matrix}, y::Ref{gsl_vector}, tol::Real)
    rank = Ref{Csize_t}()
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_linear_svd, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{Csize_t},
        Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{gsl_multifit_linear_workspace}), X, y, tol, rank, c, cov, chisq,
        work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return rank[], c[], cov[], chisq[], work[]
end


# In these functions components of the fit are discarded if the ratio of
# singular values s_i/s_0 falls below the user-specified tolerance tol, and the
# effective rank is returned in rank.
#
#   Returns: Cint
function multifit_wlinear_svd(X::Ref{gsl_matrix}, w::Ref{gsl_vector}, y::Ref{gsl_vector}, tol::Real)
    rank = Ref{Csize_t}()
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_wlinear_svd, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble,
        Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq,
        work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return rank[], c[], cov[], chisq[], work[]
end


# These functions compute the fit using an SVD without column scaling.
#
#   Returns: Cint
function multifit_linear_usvd(X::Ref{gsl_matrix}, y::Ref{gsl_vector}, tol::Real)
    rank = Ref{Csize_t}()
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_linear_usvd, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{Csize_t},
        Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{gsl_multifit_linear_workspace}), X, y, tol, rank, c, cov, chisq,
        work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return rank[], c[], cov[], chisq[], work[]
end


# These functions compute the fit using an SVD without column scaling.
#
#   Returns: Cint
function multifit_wlinear_usvd(X::Ref{gsl_matrix}, w::Ref{gsl_vector}, y::Ref{gsl_vector}, tol::Real)
    rank = Ref{Csize_t}()
    c = Ref{gsl_vector}()
    cov = Ref{gsl_matrix}()
    chisq = Ref{Cdouble}()
    work = Ref{gsl_multifit_linear_workspace}()
    errno = ccall( (:gsl_multifit_wlinear_usvd, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble,
        Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq,
        work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return rank[], c[], cov[], chisq[], work[]
end


# This function uses the best-fit multilinear regression coefficients c and
# their covariance matrix cov to compute the fitted function value y and its
# standard deviation y_err for the model y = x.c at the point x.
#
#   Returns: Cint
function multifit_linear_est(x::Ref{gsl_vector}, c::Ref{gsl_vector}, cov::Ref{gsl_matrix})
    y = Ref{Cdouble}()
    y_err = Ref{Cdouble}()
    errno = ccall( (:gsl_multifit_linear_est, libgsl), Cint,
        (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble},
        Ref{Cdouble}), x, c, cov, y, y_err )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return y[], y_err[]
end


# This function computes the vector of residuals r = y - X c for the
# observations y, coefficients c and matrix of predictor variables X.
#
#   Returns: Cint
function multifit_linear_residuals(X::Ref{gsl_matrix}, y::Ref{gsl_vector}, c::Ref{gsl_vector})
    r = Ref{gsl_vector}()
    errno = ccall( (:gsl_multifit_linear_residuals, libgsl), Cint,
        (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}),
        X, y, c, r )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return r[]
end
