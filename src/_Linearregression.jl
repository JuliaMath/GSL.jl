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
function gsl_fit_linear (x::Ptr{Cdouble}, xstride::Csize_t, y::Ptr{Cdouble}, ystride::Csize_t, n::Csize_t, c0::Ptr{Cdouble}, c1::Ptr{Cdouble}, cov00::Ptr{Cdouble}, cov01::Ptr{Cdouble}, cov11::Ptr{Cdouble}, sumsq::Ptr{Cdouble})
    ccall( (:gsl_fit_linear, "libgsl"), Cint, (Ptr{Cdouble}, Csize_t,
        Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, xstride, y,
        ystride, n, c0, c1, cov00, cov01, cov11, sumsq )
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
function gsl_fit_wlinear (x::Ptr{Cdouble}, xstride::Csize_t, w::Ptr{Cdouble}, wstride::Csize_t, y::Ptr{Cdouble}, ystride::Csize_t, n::Csize_t, c0::Ptr{Cdouble}, c1::Ptr{Cdouble}, cov00::Ptr{Cdouble}, cov01::Ptr{Cdouble}, cov11::Ptr{Cdouble}, chisq::Ptr{Cdouble})
    ccall( (:gsl_fit_wlinear, "libgsl"), Cint, (Ptr{Cdouble}, Csize_t,
        Ptr{Cdouble}, Csize_t, Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Cdouble},
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}),
        x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11,
        chisq )
end


# This function uses the best-fit linear regression coefficients c0, c1 and
# their covariance cov00, cov01, cov11 to compute the fitted function y and its
# standard deviation y_err for the model Y = c_0 + c_1 X at the point x.
# 
#   Returns: Cint
function gsl_fit_linear_est (x::Cdouble, c0::Cdouble, c1::Cdouble, cov00::Cdouble, cov01::Cdouble, cov11::Cdouble, y::Ptr{Cdouble}, y_err::Ptr{Cdouble})
    ccall( (:gsl_fit_linear_est, "libgsl"), Cint, (Cdouble, Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), x, c0,
        c1, cov00, cov01, cov11, y, y_err )
end
