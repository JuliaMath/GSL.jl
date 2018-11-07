#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_uint.h ####################################################


@doc md"""
    stats_uint_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_mean (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_mean(data, stride, n)
    ccall((:gsl_stats_uint_mean, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_variance (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_variance(data, stride, n)
    ccall((:gsl_stats_uint_variance, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_sd (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_sd(data, stride, n)
    ccall((:gsl_stats_uint_sd, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_variance_with_fixed_mean (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_uint_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_sd_with_fixed_mean (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_uint_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_tss (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_tss(data, stride, n)
    ccall((:gsl_stats_uint_tss, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_tss_m (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_uint_tss_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_absdev (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_absdev(data, stride, n)
    ccall((:gsl_stats_uint_absdev, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_skew (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_skew(data, stride, n)
    ccall((:gsl_stats_uint_skew, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_kurtosis (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_kurtosis(data, stride, n)
    ccall((:gsl_stats_uint_kurtosis, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_lag1_autocorrelation (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_uint_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_uint_covariance (const unsigned int data1[], const size_t stride1,const unsigned int data2[], const size_t stride2, const size_t n)`
"""
function stats_uint_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_uint_covariance, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Ref{Cuint}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_uint_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_uint_correlation (const unsigned int data1[], const size_t stride1,const unsigned int data2[], const size_t stride2, const size_t n)`
"""
function stats_uint_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_uint_correlation, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Ref{Cuint}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_uint_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_uint_spearman (const unsigned int data1[], const size_t stride1, const unsigned int data2[], const size_t stride2, const size_t n, double work[])`
"""
function stats_uint_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_uint_spearman, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Ref{Cuint}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_uint_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_variance_m (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_uint_variance_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_sd_m (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_uint_sd_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_absdev_m (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_uint_absdev_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_uint_skew_m_sd (const unsigned int data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_uint_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_uint_skew_m_sd, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_uint_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_uint_kurtosis_m_sd (const unsigned int data[], const size_t stride, const size_t n, const double mean, const double sd)`
"""
function stats_uint_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_uint_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_uint_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_uint_lag1_autocorrelation_m (const unsigned int data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_uint_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_uint_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_uint_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_uint_covariance_m (const unsigned int data1[], const size_t stride1,const unsigned int data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`
"""
function stats_uint_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_uint_covariance_m, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Ref{Cuint}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_uint_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_uint_pvariance (const unsigned int data1[], const size_t stride1, const size_t n1, const unsigned int data2[], const size_t stride2, const size_t n2)`
"""
function stats_uint_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_uint_pvariance, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_uint_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_uint_ttest (const unsigned int data1[], const size_t stride1, const size_t n1, const unsigned int data2[], const size_t stride2, const size_t n2)`
"""
function stats_uint_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_uint_ttest, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_uint_max(data, stride, n) -> Cuint

C signature:
`unsigned int gsl_stats_uint_max (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_max(data, stride, n)
    ccall((:gsl_stats_uint_max, libgsl), Cuint, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_min(data, stride, n) -> Cuint

C signature:
`unsigned int gsl_stats_uint_min (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_min(data, stride, n)
    ccall((:gsl_stats_uint_min, libgsl), Cuint, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_uint_minmax (unsigned int * min, unsigned int * max, const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_uint_minmax, libgsl), Cvoid, (Ref{Cuint}, Ref{Cuint}, Ref{Cuint}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_uint_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_uint_max_index (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_max_index(data, stride, n)
    ccall((:gsl_stats_uint_max_index, libgsl), Csize_t, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_uint_min_index (const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_min_index(data, stride, n)
    ccall((:gsl_stats_uint_min_index, libgsl), Csize_t, (Ref{Cuint}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_uint_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_uint_minmax_index (size_t * min_index, size_t * max_index, const unsigned int data[], const size_t stride, const size_t n)`
"""
function stats_uint_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_uint_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cuint}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_uint_select(data, stride, n, k) -> Cuint

C signature:
`unsigned int gsl_stats_uint_select(unsigned int data[], const size_t stride, const size_t n, const size_t k)`
"""
function stats_uint_select(data, stride, n, k)
    ccall((:gsl_stats_uint_select, libgsl), Cuint, (Ref{Cuint}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_uint_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_median_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uint_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_uint_median_from_sorted_data, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uint_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_median (unsigned int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uint_median(sorted_data, stride, n)
    ccall((:gsl_stats_uint_median, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uint_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_uint_quantile_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n, const double f)`
"""
function stats_uint_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_uint_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_uint_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_trmean_from_sorted_data (const double trim, const unsigned int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uint_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_uint_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cuint}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_uint_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_uint_gastwirth_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n)`
"""
function stats_uint_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_uint_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_uint_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uint_mad0(const unsigned int data[], const size_t stride, const size_t n, double work[])`
"""
function stats_uint_mad0(data, stride, n, work)
    ccall((:gsl_stats_uint_mad0, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_uint_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uint_mad(const unsigned int data[], const size_t stride, const size_t n, double work[])`
"""
function stats_uint_mad(data, stride, n, work)
    ccall((:gsl_stats_uint_mad, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_uint_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cuint

C signature:
`unsigned int gsl_stats_uint_Sn0_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n, unsigned int work[])`
"""
function stats_uint_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_uint_Sn0_from_sorted_data, libgsl), Cuint, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}), sorted_data, stride, n, work)
end

@doc md"""
    stats_uint_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_uint_Sn_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n, unsigned int work[])`
"""
function stats_uint_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_uint_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}), sorted_data, stride, n, work)
end

@doc md"""
    stats_uint_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cuint

C signature:
`unsigned int gsl_stats_uint_Qn0_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n, unsigned int work[], int work_int[])`
"""
function stats_uint_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_uint_Qn0_from_sorted_data, libgsl), Cuint, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_uint_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_uint_Qn_from_sorted_data (const unsigned int sorted_data[], const size_t stride, const size_t n, unsigned int work[], int work_int[])`
"""
function stats_uint_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_uint_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cuint}, Csize_t, Csize_t, Ref{Cuint}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

