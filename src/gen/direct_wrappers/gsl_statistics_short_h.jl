#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_short.h ###################################################


@doc md"""
    stats_short_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_mean (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_mean(data, stride, n)
    ccall((:gsl_stats_short_mean, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_variance (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_variance(data, stride, n)
    ccall((:gsl_stats_short_variance, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_sd (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_sd(data, stride, n)
    ccall((:gsl_stats_short_sd, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_variance_with_fixed_mean (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_short_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_sd_with_fixed_mean (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_short_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_tss (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_tss(data, stride, n)
    ccall((:gsl_stats_short_tss, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_tss_m (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_short_tss_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_absdev (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_absdev(data, stride, n)
    ccall((:gsl_stats_short_absdev, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_skew (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_skew(data, stride, n)
    ccall((:gsl_stats_short_skew, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_kurtosis (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_kurtosis(data, stride, n)
    ccall((:gsl_stats_short_kurtosis, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_lag1_autocorrelation (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_short_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_short_covariance (const short data1[], const size_t stride1,const short data2[], const size_t stride2, const size_t n)`
"""
function stats_short_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_short_covariance, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Ref{Cshort}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_short_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_short_correlation (const short data1[], const size_t stride1,const short data2[], const size_t stride2, const size_t n)`
"""
function stats_short_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_short_correlation, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Ref{Cshort}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_short_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_short_spearman (const short data1[], const size_t stride1, const short data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_short_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_short_spearman, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Ref{Cshort}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_short_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_variance_m (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_short_variance_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_sd_m (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_short_sd_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_absdev_m (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_short_absdev_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_short_skew_m_sd (const short data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_short_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_short_skew_m_sd, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_short_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_short_kurtosis_m_sd (const short data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_short_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_short_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_short_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_short_lag1_autocorrelation_m (const short data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_short_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_short_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_short_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_short_covariance_m (const short data1[], const size_t stride1,const short data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_short_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_short_covariance_m, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Ref{Cshort}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_short_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_short_pvariance (const short data1[], const size_t stride1, const size_t n1, const short data2[], const size_t stride2, const size_t n2)`
"""
function stats_short_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_short_pvariance, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_short_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_short_ttest (const short data1[], const size_t stride1, const size_t n1, const short data2[], const size_t stride2, const size_t n2)`
"""
function stats_short_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_short_ttest, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_short_max(data, stride, n) -> Cshort

C signature:
`short gsl_stats_short_max (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_max(data, stride, n)
    ccall((:gsl_stats_short_max, libgsl), Cshort, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_min(data, stride, n) -> Cshort

C signature:
`short gsl_stats_short_min (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_min(data, stride, n)
    ccall((:gsl_stats_short_min, libgsl), Cshort, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_short_minmax (short * min, short * max, const short data[], const size_t stride, const size_t n)`
"""
function stats_short_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_short_minmax, libgsl), Cvoid, (Ref{Cshort}, Ref{Cshort}, Ref{Cshort}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_short_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_short_max_index (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_max_index(data, stride, n)
    ccall((:gsl_stats_short_max_index, libgsl), Csize_t, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_short_min_index (const short data[], const size_t stride, const size_t n)`
"""
function stats_short_min_index(data, stride, n)
    ccall((:gsl_stats_short_min_index, libgsl), Csize_t, (Ref{Cshort}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_short_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_short_minmax_index (size_t * min_index, size_t * max_index, const short data[], const size_t stride, const size_t n)`
"""
function stats_short_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_short_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cshort}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_short_select(data, stride, n, k) -> Cshort

C signature:
`short gsl_stats_short_select(short data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_short_select(data, stride, n, k)
    ccall((:gsl_stats_short_select, libgsl), Cshort, (Ref{Cshort}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_short_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_median_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_short_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_short_median_from_sorted_data, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_short_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_median (short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_short_median(sorted_data, stride, n)
    ccall((:gsl_stats_short_median, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_short_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_short_quantile_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_short_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_short_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_short_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_trmean_from_sorted_data (const double trim, const short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_short_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_short_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cshort}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_short_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_short_gastwirth_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n)`
"""
function stats_short_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_short_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_short_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_short_mad0(const short data[], const size_t stride, const size_t n, double work[])`
"""
function stats_short_mad0(data, stride, n, work)
    ccall((:gsl_stats_short_mad0, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_short_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_short_mad(const short data[], const size_t stride, const size_t n, double work[])`
"""
function stats_short_mad(data, stride, n, work)
    ccall((:gsl_stats_short_mad, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_short_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cshort

C signature:
`short gsl_stats_short_Sn0_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n, short work[])`
"""
function stats_short_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_short_Sn0_from_sorted_data, libgsl), Cshort, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}), sorted_data, stride, n, work)
end

@doc md"""
    stats_short_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_short_Sn_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n, short work[])`
"""
function stats_short_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_short_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}), sorted_data, stride, n, work)
end

@doc md"""
    stats_short_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cshort

C signature:
`short gsl_stats_short_Qn0_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n, short work[], int work_int[])`
"""
function stats_short_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_short_Qn0_from_sorted_data, libgsl), Cshort, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_short_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_short_Qn_from_sorted_data (const short sorted_data[], const size_t stride, const size_t n, short work[], int work_int[])`
"""
function stats_short_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_short_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cshort}, Csize_t, Csize_t, Ref{Cshort}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

