#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_ulong.h ###################################################


@doc md"""
    stats_ulong_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_mean (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_mean(data, stride, n)
    ccall((:gsl_stats_ulong_mean, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_variance (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_variance(data, stride, n)
    ccall((:gsl_stats_ulong_variance, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_sd (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_sd(data, stride, n)
    ccall((:gsl_stats_ulong_sd, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_variance_with_fixed_mean (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_ulong_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_sd_with_fixed_mean (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_ulong_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_tss (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_tss(data, stride, n)
    ccall((:gsl_stats_ulong_tss, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_tss_m (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_ulong_tss_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_absdev (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_absdev(data, stride, n)
    ccall((:gsl_stats_ulong_absdev, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_skew (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_skew(data, stride, n)
    ccall((:gsl_stats_ulong_skew, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_kurtosis (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_kurtosis(data, stride, n)
    ccall((:gsl_stats_ulong_kurtosis, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_lag1_autocorrelation (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_ulong_lag1_autocorrelation, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_ulong_covariance (const unsigned long data1[], const size_t stride1,const unsigned long data2[], const size_t stride2, const size_t n)`
"""
function stats_ulong_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_ulong_covariance, libgsl), Cdouble, (Ref{Culong}, Csize_t, Ref{Culong}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_ulong_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_ulong_correlation (const unsigned long data1[], const size_t stride1,const unsigned long data2[], const size_t stride2, const size_t n)`
"""
function stats_ulong_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_ulong_correlation, libgsl), Cdouble, (Ref{Culong}, Csize_t, Ref{Culong}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_ulong_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_ulong_spearman (const unsigned long data1[], const size_t stride1, const unsigned long data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_ulong_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_ulong_spearman, libgsl), Cdouble, (Ref{Culong}, Csize_t, Ref{Culong}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_ulong_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_variance_m (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_ulong_variance_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_sd_m (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_ulong_sd_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_absdev_m (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_ulong_absdev_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_ulong_skew_m_sd (const unsigned long data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_ulong_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_ulong_skew_m_sd, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_ulong_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_ulong_kurtosis_m_sd (const unsigned long data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_ulong_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_ulong_kurtosis_m_sd, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_ulong_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ulong_lag1_autocorrelation_m (const unsigned long data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ulong_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_ulong_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ulong_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_ulong_covariance_m (const unsigned long data1[], const size_t stride1,const unsigned long data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_ulong_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_ulong_covariance_m, libgsl), Cdouble, (Ref{Culong}, Csize_t, Ref{Culong}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_ulong_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_ulong_pvariance (const unsigned long data1[], const size_t stride1, const size_t n1, const unsigned long data2[], const size_t stride2, const size_t n2)`
"""
function stats_ulong_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_ulong_pvariance, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_ulong_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_ulong_ttest (const unsigned long data1[], const size_t stride1, const size_t n1, const unsigned long data2[], const size_t stride2, const size_t n2)`
"""
function stats_ulong_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_ulong_ttest, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_ulong_max(data, stride, n) -> Culong

C signature:
`unsigned long gsl_stats_ulong_max (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_max(data, stride, n)
    ccall((:gsl_stats_ulong_max, libgsl), Culong, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_min(data, stride, n) -> Culong

C signature:
`unsigned long gsl_stats_ulong_min (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_min(data, stride, n)
    ccall((:gsl_stats_ulong_min, libgsl), Culong, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_ulong_minmax (unsigned long * min, unsigned long * max, const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_ulong_minmax, libgsl), Cvoid, (Ref{Culong}, Ref{Culong}, Ref{Culong}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_ulong_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_ulong_max_index (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_max_index(data, stride, n)
    ccall((:gsl_stats_ulong_max_index, libgsl), Csize_t, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_ulong_min_index (const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_min_index(data, stride, n)
    ccall((:gsl_stats_ulong_min_index, libgsl), Csize_t, (Ref{Culong}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ulong_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_ulong_minmax_index (size_t * min_index, size_t * max_index, const unsigned long data[], const size_t stride, const size_t n)`
"""
function stats_ulong_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_ulong_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Culong}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_ulong_select(data, stride, n, k) -> Culong

C signature:
`unsigned long gsl_stats_ulong_select(unsigned long data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_ulong_select(data, stride, n, k)
    ccall((:gsl_stats_ulong_select, libgsl), Culong, (Ref{Culong}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_ulong_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_median_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ulong_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_ulong_median_from_sorted_data, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ulong_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_median (unsigned long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ulong_median(sorted_data, stride, n)
    ccall((:gsl_stats_ulong_median, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ulong_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_ulong_quantile_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_ulong_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_ulong_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_ulong_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_trmean_from_sorted_data (const double trim, const unsigned long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ulong_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_ulong_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Culong}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_ulong_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ulong_gastwirth_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ulong_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_ulong_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ulong_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ulong_mad0(const unsigned long data[], const size_t stride, const size_t n, double work[])`
"""
function stats_ulong_mad0(data, stride, n, work)
    ccall((:gsl_stats_ulong_mad0, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_ulong_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ulong_mad(const unsigned long data[], const size_t stride, const size_t n, double work[])`
"""
function stats_ulong_mad(data, stride, n, work)
    ccall((:gsl_stats_ulong_mad, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_ulong_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Culong

C signature:
`unsigned long gsl_stats_ulong_Sn0_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n, unsigned long work[])`
"""
function stats_ulong_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_ulong_Sn0_from_sorted_data, libgsl), Culong, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}), sorted_data, stride, n, work)
end

@doc md"""
    stats_ulong_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ulong_Sn_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n, unsigned long work[])`
"""
function stats_ulong_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_ulong_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}), sorted_data, stride, n, work)
end

@doc md"""
    stats_ulong_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Culong

C signature:
`unsigned long gsl_stats_ulong_Qn0_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n, unsigned long work[], int work_int[])`
"""
function stats_ulong_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_ulong_Qn0_from_sorted_data, libgsl), Culong, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_ulong_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_ulong_Qn_from_sorted_data (const unsigned long sorted_data[], const size_t stride, const size_t n, unsigned long work[], int work_int[])`
"""
function stats_ulong_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_ulong_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Culong}, Csize_t, Csize_t, Ref{Culong}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

