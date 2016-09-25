#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 37.3 Linear fitting without a constant term #
###############################################
export fit_mul, fit_wmul, fit_mul_est


# This function computes the best-fit linear regression coefficient c1 of the
# model Y = c_1 X for the datasets (x, y), two vectors of length n with strides
# xstride and ystride.  The errors on y are assumed unknown so the variance of
# the parameter c1 is estimated from the scatter of the points around the best-
# fit line and returned via the parameter cov11.  The sum of squares of the
# residuals from the best-fit line is returned in sumsq.
# 
#   Returns: Cint
function fit_mul{tA<:Real, tB<:Real}(x_in::AbstractVector{tA}, xstride::Integer, y_in::AbstractVector{tB}, ystride::Integer)
    n = length(x_in)
    x = convert(Vector{Cdouble}, x_in)
    y = convert(Vector{Cdouble}, y_in)
    c1 = Ref{Cdouble}()
    cov11 = Ref{Cdouble}()
    sumsq = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_mul, libgsl), Cint, (Ref{Cdouble}, Csize_t,
        Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble},
        Ref{Cdouble}), x, xstride, y, ystride, n, c1, cov11, sumsq )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c1[], cov11[], sumsq[]
end


# This function computes the best-fit linear regression coefficient c1 of the
# model Y = c_1 X for the weighted datasets (x, y), two vectors of length n
# with strides xstride and ystride.  The vector w, of length n and stride
# wstride, specifies the weight of each datapoint. The weight is the reciprocal
# of the variance for each datapoint in y.          The variance of the
# parameter c1 is computed using the weights and returned via the parameter
# cov11.  The weighted sum of squares of the residuals from the best-fit line,
# \chi^2, is returned in chisq.
# 
#   Returns: Cint
function fit_wmul{tA<:Real, tB<:Real, tC<:Real}(x_in::AbstractVector{tA}, xstride::Integer, w_in::AbstractVector{tB}, wstride::Integer, y_in::AbstractVector{tC}, ystride::Integer)
    n = length(x_in)
    x = convert(Vector{Cdouble}, x_in)
    w = convert(Vector{Cdouble}, w_in)
    y = convert(Vector{Cdouble}, y_in)
    c1 = Ref{Cdouble}()
    cov11 = Ref{Cdouble}()
    sumsq = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_wmul, libgsl), Cint, (Ref{Cdouble}, Csize_t,
        Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble},
        Ref{Cdouble}, Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c1,
        cov11, sumsq )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c1[], cov11[], sumsq[]
end


# This function uses the best-fit linear regression coefficient c1 and its
# covariance cov11 to compute the fitted function y and its standard deviation
# y_err for the model Y = c_1 X at the point x.
# 
#   Returns: Cint
function fit_mul_est(x::Real, c1::Real, cov11::Real)
    y = Ref{Cdouble}()
    y_err = Ref{Cdouble}()
    errno = ccall( (:gsl_fit_mul_est, libgsl), Cint, (Cdouble, Cdouble,
        Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c1, cov11, y, y_err )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return y[], y_err[]
end
