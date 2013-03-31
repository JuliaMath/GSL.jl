#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 37.2 Linear regression #
##########################
export gsl_fit_linear, gsl_fit_wlinear, gsl_fit_linear_est


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
function gsl_fit_linear{gsl_int<:Integer}(x::Ptr{Cdouble}, xstride::gsl_int, y::Ptr{Cdouble}, ystride::gsl_int, n::gsl_int)
    c0 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    c1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov00 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov01 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov11 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    sumsq = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_linear, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, xstride, y,
        ystride, n, c0, c1, cov00, cov01, cov11, sumsq )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c0) ,unsafe_ref(c1) ,unsafe_ref(cov00) ,unsafe_ref(cov01) ,unsafe_ref(cov11) ,unsafe_ref(sumsq)
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
function gsl_fit_wlinear{gsl_int<:Integer}(x::Ptr{Cdouble}, xstride::gsl_int, w::Ptr{Cdouble}, wstride::gsl_int, y::Ptr{Cdouble}, ystride::gsl_int, n::gsl_int)
    c0 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    c1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov00 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov01 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cov11 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    chisq = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_wlinear, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Ptr{Cdouble}, Csize_t, Csize_t,
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}), x, xstride, w, wstride, y, ystride, n, c0, c1, cov00,
        cov01, cov11, chisq )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c0) ,unsafe_ref(c1) ,unsafe_ref(cov00) ,unsafe_ref(cov01) ,unsafe_ref(cov11) ,unsafe_ref(chisq)
end


# This function uses the best-fit linear regression coefficients c0, c1 and
# their covariance cov00, cov01, cov11 to compute the fitted function y and its
# standard deviation y_err for the model Y = c_0 + c_1 X at the point x.
# 
#   Returns: Cint
function gsl_fit_linear_est(x::Cdouble, c0::Cdouble, c1::Cdouble, cov00::Cdouble, cov01::Cdouble, cov11::Cdouble)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y_err = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_fit_linear_est, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Cdouble},
        Ptr{Cdouble}), x, c0, c1, cov00, cov01, cov11, y, y_err )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(y) ,unsafe_ref(y_err)
end
