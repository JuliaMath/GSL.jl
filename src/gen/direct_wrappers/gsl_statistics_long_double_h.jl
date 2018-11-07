#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_long_double.h #############################################


@doc md"""
    stats_long_double_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_mean (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_mean(data, stride, n)
    ccall((:gsl_stats_long_double_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_variance (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_variance(data, stride, n)
    ccall((:gsl_stats_long_double_variance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_sd (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_sd(data, stride, n)
    ccall((:gsl_stats_long_double_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_variance_with_fixed_mean (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_long_double_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_sd_with_fixed_mean (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_long_double_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_tss (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_tss(data, stride, n)
    ccall((:gsl_stats_long_double_tss, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_tss_m (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_long_double_tss_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_absdev (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_absdev(data, stride, n)
    ccall((:gsl_stats_long_double_absdev, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_skew (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_skew(data, stride, n)
    ccall((:gsl_stats_long_double_skew, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_kurtosis (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_kurtosis(data, stride, n)
    ccall((:gsl_stats_long_double_kurtosis, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_lag1_autocorrelation (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_long_double_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_long_double_covariance (const long double data1[], const size_t stride1,const long double data2[], const size_t stride2, const size_t n)`
"""
function stats_long_double_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_long_double_covariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_long_double_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_long_double_correlation (const long double data1[], const size_t stride1,const long double data2[], const size_t stride2, const size_t n)`
"""
function stats_long_double_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_long_double_correlation, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_long_double_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_long_double_spearman (const long double data1[], const size_t stride1, const long double data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_long_double_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_long_double_spearman, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_long_double_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_variance_m (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_long_double_variance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_sd_m (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_long_double_sd_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_absdev_m (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_long_double_absdev_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_long_double_skew_m_sd (const long double data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_long_double_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_long_double_skew_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_long_double_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_long_double_kurtosis_m_sd (const long double data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_long_double_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_long_double_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_long_double_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_lag1_autocorrelation_m (const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_long_double_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_double_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_long_double_covariance_m (const long double data1[], const size_t stride1,const long double data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_long_double_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_long_double_covariance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_long_double_wmean(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wmean (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wmean(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wmean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wvariance(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wvariance (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wvariance(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wvariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wsd(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wsd (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wsd(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wsd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_wvariance_with_fixed_mean (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_long_double_wvariance_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_long_double_wsd_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_double_wsd_with_fixed_mean (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_double_wsd_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_long_double_wsd_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_long_double_wtss(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wtss (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wtss(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wtss, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wtss_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_long_double_wtss_m (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_long_double_wtss_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_long_double_wtss_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_long_double_wabsdev(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wabsdev (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wabsdev(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wabsdev, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wskew(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wskew (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wskew(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wskew, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wkurtosis(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_wkurtosis (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_wkurtosis(w, wstride, data, stride, n)
    ccall((:gsl_stats_long_double_wkurtosis, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_long_double_wvariance_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_long_double_wvariance_m (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_long_double_wvariance_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_long_double_wvariance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_long_double_wsd_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_long_double_wsd_m (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_long_double_wsd_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_long_double_wsd_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_long_double_wabsdev_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_long_double_wabsdev_m (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_long_double_wabsdev_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_long_double_wabsdev_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_long_double_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_long_double_wskew_m_sd (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean, const double wsd)`
"""
function stats_long_double_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_long_double_wskew_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_long_double_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_long_double_wkurtosis_m_sd (const long double w[], const size_t wstride, const long double data[], const size_t stride, const size_t n, const double wmean, const double wsd)`
"""
function stats_long_double_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_long_double_wkurtosis_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_long_double_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_long_double_pvariance (const long double data1[], const size_t stride1, const size_t n1, const long double data2[], const size_t stride2, const size_t n2)`
"""
function stats_long_double_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_long_double_pvariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_long_double_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_long_double_ttest (const long double data1[], const size_t stride1, const size_t n1, const long double data2[], const size_t stride2, const size_t n2)`
"""
function stats_long_double_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_long_double_ttest, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_long_double_max(data, stride, n) -> Cdouble

C signature:
`long double gsl_stats_long_double_max (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_max(data, stride, n)
    ccall((:gsl_stats_long_double_max, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_min(data, stride, n) -> Cdouble

C signature:
`long double gsl_stats_long_double_min (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_min(data, stride, n)
    ccall((:gsl_stats_long_double_min, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_long_double_minmax (long double * min, long double * max, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_long_double_minmax, libgsl), Cvoid, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_long_double_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_long_double_max_index (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_max_index(data, stride, n)
    ccall((:gsl_stats_long_double_max_index, libgsl), Csize_t, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_long_double_min_index (const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_min_index(data, stride, n)
    ccall((:gsl_stats_long_double_min_index, libgsl), Csize_t, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_double_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_long_double_minmax_index (size_t * min_index, size_t * max_index, const long double data[], const size_t stride, const size_t n)`
"""
function stats_long_double_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_long_double_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_long_double_select(data, stride, n, k) -> Cdouble

C signature:
`long double gsl_stats_long_double_select(long double data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_long_double_select(data, stride, n, k)
    ccall((:gsl_stats_long_double_select, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_long_double_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_median_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_double_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_long_double_median_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_double_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_median (long double sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_double_median(sorted_data, stride, n)
    ccall((:gsl_stats_long_double_median, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_double_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_long_double_quantile_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_long_double_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_long_double_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_long_double_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_trmean_from_sorted_data (const double trim, const long double sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_double_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_long_double_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cdouble}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_long_double_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_double_gastwirth_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_double_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_long_double_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_double_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_double_mad0(const long double data[], const size_t stride, const size_t n, double work[])`
"""
function stats_long_double_mad0(data, stride, n, work)
    ccall((:gsl_stats_long_double_mad0, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_long_double_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_double_mad(const long double data[], const size_t stride, const size_t n, double work[])`
"""
function stats_long_double_mad(data, stride, n, work)
    ccall((:gsl_stats_long_double_mad, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_long_double_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`long double gsl_stats_long_double_Sn0_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n, long double work[])`
"""
function stats_long_double_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_long_double_Sn0_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), sorted_data, stride, n, work)
end

@doc md"""
    stats_long_double_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_double_Sn_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n, long double work[])`
"""
function stats_long_double_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_long_double_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), sorted_data, stride, n, work)
end

@doc md"""
    stats_long_double_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`long double gsl_stats_long_double_Qn0_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n, long double work[], int work_int[])`
"""
function stats_long_double_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_long_double_Qn0_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_long_double_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_long_double_Qn_from_sorted_data (const long double sorted_data[], const size_t stride, const size_t n, long double work[], int work_int[])`
"""
function stats_long_double_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_long_double_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

