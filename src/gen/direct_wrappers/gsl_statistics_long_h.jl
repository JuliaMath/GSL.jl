#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_long.h ####################################################


@doc md"""
    stats_long_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_mean (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_mean(data, stride, n)
    ccall((:gsl_stats_long_mean, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_variance (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_variance(data, stride, n)
    ccall((:gsl_stats_long_variance, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_sd (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_sd(data, stride, n)
    ccall((:gsl_stats_long_sd, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_variance_with_fixed_mean (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_long_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_sd_with_fixed_mean (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_long_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_tss (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_tss(data, stride, n)
    ccall((:gsl_stats_long_tss, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_tss_m (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_long_tss_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_absdev (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_absdev(data, stride, n)
    ccall((:gsl_stats_long_absdev, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_skew (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_skew(data, stride, n)
    ccall((:gsl_stats_long_skew, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_kurtosis (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_kurtosis(data, stride, n)
    ccall((:gsl_stats_long_kurtosis, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_lag1_autocorrelation (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_long_lag1_autocorrelation, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_long_covariance (const long data1[], const size_t stride1,const long data2[], const size_t stride2, const size_t n)`
"""
function stats_long_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_long_covariance, libgsl), Cdouble, (Ref{Clong}, Csize_t, Ref{Clong}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_long_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_long_correlation (const long data1[], const size_t stride1,const long data2[], const size_t stride2, const size_t n)`
"""
function stats_long_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_long_correlation, libgsl), Cdouble, (Ref{Clong}, Csize_t, Ref{Clong}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_long_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_long_spearman (const long data1[], const size_t stride1, const long data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_long_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_long_spearman, libgsl), Cdouble, (Ref{Clong}, Csize_t, Ref{Clong}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_long_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_variance_m (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_long_variance_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_sd_m (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_long_sd_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_absdev_m (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_long_absdev_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_long_skew_m_sd (const long data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_long_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_long_skew_m_sd, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_long_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_long_kurtosis_m_sd (const long data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_long_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_long_kurtosis_m_sd, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_long_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_long_lag1_autocorrelation_m (const long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_long_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_long_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_long_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_long_covariance_m (const long data1[], const size_t stride1,const long data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_long_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_long_covariance_m, libgsl), Cdouble, (Ref{Clong}, Csize_t, Ref{Clong}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_long_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_long_pvariance (const long data1[], const size_t stride1, const size_t n1, const long data2[], const size_t stride2, const size_t n2)`
"""
function stats_long_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_long_pvariance, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_long_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_long_ttest (const long data1[], const size_t stride1, const size_t n1, const long data2[], const size_t stride2, const size_t n2)`
"""
function stats_long_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_long_ttest, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_long_max(data, stride, n) -> Clong

C signature:
`long gsl_stats_long_max (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_max(data, stride, n)
    ccall((:gsl_stats_long_max, libgsl), Clong, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_min(data, stride, n) -> Clong

C signature:
`long gsl_stats_long_min (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_min(data, stride, n)
    ccall((:gsl_stats_long_min, libgsl), Clong, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_long_minmax (long * min, long * max, const long data[], const size_t stride, const size_t n)`
"""
function stats_long_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_long_minmax, libgsl), Cvoid, (Ref{Clong}, Ref{Clong}, Ref{Clong}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_long_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_long_max_index (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_max_index(data, stride, n)
    ccall((:gsl_stats_long_max_index, libgsl), Csize_t, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_long_min_index (const long data[], const size_t stride, const size_t n)`
"""
function stats_long_min_index(data, stride, n)
    ccall((:gsl_stats_long_min_index, libgsl), Csize_t, (Ref{Clong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_long_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_long_minmax_index (size_t * min_index, size_t * max_index, const long data[], const size_t stride, const size_t n)`
"""
function stats_long_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_long_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Clong}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_long_select(data, stride, n, k) -> Clong

C signature:
`long gsl_stats_long_select(long data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_long_select(data, stride, n, k)
    ccall((:gsl_stats_long_select, libgsl), Clong, (Ref{Clong}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_long_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_median_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_long_median_from_sorted_data, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_median (long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_median(sorted_data, stride, n)
    ccall((:gsl_stats_long_median, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_long_quantile_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_long_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_long_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_long_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_trmean_from_sorted_data (const double trim, const long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_long_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Clong}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_long_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_long_gastwirth_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_long_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_long_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_long_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_mad0(const long data[], const size_t stride, const size_t n, double work[])`
"""
function stats_long_mad0(data, stride, n, work)
    ccall((:gsl_stats_long_mad0, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_long_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_mad(const long data[], const size_t stride, const size_t n, double work[])`
"""
function stats_long_mad(data, stride, n, work)
    ccall((:gsl_stats_long_mad, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_long_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Clong

C signature:
`long gsl_stats_long_Sn0_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n, long work[])`
"""
function stats_long_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_long_Sn0_from_sorted_data, libgsl), Clong, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}), sorted_data, stride, n, work)
end

@doc md"""
    stats_long_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_long_Sn_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n, long work[])`
"""
function stats_long_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_long_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}), sorted_data, stride, n, work)
end

@doc md"""
    stats_long_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Clong

C signature:
`long gsl_stats_long_Qn0_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n, long work[], int work_int[])`
"""
function stats_long_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_long_Qn0_from_sorted_data, libgsl), Clong, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_long_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_long_Qn_from_sorted_data (const long sorted_data[], const size_t stride, const size_t n, long work[], int work_int[])`
"""
function stats_long_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_long_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Clong}, Csize_t, Csize_t, Ref{Clong}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

