#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_float.h ###################################################


@doc md"""
    stats_float_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_mean (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_mean(data, stride, n)
    ccall((:gsl_stats_float_mean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_variance (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_variance(data, stride, n)
    ccall((:gsl_stats_float_variance, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_sd (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_sd(data, stride, n)
    ccall((:gsl_stats_float_sd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_variance_with_fixed_mean (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_float_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_sd_with_fixed_mean (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_float_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_tss (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_tss(data, stride, n)
    ccall((:gsl_stats_float_tss, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_tss_m (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_float_tss_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_absdev (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_absdev(data, stride, n)
    ccall((:gsl_stats_float_absdev, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_skew (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_skew(data, stride, n)
    ccall((:gsl_stats_float_skew, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_kurtosis (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_kurtosis(data, stride, n)
    ccall((:gsl_stats_float_kurtosis, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_lag1_autocorrelation (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_float_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_float_covariance (const float data1[], const size_t stride1,const float data2[], const size_t stride2, const size_t n)`
"""
function stats_float_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_float_covariance, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_float_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_float_correlation (const float data1[], const size_t stride1,const float data2[], const size_t stride2, const size_t n)`
"""
function stats_float_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_float_correlation, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_float_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_float_spearman (const float data1[], const size_t stride1, const float data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_float_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_float_spearman, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_float_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_variance_m (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_float_variance_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_sd_m (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_float_sd_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_absdev_m (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_float_absdev_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_float_skew_m_sd (const float data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_float_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_float_skew_m_sd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_float_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_float_kurtosis_m_sd (const float data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_float_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_float_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_float_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_lag1_autocorrelation_m (const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_float_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_float_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_float_covariance_m (const float data1[], const size_t stride1,const float data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_float_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_float_covariance_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_float_wmean(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wmean (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wmean(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wmean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wvariance(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wvariance (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wvariance(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wvariance, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wsd(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wsd (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wsd(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wsd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_wvariance_with_fixed_mean (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_float_wvariance_with_fixed_mean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_float_wsd_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_float_wsd_with_fixed_mean (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_float_wsd_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_float_wsd_with_fixed_mean, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_float_wtss(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wtss (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wtss(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wtss, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wtss_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_float_wtss_m (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_float_wtss_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_float_wtss_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_float_wabsdev(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wabsdev (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wabsdev(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wabsdev, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wskew(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wskew (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wskew(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wskew, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wkurtosis(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_wkurtosis (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_wkurtosis(w, wstride, data, stride, n)
    ccall((:gsl_stats_float_wkurtosis, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_float_wvariance_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_float_wvariance_m (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_float_wvariance_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_float_wvariance_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_float_wsd_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_float_wsd_m (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_float_wsd_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_float_wsd_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_float_wabsdev_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_float_wabsdev_m (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_float_wabsdev_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_float_wabsdev_m, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_float_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_float_wskew_m_sd (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean, const double wsd)`
"""
function stats_float_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_float_wskew_m_sd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_float_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_float_wkurtosis_m_sd (const float w[], const size_t wstride, const float data[], const size_t stride, const size_t n, const double wmean, const double wsd)`
"""
function stats_float_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_float_wkurtosis_m_sd, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Ref{Cfloat}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_float_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_float_pvariance (const float data1[], const size_t stride1, const size_t n1, const float data2[], const size_t stride2, const size_t n2)`
"""
function stats_float_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_float_pvariance, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_float_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_float_ttest (const float data1[], const size_t stride1, const size_t n1, const float data2[], const size_t stride2, const size_t n2)`
"""
function stats_float_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_float_ttest, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_float_max(data, stride, n) -> Cfloat

C signature:
`float gsl_stats_float_max (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_max(data, stride, n)
    ccall((:gsl_stats_float_max, libgsl), Cfloat, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_min(data, stride, n) -> Cfloat

C signature:
`float gsl_stats_float_min (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_min(data, stride, n)
    ccall((:gsl_stats_float_min, libgsl), Cfloat, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_float_minmax (float * min, float * max, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_float_minmax, libgsl), Cvoid, (Ref{Cfloat}, Ref{Cfloat}, Ref{Cfloat}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_float_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_float_max_index (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_max_index(data, stride, n)
    ccall((:gsl_stats_float_max_index, libgsl), Csize_t, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_float_min_index (const float data[], const size_t stride, const size_t n)`
"""
function stats_float_min_index(data, stride, n)
    ccall((:gsl_stats_float_min_index, libgsl), Csize_t, (Ref{Cfloat}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_float_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_float_minmax_index (size_t * min_index, size_t * max_index, const float data[], const size_t stride, const size_t n)`
"""
function stats_float_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_float_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cfloat}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_float_select(data, stride, n, k) -> Cfloat

C signature:
`float gsl_stats_float_select(float data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_float_select(data, stride, n, k)
    ccall((:gsl_stats_float_select, libgsl), Cfloat, (Ref{Cfloat}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_float_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_median_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n)`
"""
function stats_float_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_float_median_from_sorted_data, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_float_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_median (float sorted_data[], const size_t stride, const size_t n)`
"""
function stats_float_median(sorted_data, stride, n)
    ccall((:gsl_stats_float_median, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_float_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_float_quantile_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_float_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_float_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_float_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_trmean_from_sorted_data (const double trim, const float sorted_data[], const size_t stride, const size_t n)`
"""
function stats_float_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_float_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cfloat}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_float_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_float_gastwirth_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n)`
"""
function stats_float_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_float_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_float_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_float_mad0(const float data[], const size_t stride, const size_t n, double work[])`
"""
function stats_float_mad0(data, stride, n, work)
    ccall((:gsl_stats_float_mad0, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_float_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_float_mad(const float data[], const size_t stride, const size_t n, double work[])`
"""
function stats_float_mad(data, stride, n, work)
    ccall((:gsl_stats_float_mad, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_float_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cfloat

C signature:
`float gsl_stats_float_Sn0_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n, float work[])`
"""
function stats_float_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_float_Sn0_from_sorted_data, libgsl), Cfloat, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}), sorted_data, stride, n, work)
end

@doc md"""
    stats_float_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_float_Sn_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n, float work[])`
"""
function stats_float_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_float_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}), sorted_data, stride, n, work)
end

@doc md"""
    stats_float_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cfloat

C signature:
`float gsl_stats_float_Qn0_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n, float work[], int work_int[])`
"""
function stats_float_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_float_Qn0_from_sorted_data, libgsl), Cfloat, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_float_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_float_Qn_from_sorted_data (const float sorted_data[], const size_t stride, const size_t n, float work[], int work_int[])`
"""
function stats_float_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_float_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

