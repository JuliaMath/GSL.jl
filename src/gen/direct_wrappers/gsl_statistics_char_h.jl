#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_char.h ####################################################


@doc md"""
    stats_char_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_mean (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_mean(data, stride, n)
    ccall((:gsl_stats_char_mean, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_variance (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_variance(data, stride, n)
    ccall((:gsl_stats_char_variance, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_sd (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_sd(data, stride, n)
    ccall((:gsl_stats_char_sd, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_variance_with_fixed_mean (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_char_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_sd_with_fixed_mean (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_char_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_tss (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_tss(data, stride, n)
    ccall((:gsl_stats_char_tss, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_tss_m (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_char_tss_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_absdev (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_absdev(data, stride, n)
    ccall((:gsl_stats_char_absdev, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_skew (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_skew(data, stride, n)
    ccall((:gsl_stats_char_skew, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_kurtosis (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_kurtosis(data, stride, n)
    ccall((:gsl_stats_char_kurtosis, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_lag1_autocorrelation (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_char_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_char_covariance (const char data1[], const size_t stride1,const char data2[], const size_t stride2, const size_t n)`
"""
function stats_char_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_char_covariance, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Ref{Cchar}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_char_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_char_correlation (const char data1[], const size_t stride1,const char data2[], const size_t stride2, const size_t n)`
"""
function stats_char_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_char_correlation, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Ref{Cchar}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_char_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_char_spearman (const char data1[], const size_t stride1, const char data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_char_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_char_spearman, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Ref{Cchar}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_char_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_variance_m (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_char_variance_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_sd_m (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_char_sd_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_absdev_m (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_char_absdev_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_char_skew_m_sd (const char data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_char_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_char_skew_m_sd, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_char_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_char_kurtosis_m_sd (const char data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_char_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_char_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_char_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_char_lag1_autocorrelation_m (const char data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_char_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_char_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_char_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_char_covariance_m (const char data1[], const size_t stride1,const char data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_char_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_char_covariance_m, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Ref{Cchar}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_char_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_char_pvariance (const char data1[], const size_t stride1, const size_t n1, const char data2[], const size_t stride2, const size_t n2)`
"""
function stats_char_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_char_pvariance, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_char_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_char_ttest (const char data1[], const size_t stride1, const size_t n1, const char data2[], const size_t stride2, const size_t n2)`
"""
function stats_char_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_char_ttest, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_char_max(data, stride, n) -> Cchar

C signature:
`char gsl_stats_char_max (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_max(data, stride, n)
    ccall((:gsl_stats_char_max, libgsl), Cchar, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_min(data, stride, n) -> Cchar

C signature:
`char gsl_stats_char_min (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_min(data, stride, n)
    ccall((:gsl_stats_char_min, libgsl), Cchar, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_char_minmax (char * min, char * max, const char data[], const size_t stride, const size_t n)`
"""
function stats_char_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_char_minmax, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Ref{Cchar}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_char_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_char_max_index (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_max_index(data, stride, n)
    ccall((:gsl_stats_char_max_index, libgsl), Csize_t, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_char_min_index (const char data[], const size_t stride, const size_t n)`
"""
function stats_char_min_index(data, stride, n)
    ccall((:gsl_stats_char_min_index, libgsl), Csize_t, (Ref{Cchar}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_char_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_char_minmax_index (size_t * min_index, size_t * max_index, const char data[], const size_t stride, const size_t n)`
"""
function stats_char_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_char_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cchar}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_char_select(data, stride, n, k) -> Cchar

C signature:
`char gsl_stats_char_select(char data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_char_select(data, stride, n, k)
    ccall((:gsl_stats_char_select, libgsl), Cchar, (Ref{Cchar}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_char_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_median_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_char_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_char_median_from_sorted_data, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_char_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_median (char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_char_median(sorted_data, stride, n)
    ccall((:gsl_stats_char_median, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_char_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_char_quantile_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_char_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_char_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_char_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_trmean_from_sorted_data (const double trim, const char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_char_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_char_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cchar}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_char_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_char_gastwirth_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n)`
"""
function stats_char_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_char_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_char_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_char_mad0(const char data[], const size_t stride, const size_t n, double work[])`
"""
function stats_char_mad0(data, stride, n, work)
    ccall((:gsl_stats_char_mad0, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_char_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_char_mad(const char data[], const size_t stride, const size_t n, double work[])`
"""
function stats_char_mad(data, stride, n, work)
    ccall((:gsl_stats_char_mad, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_char_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cchar

C signature:
`char gsl_stats_char_Sn0_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n, char work[])`
"""
function stats_char_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_char_Sn0_from_sorted_data, libgsl), Cchar, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}), sorted_data, stride, n, work)
end

@doc md"""
    stats_char_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_char_Sn_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n, char work[])`
"""
function stats_char_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_char_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}), sorted_data, stride, n, work)
end

@doc md"""
    stats_char_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cchar

C signature:
`char gsl_stats_char_Qn0_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n, char work[], int work_int[])`
"""
function stats_char_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_char_Qn0_from_sorted_data, libgsl), Cchar, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_char_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_char_Qn_from_sorted_data (const char sorted_data[], const size_t stride, const size_t n, char work[], int work_int[])`
"""
function stats_char_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_char_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

