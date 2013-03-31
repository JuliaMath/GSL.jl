#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 37.3 Linear fitting without a constant term #
###############################################
export gsl_fit_mul, gsl_fit_wmul, gsl_fit_mul_est


# This function computes the best-fit linear regression coefficient c1 of the
# model Y = c_1 X for the datasets (x, y), two vectors of length n with strides
# xstride and ystride.  The errors on y are assumed unknown so the variance of
# the parameter c1 is estimated from the scatter of the points around the best-
# fit line and returned via the parameter cov11.  The sum of squares of the
# residuals from the best-fit line is returned in sumsq.
# 
#   Returns: Cint
function gsl_fit_mul{gsl_int<:Integer}(x::Ptr{Cdouble}, xstride::gsl_int, y::Ptr{Cdouble}, ystride::gsl_int, n::gsl_int)
    c1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov11 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    sumsq = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_mul, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}), x, xstride, y, ystride, n, c1, cov11, sumsq )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c1) ,unsafe_ref(cov11) ,unsafe_ref(sumsq)
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
function gsl_fit_wmul{gsl_int<:Integer}(x::Ptr{Cdouble}, xstride::gsl_int, w::Ptr{Cdouble}, wstride::gsl_int, y::Ptr{Cdouble}, ystride::gsl_int, n::gsl_int)
    c1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov11 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    sumsq = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_wmul, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Ptr{Cdouble}, Csize_t, Csize_t,
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, xstride, w, wstride, y,
        ystride, n, c1, cov11, sumsq )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c1) ,unsafe_ref(cov11) ,unsafe_ref(sumsq)
end


# This function uses the best-fit linear regression coefficient c1 and its
# covariance cov11 to compute the fitted function y and its standard deviation
# y_err for the model Y = c_1 X at the point x.
# 
#   Returns: Cint
function gsl_fit_mul_est(x::Cdouble, c1::Cdouble, cov11::Cdouble)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y_err = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_mul_est, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), x, c1, cov11, y, y_err )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(y) ,unsafe_ref(y_err)
end
