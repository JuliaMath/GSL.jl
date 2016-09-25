#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 37.2 Linear regression #
##########################
export fit_linear, fit_wlinear, fit_linear_est


# This function computes the best-fit linear regression coefficients (c0,c1) of
# the model Y = c_0 + c_1 X for the dataset (x, y), two vectors of length n
# with strides xstride and ystride.  The errors on y are assumed unknown so the
# variance-covariance matrix for the parameters (c0, c1) is estimated from the
# scatter of the points around the best-fit line and returned via the
# parameters (cov00, cov01, cov11).  The sum of squares of the residuals from
# the best-fit line is returned in sumsq.  Note: the correlation coefficient of
# the data can be computed using gsl_stats_correlation (see Correlation), it
# does not depend on the fit.
# 
#   Returns: Cint
function fit_linear{tA<:Real, tB<:Real}(x_in::AbstractVector{tA}, xstride::Integer, y_in::AbstractVector{tB}, ystride::Integer)
    n = length(x_in)
    x = convert(Vector{Cdouble}, x_in)
    y = convert(Vector{Cdouble}, y_in)
    c0 = Ref{Cdouble}()
    c1 = Ref{Cdouble}()
    cov00 = Ref{Cdouble}()
    cov01 = Ref{Cdouble}()
    cov11 = Ref{Cdouble}()
    sumsq = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_linear, libgsl), Cint, (Ref{Cdouble},
        Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble},
        Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, y,
        ystride, n, c0, c1, cov00, cov01, cov11, sumsq )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c0[], c1[], cov00[], cov01[], cov11[], sumsq[]
end


# This function computes the best-fit linear regression coefficients (c0,c1) of
# the model Y = c_0 + c_1 X for the weighted dataset (x, y), two vectors of
# length n with strides xstride and ystride.  The vector w, of length n and
# stride wstride, specifies the weight of each datapoint. The weight is the
# reciprocal of the variance for each datapoint in y.          The covariance
# matrix for the parameters (c0, c1) is computed using the weights and returned
# via the parameters (cov00, cov01, cov11).  The weighted sum of squares of the
# residuals from the best-fit line, \chi^2, is returned in chisq.
# 
#   Returns: Cint
function fit_wlinear{tA<:Real, tB<:Real, tC<:Real}(x_in::AbstractVector{tA}, xstride::Integer, w_in::AbstractVector{tB}, wstride::Integer, y_in::AbstractVector{tC}, ystride::Integer)
    n = length(x_in)
    x = convert(Vector{Cdouble}, x_in)
    w = convert(Vector{Cdouble}, w_in)
    y = convert(Vector{Cdouble}, y_in)
    c0 = Ref{Cdouble}()
    c1 = Ref{Cdouble}()
    cov00 = Ref{Cdouble}()
    cov01 = Ref{Cdouble}()
    cov11 = Ref{Cdouble}()
    chisq = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_wlinear, libgsl), Cint, (Ref{Cdouble},
        Csize_t, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t,
        Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble},
        Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c0, c1, cov00,
        cov01, cov11, chisq )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c0[], c1[], cov00[], cov01[], cov11[], chisq[]
end


# This function uses the best-fit linear regression coefficients c0, c1 and
# their covariance cov00, cov01, cov11 to compute the fitted function y and its
# standard deviation y_err for the model Y = c_0 + c_1 X at the point x.
# 
#   Returns: Cint
function fit_linear_est(x::Real, c0::Real, c1::Real, cov00::Real, cov01::Real, cov11::Real)
    y = Ref{Cdouble}()
    y_err = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_linear_est, libgsl), Cint, (Cdouble, Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c0,
        c1, cov00, cov01, cov11, y, y_err )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return y[], y_err[]
end
