#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_ushort.h ##################################################


@doc md"""
    stats_ushort_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_mean (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_mean(data, stride, n)
    ccall((:gsl_stats_ushort_mean, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_variance (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_variance(data, stride, n)
    ccall((:gsl_stats_ushort_variance, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_sd (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_sd(data, stride, n)
    ccall((:gsl_stats_ushort_sd, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_variance_with_fixed_mean (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_ushort_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_sd_with_fixed_mean (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_ushort_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_tss (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_tss(data, stride, n)
    ccall((:gsl_stats_ushort_tss, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_tss_m (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_ushort_tss_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_absdev (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_absdev(data, stride, n)
    ccall((:gsl_stats_ushort_absdev, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_skew (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_skew(data, stride, n)
    ccall((:gsl_stats_ushort_skew, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_kurtosis (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_kurtosis(data, stride, n)
    ccall((:gsl_stats_ushort_kurtosis, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_lag1_autocorrelation (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_ushort_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_ushort_covariance (const unsigned short data1[], const size_t stride1,const unsigned short data2[], const size_t stride2, const size_t n)`
"""
function stats_ushort_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_ushort_covariance, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Ref{Cushort}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_ushort_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_ushort_correlation (const unsigned short data1[], const size_t stride1,const unsigned short data2[], const size_t stride2, const size_t n)`
"""
function stats_ushort_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_ushort_correlation, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Ref{Cushort}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_ushort_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_ushort_spearman (const unsigned short data1[], const size_t stride1, const unsigned short data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_ushort_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_ushort_spearman, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Ref{Cushort}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_ushort_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_variance_m (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_ushort_variance_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_sd_m (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_ushort_sd_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_absdev_m (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_ushort_absdev_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_ushort_skew_m_sd (const unsigned short data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_ushort_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_ushort_skew_m_sd, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_ushort_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_ushort_kurtosis_m_sd (const unsigned short data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_ushort_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_ushort_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_ushort_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_ushort_lag1_autocorrelation_m (const unsigned short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_ushort_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_ushort_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_ushort_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_ushort_covariance_m (const unsigned short data1[], const size_t stride1,const unsigned short data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_ushort_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_ushort_covariance_m, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Ref{Cushort}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_ushort_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_ushort_pvariance (const unsigned short data1[], const size_t stride1, const size_t n1, const unsigned short data2[], const size_t stride2, const size_t n2)`
"""
function stats_ushort_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_ushort_pvariance, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_ushort_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_ushort_ttest (const unsigned short data1[], const size_t stride1, const size_t n1, const unsigned short data2[], const size_t stride2, const size_t n2)`
"""
function stats_ushort_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_ushort_ttest, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_ushort_max(data, stride, n) -> Cushort

C signature:
`unsigned short gsl_stats_ushort_max (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_max(data, stride, n)
    ccall((:gsl_stats_ushort_max, libgsl), Cushort, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_min(data, stride, n) -> Cushort

C signature:
`unsigned short gsl_stats_ushort_min (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_min(data, stride, n)
    ccall((:gsl_stats_ushort_min, libgsl), Cushort, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_ushort_minmax (unsigned short * min, unsigned short * max, const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_ushort_minmax, libgsl), Cvoid, (Ref{Cushort}, Ref{Cushort}, Ref{Cushort}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_ushort_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_ushort_max_index (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_max_index(data, stride, n)
    ccall((:gsl_stats_ushort_max_index, libgsl), Csize_t, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_ushort_min_index (const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_min_index(data, stride, n)
    ccall((:gsl_stats_ushort_min_index, libgsl), Csize_t, (Ref{Cushort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_ushort_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_ushort_minmax_index (size_t * min_index, size_t * max_index, const unsigned short data[], const size_t stride, const size_t n)`
"""
function stats_ushort_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_ushort_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cushort}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_ushort_select(data, stride, n, k) -> Cushort

C signature:
`unsigned short gsl_stats_ushort_select(unsigned short data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_ushort_select(data, stride, n, k)
    ccall((:gsl_stats_ushort_select, libgsl), Cushort, (Ref{Cushort}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_ushort_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_median_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ushort_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_ushort_median_from_sorted_data, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ushort_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_median (unsigned short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ushort_median(sorted_data, stride, n)
    ccall((:gsl_stats_ushort_median, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ushort_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_ushort_quantile_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_ushort_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_ushort_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_ushort_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_trmean_from_sorted_data (const double trim, const unsigned short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ushort_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_ushort_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cushort}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_ushort_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_ushort_gastwirth_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_ushort_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_ushort_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_ushort_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ushort_mad0(const unsigned short data[], const size_t stride, const size_t n, double work[])`
"""
function stats_ushort_mad0(data, stride, n, work)
    ccall((:gsl_stats_ushort_mad0, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_ushort_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ushort_mad(const unsigned short data[], const size_t stride, const size_t n, double work[])`
"""
function stats_ushort_mad(data, stride, n, work)
    ccall((:gsl_stats_ushort_mad, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_ushort_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cushort

C signature:
`unsigned short gsl_stats_ushort_Sn0_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n, unsigned short work[])`
"""
function stats_ushort_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_ushort_Sn0_from_sorted_data, libgsl), Cushort, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}), sorted_data, stride, n, work)
end

@doc md"""
    stats_ushort_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_ushort_Sn_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n, unsigned short work[])`
"""
function stats_ushort_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_ushort_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}), sorted_data, stride, n, work)
end

@doc md"""
    stats_ushort_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cushort

C signature:
`unsigned short gsl_stats_ushort_Qn0_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n, unsigned short work[], int work_int[])`
"""
function stats_ushort_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_ushort_Qn0_from_sorted_data, libgsl), Cushort, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_ushort_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_ushort_Qn_from_sorted_data (const unsigned short sorted_data[], const size_t stride, const size_t n, unsigned short work[], int work_int[])`
"""
function stats_ushort_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_ushort_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cushort}, Csize_t, Csize_t, Ref{Cushort}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

