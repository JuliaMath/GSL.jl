#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_int.h #####################################################


@doc md"""
    stats_int_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_mean (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_mean(data, stride, n)
    ccall((:gsl_stats_int_mean, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_variance (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_variance(data, stride, n)
    ccall((:gsl_stats_int_variance, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_sd (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_sd(data, stride, n)
    ccall((:gsl_stats_int_sd, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_variance_with_fixed_mean (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_int_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_sd_with_fixed_mean (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_int_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_tss (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_tss(data, stride, n)
    ccall((:gsl_stats_int_tss, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_tss_m (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_int_tss_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_absdev (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_absdev(data, stride, n)
    ccall((:gsl_stats_int_absdev, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_skew (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_skew(data, stride, n)
    ccall((:gsl_stats_int_skew, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_kurtosis (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_kurtosis(data, stride, n)
    ccall((:gsl_stats_int_kurtosis, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_lag1_autocorrelation (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_int_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_int_covariance (const int data1[], const size_t stride1,const int data2[], const size_t stride2, const size_t n)`
"""
function stats_int_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_int_covariance, libgsl), Cdouble, (Ref{Cint}, Csize_t, Ref{Cint}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_int_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_int_correlation (const int data1[], const size_t stride1,const int data2[], const size_t stride2, const size_t n)`
"""
function stats_int_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_int_correlation, libgsl), Cdouble, (Ref{Cint}, Csize_t, Ref{Cint}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_int_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_int_spearman (const int data1[], const size_t stride1, const int data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_int_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_int_spearman, libgsl), Cdouble, (Ref{Cint}, Csize_t, Ref{Cint}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_int_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_variance_m (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_int_variance_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_sd_m (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_int_sd_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_absdev_m (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_int_absdev_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_int_skew_m_sd (const int data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_int_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_int_skew_m_sd, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_int_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_int_kurtosis_m_sd (const int data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_int_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_int_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_int_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_int_lag1_autocorrelation_m (const int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_int_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_int_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_int_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_int_covariance_m (const int data1[], const size_t stride1,const int data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_int_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_int_covariance_m, libgsl), Cdouble, (Ref{Cint}, Csize_t, Ref{Cint}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_int_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_int_pvariance (const int data1[], const size_t stride1, const size_t n1, const int data2[], const size_t stride2, const size_t n2)`
"""
function stats_int_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_int_pvariance, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_int_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_int_ttest (const int data1[], const size_t stride1, const size_t n1, const int data2[], const size_t stride2, const size_t n2)`
"""
function stats_int_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_int_ttest, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_int_max(data, stride, n) -> Cint

C signature:
`int gsl_stats_int_max (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_max(data, stride, n)
    ccall((:gsl_stats_int_max, libgsl), Cint, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_min(data, stride, n) -> Cint

C signature:
`int gsl_stats_int_min (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_min(data, stride, n)
    ccall((:gsl_stats_int_min, libgsl), Cint, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_int_minmax (int * min, int * max, const int data[], const size_t stride, const size_t n)`
"""
function stats_int_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_int_minmax, libgsl), Cvoid, (Ref{Cint}, Ref{Cint}, Ref{Cint}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_int_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_int_max_index (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_max_index(data, stride, n)
    ccall((:gsl_stats_int_max_index, libgsl), Csize_t, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_int_min_index (const int data[], const size_t stride, const size_t n)`
"""
function stats_int_min_index(data, stride, n)
    ccall((:gsl_stats_int_min_index, libgsl), Csize_t, (Ref{Cint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_int_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_int_minmax_index (size_t * min_index, size_t * max_index, const int data[], const size_t stride, const size_t n)`
"""
function stats_int_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_int_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cint}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_int_select(data, stride, n, k) -> Cint

C signature:
`int gsl_stats_int_select(int data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_int_select(data, stride, n, k)
    ccall((:gsl_stats_int_select, libgsl), Cint, (Ref{Cint}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_int_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_median_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_int_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_int_median_from_sorted_data, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_int_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_median (int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_int_median(sorted_data, stride, n)
    ccall((:gsl_stats_int_median, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_int_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_int_quantile_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_int_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_int_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_int_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_trmean_from_sorted_data (const double trim, const int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_int_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_int_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cint}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_int_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_int_gastwirth_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_int_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_int_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_int_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_int_mad0(const int data[], const size_t stride, const size_t n, double work[])`
"""
function stats_int_mad0(data, stride, n, work)
    ccall((:gsl_stats_int_mad0, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_int_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_int_mad(const int data[], const size_t stride, const size_t n, double work[])`
"""
function stats_int_mad(data, stride, n, work)
    ccall((:gsl_stats_int_mad, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_int_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cint

C signature:
`int gsl_stats_int_Sn0_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n, int work[])`
"""
function stats_int_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_int_Sn0_from_sorted_data, libgsl), Cint, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}), sorted_data, stride, n, work)
end

@doc md"""
    stats_int_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_int_Sn_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n, int work[])`
"""
function stats_int_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_int_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}), sorted_data, stride, n, work)
end

@doc md"""
    stats_int_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cint

C signature:
`int gsl_stats_int_Qn0_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n, int work[], int work_int[])`
"""
function stats_int_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_int_Qn0_from_sorted_data, libgsl), Cint, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_int_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_int_Qn_from_sorted_data (const int sorted_data[], const size_t stride, const size_t n, int work[], int work_int[])`
"""
function stats_int_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_int_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cint}, Csize_t, Csize_t, Ref{Cint}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

