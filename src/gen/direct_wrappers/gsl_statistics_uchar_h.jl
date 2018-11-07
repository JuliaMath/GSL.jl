#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_uchar.h ###################################################


@doc md"""
    stats_uchar_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_mean (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_mean(data, stride, n)
    ccall((:gsl_stats_uchar_mean, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_variance (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_variance(data, stride, n)
    ccall((:gsl_stats_uchar_variance, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_sd (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_sd(data, stride, n)
    ccall((:gsl_stats_uchar_sd, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_variance_with_fixed_mean (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_uchar_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_sd_with_fixed_mean (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_uchar_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_tss (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_tss(data, stride, n)
    ccall((:gsl_stats_uchar_tss, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_tss_m (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_uchar_tss_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_absdev (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_absdev(data, stride, n)
    ccall((:gsl_stats_uchar_absdev, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_skew (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_skew(data, stride, n)
    ccall((:gsl_stats_uchar_skew, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_kurtosis (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_kurtosis(data, stride, n)
    ccall((:gsl_stats_uchar_kurtosis, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_lag1_autocorrelation (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_uchar_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_uchar_covariance (const unsigned char data1[], const size_t stride1,const unsigned char data2[], const size_t stride2, const size_t n)`
"""
function stats_uchar_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_uchar_covariance, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Ref{Cuchar}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_uchar_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_uchar_correlation (const unsigned char data1[], const size_t stride1,const unsigned char data2[], const size_t stride2, const size_t n)`
"""
function stats_uchar_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_uchar_correlation, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Ref{Cuchar}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_uchar_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_uchar_spearman (const unsigned char data1[], const size_t stride1, const unsigned char data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_uchar_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_uchar_spearman, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Ref{Cuchar}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_uchar_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_variance_m (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_uchar_variance_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_sd_m (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_uchar_sd_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_absdev_m (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_uchar_absdev_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_uchar_skew_m_sd (const unsigned char data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_uchar_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_uchar_skew_m_sd, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_uchar_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_uchar_kurtosis_m_sd (const unsigned char data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_uchar_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_uchar_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_uchar_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uchar_lag1_autocorrelation_m (const unsigned char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uchar_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_uchar_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uchar_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_uchar_covariance_m (const unsigned char data1[], const size_t stride1,const unsigned char data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_uchar_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_uchar_covariance_m, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Ref{Cuchar}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_uchar_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_uchar_pvariance (const unsigned char data1[], const size_t stride1, const size_t n1, const unsigned char data2[], const size_t stride2, const size_t n2)`
"""
function stats_uchar_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_uchar_pvariance, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_uchar_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_uchar_ttest (const unsigned char data1[], const size_t stride1, const size_t n1, const unsigned char data2[], const size_t stride2, const size_t n2)`
"""
function stats_uchar_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_uchar_ttest, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_uchar_max(data, stride, n) -> Cuchar

C signature:
`unsigned char gsl_stats_uchar_max (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_max(data, stride, n)
    ccall((:gsl_stats_uchar_max, libgsl), Cuchar, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_min(data, stride, n) -> Cuchar

C signature:
`unsigned char gsl_stats_uchar_min (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_min(data, stride, n)
    ccall((:gsl_stats_uchar_min, libgsl), Cuchar, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_uchar_minmax (unsigned char * min, unsigned char * max, const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_uchar_minmax, libgsl), Cvoid, (Ref{Cuchar}, Ref{Cuchar}, Ref{Cuchar}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_uchar_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_uchar_max_index (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_max_index(data, stride, n)
    ccall((:gsl_stats_uchar_max_index, libgsl), Csize_t, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_uchar_min_index (const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_min_index(data, stride, n)
    ccall((:gsl_stats_uchar_min_index, libgsl), Csize_t, (Ref{Cuchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uchar_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_uchar_minmax_index (size_t * min_index, size_t * max_index, const unsigned char data[], const size_t stride, const size_t n)`
"""
function stats_uchar_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_uchar_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cuchar}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_uchar_select(data, stride, n, k) -> Cuchar

C signature:
`unsigned char gsl_stats_uchar_select(unsigned char data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_uchar_select(data, stride, n, k)
    ccall((:gsl_stats_uchar_select, libgsl), Cuchar, (Ref{Cuchar}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_uchar_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_median_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uchar_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_uchar_median_from_sorted_data, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uchar_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_median (unsigned char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uchar_median(sorted_data, stride, n)
    ccall((:gsl_stats_uchar_median, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uchar_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_uchar_quantile_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_uchar_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_uchar_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_uchar_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_trmean_from_sorted_data (const double trim, const unsigned char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uchar_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_uchar_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cuchar}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_uchar_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uchar_gastwirth_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uchar_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_uchar_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uchar_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uchar_mad0(const unsigned char data[], const size_t stride, const size_t n, double work[])`
"""
function stats_uchar_mad0(data, stride, n, work)
    ccall((:gsl_stats_uchar_mad0, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_uchar_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uchar_mad(const unsigned char data[], const size_t stride, const size_t n, double work[])`
"""
function stats_uchar_mad(data, stride, n, work)
    ccall((:gsl_stats_uchar_mad, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_uchar_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cuchar

C signature:
`unsigned char gsl_stats_uchar_Sn0_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n, unsigned char work[])`
"""
function stats_uchar_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_uchar_Sn0_from_sorted_data, libgsl), Cuchar, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}), sorted_data, stride, n, work)
end

@doc md"""
    stats_uchar_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uchar_Sn_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n, unsigned char work[])`
"""
function stats_uchar_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_uchar_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}), sorted_data, stride, n, work)
end

@doc md"""
    stats_uchar_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cuchar

C signature:
`unsigned char gsl_stats_uchar_Qn0_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n, unsigned char work[], int work_int[])`
"""
function stats_uchar_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_uchar_Qn0_from_sorted_data, libgsl), Cuchar, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_uchar_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_uchar_Qn_from_sorted_data (const unsigned char sorted_data[], const size_t stride, const size_t n, unsigned char work[], int work_int[])`
"""
function stats_uchar_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_uchar_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cuchar}, Csize_t, Csize_t, Ref{Cuchar}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

