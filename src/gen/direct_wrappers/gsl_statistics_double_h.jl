#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_statistics_double.h ##################################################


@doc md"""
    stats_mean(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_mean (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_mean (const double data[], size_t stride, size_t n)`

> This function returns the arithmetic mean of `data`, a dataset of
> length `n` with stride `stride`. The arithmetic mean, or *sample
> mean*, is denoted by $\Hat\mu$ and defined as,
>
> $$\Hat\mu = {1 \over N} \sum x_i$$
>
> where $x_i$ are the elements of the dataset `data`. For samples drawn
> from a gaussian distribution the variance of $\Hat\mu$ is
> $\sigma^2 / N$.

"""
function stats_mean(data, stride, n)
    ccall((:gsl_stats_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_variance(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_variance (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_variance (const double data[], size_t stride, size_t n)`

> This function returns the estimated, or *sample*, variance of `data`,
> a dataset of length `n` with stride `stride`. The estimated variance
> is denoted by $\Hat\sigma^2$ and is defined by,
>
> not texinfo
>
> $${\Hat\sigma}^2 = {1 \over (N-1)} \sum (x_i - {\Hat\mu})^2$$
>
> texinfo
>
>     \Hat\sigma^2 = (1/(N-1)) \sum (x_i - \Hat\mu)^2
>
> where $x_i$ are the elements of the dataset `data`. Note that the
> normalization factor of $1/(N-1)$ results from the derivation of
> $\Hat\sigma^2$ as an unbiased estimator of the population variance
> $\sigma^2$. For samples drawn from a Gaussian distribution the
> variance of $\Hat\sigma^2$ itself is $2 \sigma^4 / N$.
>
> This function computes the mean via a call to `gsl_stats_mean`. If you
> have already computed the mean then you can pass it directly to
> `gsl_stats_variance_m`.

"""
function stats_variance(data, stride, n)
    ccall((:gsl_stats_variance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_sd(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_sd (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_sd (const double data[], size_t stride, size_t n)`

> double gsl\_stats\_sd\_m (const double data\[\], size\_t stride,
> size\_t n, double mean)

> The standard deviation is defined as the square root of the variance.
> These functions return the square root of the corresponding variance
> functions above.

"""
function stats_sd(data, stride, n)
    ccall((:gsl_stats_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_variance_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_variance_with_fixed_mean (const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_variance_with_fixed_mean (const double data[], size_t stride, size_t n, double mean)`

> This function computes an unbiased estimate of the variance of `data`
> when the population mean `mean` of the underlying distribution is
> known *a priori*. In this case the estimator for the variance uses the
> factor $1/N$ and the sample mean $\Hat\mu$ is replaced by the known
> population mean $\mu$,
>
> not texinfo
>
> $${\Hat\sigma}^2 = {1 \over N} \sum (x_i - \mu)^2$$
>
> texinfo
>
>     \Hat\sigma^2 = (1/N) \sum (x_i - \mu)^2

"""
function stats_variance_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_variance_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_sd_with_fixed_mean(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_sd_with_fixed_mean (const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_sd_with_fixed_mean (const double data[], size_t stride, size_t n, double mean)`

> This function calculates the standard deviation of `data` for a fixed
> population mean `mean`. The result is the square root of the
> corresponding variance function.

"""
function stats_sd_with_fixed_mean(data, stride, n, mean)
    ccall((:gsl_stats_sd_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_tss(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_tss (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_tss (const double data[], size_t stride, size_t n)`

> double gsl\_stats\_tss\_m (const double data\[\], size\_t stride,
> size\_t n, double mean)

> These functions return the total sum of squares (TSS) of `data` about
> the mean. For `gsl_stats_tss_m` the user-supplied value of `mean` is
> used, and for `gsl_stats_tss` it is computed using `gsl_stats_mean`.
>
> not texinfo
>
> $${\rm TSS} = \sum (x_i - mean)^2$$
>
> texinfo
>
>     TSS =  \sum (x_i - mean)^2

"""
function stats_tss(data, stride, n)
    ccall((:gsl_stats_tss, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_tss_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_tss_m (const double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_tss_m(data, stride, n, mean)
    ccall((:gsl_stats_tss_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_absdev(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_absdev (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_absdev (const double data[], size_t stride, size_t n)`

> This function computes the absolute deviation from the mean of `data`,
> a dataset of length `n` with stride `stride`. The absolute deviation
> from the mean is defined as,
>
> not texinfo
>
> $$absdev  = {1 \over N} \sum |x_i - {\Hat\mu}|$$
>
> texinfo
>
>     absdev  = (1/N) \sum |x_i - \Hat\mu|
>
> where $x_i$ are the elements of the dataset `data`. The absolute
> deviation from the mean provides a more robust measure of the width of
> a distribution than the variance. This function computes the mean of
> `data` via a call to `gsl_stats_mean`.

"""
function stats_absdev(data, stride, n)
    ccall((:gsl_stats_absdev, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_skew(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_skew (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_skew (const double data[], size_t stride, size_t n)`

> This function computes the skewness of `data`, a dataset of length `n`
> with stride `stride`. The skewness is defined as,
>
> not texinfo
>
> $$skew = {1 \over N} \sum 
>  {\left( x_i - {\Hat\mu} \over {\Hat\sigma} \right)}^3$$
>
> texinfo
>
>     skew = (1/N) \sum ((x_i - \Hat\mu)/\Hat\sigma)^3
>
> where $x_i$ are the elements of the dataset `data`. The skewness
> measures the asymmetry of the tails of a distribution.
>
> The function computes the mean and estimated standard deviation of
> `data` via calls to `gsl_stats_mean` and `gsl_stats_sd`.

"""
function stats_skew(data, stride, n)
    ccall((:gsl_stats_skew, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_kurtosis(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_kurtosis (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_kurtosis (const double data[], size_t stride, size_t n)`

> This function computes the kurtosis of `data`, a dataset of length `n`
> with stride `stride`. The kurtosis is defined as,
>
> not texinfo
>
> $$kurtosis = \left( {1 \over N} \sum 
>  {\left(x_i - {\Hat\mu} \over {\Hat\sigma} \right)}^4 
>  \right) 
>  - 3$$
>
> texinfo
>
>     kurtosis = ((1/N) \sum ((x_i - \Hat\mu)/\Hat\sigma)^4)  - 3
>
> The kurtosis measures how sharply peaked a distribution is, relative
> to its width. The kurtosis is normalized to zero for a Gaussian
> distribution.

"""
function stats_kurtosis(data, stride, n)
    ccall((:gsl_stats_kurtosis, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_lag1_autocorrelation(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_lag1_autocorrelation (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_lag1_autocorrelation (const double data[], const size_t stride, const size_t n)`

> This function computes the lag-1 autocorrelation of the dataset
> `data`.
>
> not texinfo
>
> $$a_1 = {\sum_{i = 2}^{n} (x_{i} - \Hat\mu) (x_{i-1} - \Hat\mu)
> \over
> \sum_{i = 1}^{n} (x_{i} - \Hat\mu) (x_{i} - \Hat\mu)}$$
>
> texinfo
>
>     a_1 = {\sum_{i = 2}^{n} (x_{i} - \Hat\mu) (x_{i-1} - \Hat\mu)
>            \over
>            \sum_{i = 1}^{n} (x_{i} - \Hat\mu) (x_{i} - \Hat\mu)}

"""
function stats_lag1_autocorrelation(data, stride, n)
    ccall((:gsl_stats_lag1_autocorrelation, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_covariance(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_covariance (const double data1[], const size_t stride1,const double data2[], const size_t stride2, const size_t n)`

GSL documentation:

### `double gsl_stats_covariance (const double data1[], const size_t stride1, const double data2[], const size_t stride2, const size_t n)`

> This function computes the covariance of the datasets `data1` and
> `data2` which must both be of the same length `n`.
>
> not texinfo
>
> $$covar = {1 \over (n - 1)} \sum_{i = 1}^{n} (x_{i} - \Hat x) (y_{i} - \Hat y)$$
>
> texinfo
>
>     covar = (1/(n - 1)) \sum_{i = 1}^{n} (x_i - \Hat x) (y_i - \Hat y)

"""
function stats_covariance(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_covariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_correlation(data1, stride1, data2, stride2, n) -> Cdouble

C signature:
`double gsl_stats_correlation (const double data1[], const size_t stride1,const double data2[], const size_t stride2, const size_t n)`

GSL documentation:

### `double gsl_stats_correlation (const double data1[], const size_t stride1, const double data2[], const size_t stride2, const size_t n)`

> This function efficiently computes the Pearson correlation coefficient
> between the datasets `data1` and `data2` which must both be of the
> same length `n`.
>
> not texinfo
>
> $$r = {cov(x, y) \over \Hat\sigma_x \Hat\sigma_y} =
> {{1 \over n-1} \sum (x_i - \Hat x) (y_i - \Hat y)
> \over
> \sqrt{{1 \over n-1} \sum (x_i - {\Hat x})^2}
> \sqrt{{1 \over n-1} \sum (y_i - {\Hat y})^2}
> }$$
>
> texinfo
>
>     r = cov(x, y) / (\Hat\sigma_x \Hat\sigma_y)
>       = {1/(n-1) \sum (x_i - \Hat x) (y_i - \Hat y)
>          \over
>          \sqrt{1/(n-1) \sum (x_i - \Hat x)^2} \sqrt{1/(n-1) \sum (y_i - \Hat y)^2}
>         }

"""
function stats_correlation(data1, stride1, data2, stride2, n)
    ccall((:gsl_stats_correlation, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, data2, stride2, n)
end

@doc md"""
    stats_spearman(data1, stride1, data2, stride2, n, work) -> Cdouble

C signature:
`double gsl_stats_spearman (const double data1[], const size_t stride1, const double data2[], const size_t stride2, const size_t n, double work[])`

GSL documentation:

### `double gsl_stats_spearman (const double data1[], const size_t stride1, const double data2[], const size_t stride2, const size_t n, double work[])`

> This function computes the Spearman rank correlation coefficient
> between the datasets `data1` and `data2` which must both be of the
> same length `n`. Additional workspace of size 2 \* `n` is required in
> `work`. The Spearman rank correlation between vectors $x$ and $y$ is
> equivalent to the Pearson correlation between the ranked vectors $x_R$
> and $y_R$, where ranks are defined to be the average of the positions
> of an element in the ascending order of the values.

"""
function stats_spearman(data1, stride1, data2, stride2, n, work)
    ccall((:gsl_stats_spearman, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data1, stride1, data2, stride2, n, work)
end

@doc md"""
    stats_variance_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_variance_m (const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_variance_m (const double data[], size_t stride, size_t n, double mean)`

> This function returns the sample variance of `data` relative to the
> given value of `mean`. The function is computed with $\Hat\mu$
> replaced by the value of `mean` that you supply,
>
> not texinfo
>
> $${\Hat\sigma}^2 = {1 \over (N-1)} \sum (x_i - mean)^2$$
>
> texinfo
>
>     \Hat\sigma^2 = (1/(N-1)) \sum (x_i - mean)^2

"""
function stats_variance_m(data, stride, n, mean)
    ccall((:gsl_stats_variance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_sd_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_sd_m (const double data[], const size_t stride, const size_t n, const double mean)`
"""
function stats_sd_m(data, stride, n, mean)
    ccall((:gsl_stats_sd_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_absdev_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_absdev_m (const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_absdev_m (const double data[], size_t stride, size_t n, double mean)`

> This function computes the absolute deviation of the dataset `data`
> relative to the given value of `mean`,
>
> not texinfo
>
> $$absdev  = {1 \over N} \sum |x_i - mean|$$
>
> texinfo
>
>     absdev  = (1/N) \sum |x_i - mean|
>
> This function is useful if you have already computed the mean of
> `data` (and want to avoid recomputing it), or wish to calculate the
> absolute deviation relative to another value (such as zero, or the
> median).

"""
function stats_absdev_m(data, stride, n, mean)
    ccall((:gsl_stats_absdev_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_skew_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_skew_m_sd (const double data[], const size_t stride, const size_t n, const double mean, const double sd)`

GSL documentation:

### `double gsl_stats_skew_m_sd (const double data[], size_t stride, size_t n, double mean, double sd)`

> This function computes the skewness of the dataset `data` using the
> given values of the mean `mean` and standard deviation `sd`,
>
> not texinfo
>
> $$skew = {1 \over N} \sum {\left( x_i - mean \over sd \right)}^3$$
>
> texinfo
>
>     skew = (1/N) \sum ((x_i - mean)/sd)^3
>
> These functions are useful if you have already computed the mean and
> standard deviation of `data` and want to avoid recomputing them.

"""
function stats_skew_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_skew_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_kurtosis_m_sd(data, stride, n, mean, sd) -> Cdouble

C signature:
`double gsl_stats_kurtosis_m_sd (const double data[], const size_t stride, const size_t n, const double mean, const double sd)`

GSL documentation:

### `double gsl_stats_kurtosis_m_sd (const double data[], size_t stride, size_t n, double mean, double sd)`

> This function computes the kurtosis of the dataset `data` using the
> given values of the mean `mean` and standard deviation `sd`,
>
> not texinfo
>
> $$kurtosis = {1 \over N}
>   \left( \sum {\left(x_i - mean \over sd \right)}^4 \right) 
>   - 3$$
>
> texinfo
>
>     kurtosis = ((1/N) \sum ((x_i - mean)/sd)^4) - 3
>
> This function is useful if you have already computed the mean and
> standard deviation of `data` and want to avoid recomputing them.

"""
function stats_kurtosis_m_sd(data, stride, n, mean, sd)
    ccall((:gsl_stats_kurtosis_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data, stride, n, mean, sd)
end

@doc md"""
    stats_lag1_autocorrelation_m(data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_lag1_autocorrelation_m (const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_lag1_autocorrelation_m (const double data[], const size_t stride, const size_t n, const double mean)`

> This function computes the lag-1 autocorrelation of the dataset `data`
> using the given value of the mean `mean`.

"""
function stats_lag1_autocorrelation_m(data, stride, n, mean)
    ccall((:gsl_stats_lag1_autocorrelation_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), data, stride, n, mean)
end

@doc md"""
    stats_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2) -> Cdouble

C signature:
`double gsl_stats_covariance_m (const double data1[], const size_t stride1,const double data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`

GSL documentation:

### `double gsl_stats_covariance_m (const double data1[], const size_t stride1, const double data2[], const size_t stride2, const size_t n, const double mean1, const double mean2)`

> This function computes the covariance of the datasets `data1` and
> `data2` using the given values of the means, `mean1` and `mean2`. This
> is useful if you have already computed the means of `data1` and
> `data2` and want to avoid recomputing them.

"""
function stats_covariance_m(data1, stride1, data2, stride2, n, mean1, mean2)
    ccall((:gsl_stats_covariance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), data1, stride1, data2, stride2, n, mean1, mean2)
end

@doc md"""
    stats_wmean(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wmean (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wmean (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> This function returns the weighted mean of the dataset `data` with
> stride `stride` and length `n`, using the set of weights `w` with
> stride `wstride` and length `n`. The weighted mean is defined as,
>
> not texinfo
>
> $${\Hat\mu} = {{\sum w_i x_i} \over {\sum w_i}}$$
>
> texinfo
>
>     \Hat\mu = (\sum w_i x_i) / (\sum w_i)

"""
function stats_wmean(w, wstride, data, stride, n)
    ccall((:gsl_stats_wmean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wvariance(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wvariance (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wvariance (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> This function returns the estimated variance of the dataset `data`
> with stride `stride` and length `n`, using the set of weights `w` with
> stride `wstride` and length `n`. The estimated variance of a weighted
> dataset is calculated as,
>
> not texinfo
>
> $$\Hat\sigma^2 = {{\sum w_i} \over {(\sum w_i)^2 - \sum (w_i^2)}} 
>                 \sum w_i (x_i - \Hat\mu)^2$$
>
> texinfo
>
>     \Hat\sigma^2 = ((\sum w_i)/((\sum w_i)^2 - \sum (w_i^2))) 
>                     \sum w_i (x_i - \Hat\mu)^2
>
> Note that this expression reduces to an unweighted variance with the
> familiar $1/(N-1)$ factor when there are $N$ equal non-zero weights.

"""
function stats_wvariance(w, wstride, data, stride, n)
    ccall((:gsl_stats_wvariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wsd(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wsd (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wsd (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> The standard deviation is defined as the square root of the variance.
> This function returns the square root of the corresponding variance
> function `gsl_stats_wvariance` above.

"""
function stats_wsd(w, wstride, data, stride, n)
    ccall((:gsl_stats_wsd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_wvariance_with_fixed_mean (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_wvariance_with_fixed_mean (const double w[], size_t wstride, const double data[], size_t stride, size_t n, const double mean)`

> This function computes an unbiased estimate of the variance of the
> weighted dataset `data` when the population mean `mean` of the
> underlying distribution is known *a priori*. In this case the
> estimator for the variance replaces the sample mean $\Hat\mu$ by the
> known population mean $\mu$,
>
> not texinfo
>
> $$\Hat\sigma^2 = {{\sum w_i (x_i - \mu)^2} \over {\sum w_i}}$$
>
> texinfo
>
>     \Hat\sigma^2 = (\sum w_i (x_i - \mu)^2) / (\sum w_i)

"""
function stats_wvariance_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_wvariance_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_wsd_with_fixed_mean(w, wstride, data, stride, n, mean) -> Cdouble

C signature:
`double gsl_stats_wsd_with_fixed_mean (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double mean)`

GSL documentation:

### `double gsl_stats_wsd_with_fixed_mean (const double w[], size_t wstride, const double data[], size_t stride, size_t n, const double mean)`

> The standard deviation is defined as the square root of the variance.
> This function returns the square root of the corresponding variance
> function above.

"""
function stats_wsd_with_fixed_mean(w, wstride, data, stride, n, mean)
    ccall((:gsl_stats_wsd_with_fixed_mean, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, mean)
end

@doc md"""
    stats_wtss(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wtss (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wtss (const double w[], const size_t wstride, const double data[], size_t stride, size_t n)`

> double gsl\_stats\_wtss\_m (const double w\[\], const size\_t wstride,
> const double data\[\], size\_t stride, size\_t n, double wmean)

> These functions return the weighted total sum of squares (TSS) of
> `data` about the weighted mean. For `gsl_stats_wtss_m` the
> user-supplied value of `wmean` is used, and for `gsl_stats_wtss` it is
> computed using `gsl_stats_wmean`.
>
> not texinfo
>
> $${\rm TSS} = \sum w_i (x_i - wmean)^2$$
>
> texinfo
>
>     TSS =  \sum w_i (x_i - wmean)^2

"""
function stats_wtss(w, wstride, data, stride, n)
    ccall((:gsl_stats_wtss, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wtss_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_wtss_m (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean)`
"""
function stats_wtss_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_wtss_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_wabsdev(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wabsdev (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wabsdev (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> This function computes the weighted absolute deviation from the
> weighted mean of `data`. The absolute deviation from the mean is
> defined as,
>
> not texinfo
>
> $$absdev = {{\sum w_i |x_i - \Hat\mu|} \over {\sum w_i}}$$
>
> texinfo
>
>     absdev = (\sum w_i |x_i - \Hat\mu|) / (\sum w_i)

"""
function stats_wabsdev(w, wstride, data, stride, n)
    ccall((:gsl_stats_wabsdev, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wskew(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wskew (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wskew (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> This function computes the weighted skewness of the dataset `data`.
>
> not texinfo
>
> $$skew = {{\sum w_i ((x_i - {\Hat x})/{\Hat \sigma})^3} \over {\sum w_i}}$$
>
> texinfo
>
>     skew = (\sum w_i ((x_i - \Hat x)/\Hat \sigma)^3) / (\sum w_i)

"""
function stats_wskew(w, wstride, data, stride, n)
    ccall((:gsl_stats_wskew, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wkurtosis(w, wstride, data, stride, n) -> Cdouble

C signature:
`double gsl_stats_wkurtosis (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_wkurtosis (const double w[], size_t wstride, const double data[], size_t stride, size_t n)`

> This function computes the weighted kurtosis of the dataset `data`.
>
> not texinfo
>
> $$kurtosis = {{\sum w_i ((x_i - {\Hat x})/{\Hat \sigma})^4} \over {\sum w_i}} - 3$$
>
> texinfo
>
>     kurtosis = ((\sum w_i ((x_i - \Hat x)/\Hat \sigma)^4) / (\sum w_i)) - 3

"""
function stats_wkurtosis(w, wstride, data, stride, n)
    ccall((:gsl_stats_wkurtosis, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), w, wstride, data, stride, n)
end

@doc md"""
    stats_wvariance_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_wvariance_m (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean)`

GSL documentation:

### `double gsl_stats_wvariance_m (const double w[], size_t wstride, const double data[], size_t stride, size_t n, double wmean)`

> This function returns the estimated variance of the weighted dataset
> `data` using the given weighted mean `wmean`.

"""
function stats_wvariance_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_wvariance_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_wsd_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_wsd_m (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean)`

GSL documentation:

### `double gsl_stats_wsd_m (const double w[], size_t wstride, const double data[], size_t stride, size_t n, double wmean)`

> This function returns the square root of the corresponding variance
> function `gsl_stats_wvariance_m` above.

"""
function stats_wsd_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_wsd_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_wabsdev_m(w, wstride, data, stride, n, wmean) -> Cdouble

C signature:
`double gsl_stats_wabsdev_m (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean)`

GSL documentation:

### `double gsl_stats_wabsdev_m (const double w[], size_t wstride, const double data[], size_t stride, size_t n, double wmean)`

> This function computes the absolute deviation of the weighted dataset
> `data` about the given weighted mean `wmean`.

"""
function stats_wabsdev_m(w, wstride, data, stride, n, wmean)
    ccall((:gsl_stats_wabsdev_m, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), w, wstride, data, stride, n, wmean)
end

@doc md"""
    stats_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_wskew_m_sd (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean, const double wsd)`

GSL documentation:

### `double gsl_stats_wskew_m_sd (const double w[], size_t wstride, const double data[], size_t stride, size_t n, double wmean, double wsd)`

> This function computes the weighted skewness of the dataset `data`
> using the given values of the weighted mean and weighted standard
> deviation, `wmean` and `wsd`.

"""
function stats_wskew_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_wskew_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd) -> Cdouble

C signature:
`double gsl_stats_wkurtosis_m_sd (const double w[], const size_t wstride, const double data[], const size_t stride, const size_t n, const double wmean, const double wsd)`

GSL documentation:

### `double gsl_stats_wkurtosis_m_sd (const double w[], size_t wstride, const double data[], size_t stride, size_t n, double wmean, double wsd)`

> This function computes the weighted kurtosis of the dataset `data`
> using the given values of the weighted mean and weighted standard
> deviation, `wmean` and `wsd`.

"""
function stats_wkurtosis_m_sd(w, wstride, data, stride, n, wmean, wsd)
    ccall((:gsl_stats_wkurtosis_m_sd, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Cdouble, Cdouble), w, wstride, data, stride, n, wmean, wsd)
end

@doc md"""
    stats_pvariance(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_pvariance (const double data1[], const size_t stride1, const size_t n1, const double data2[], const size_t stride2, const size_t n2)`
"""
function stats_pvariance(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_pvariance, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_ttest(data1, stride1, n1, data2, stride2, n2) -> Cdouble

C signature:
`double gsl_stats_ttest (const double data1[], const size_t stride1, const size_t n1, const double data2[], const size_t stride2, const size_t n2)`
"""
function stats_ttest(data1, stride1, n1, data2, stride2, n2)
    ccall((:gsl_stats_ttest, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Csize_t, Csize_t), data1, stride1, n1, data2, stride2, n2)
end

@doc md"""
    stats_max(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_max (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_max (const double data[], size_t stride, size_t n)`

> This function returns the maximum value in `data`, a dataset of length
> `n` with stride `stride`. The maximum value is defined as the value of
> the element $x_i$ which satisfies $x_i \ge x_j$ for all $j$.
>
> If you want instead to find the element with the largest absolute
> magnitude you will need to apply `fabs` or `abs` to your data before
> calling this function.

"""
function stats_max(data, stride, n)
    ccall((:gsl_stats_max, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_min(data, stride, n) -> Cdouble

C signature:
`double gsl_stats_min (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_min (const double data[], size_t stride, size_t n)`

> This function returns the minimum value in `data`, a dataset of length
> `n` with stride `stride`. The minimum value is defined as the value of
> the element $x_i$ which satisfies $x_i \le x_j$ for all $j$.
>
> If you want instead to find the element with the smallest absolute
> magnitude you will need to apply `fabs` or `abs` to your data before
> calling this function.

"""
function stats_min(data, stride, n)
    ccall((:gsl_stats_min, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_minmax(min, max, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_minmax (double * min, double * max, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `void gsl_stats_minmax (double * min, double * max, const double data[], size_t stride, size_t n)`

> This function finds both the minimum and maximum values `min`, `max`
> in `data` in a single pass.

"""
function stats_minmax(min, max, data, stride, n)
    ccall((:gsl_stats_minmax, libgsl), Cvoid, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t), min, max, data, stride, n)
end

@doc md"""
    stats_max_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_max_index (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `size_t gsl_stats_max_index (const double data[], size_t stride, size_t n)`

> This function returns the index of the maximum value in `data`, a
> dataset of length `n` with stride `stride`. The maximum value is
> defined as the value of the element $x_i$ which satisfies
> $x_i \ge x_j$ for all $j$. When there are several equal maximum
> elements then the first one is chosen.

"""
function stats_max_index(data, stride, n)
    ccall((:gsl_stats_max_index, libgsl), Csize_t, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_min_index(data, stride, n) -> Csize_t

C signature:
`size_t gsl_stats_min_index (const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `size_t gsl_stats_min_index (const double data[], size_t stride, size_t n)`

> This function returns the index of the minimum value in `data`, a
> dataset of length `n` with stride `stride`. The minimum value is
> defined as the value of the element $x_i$ which satisfies
> $x_i \ge x_j$ for all $j$. When there are several equal minimum
> elements then the first one is chosen.

"""
function stats_min_index(data, stride, n)
    ccall((:gsl_stats_min_index, libgsl), Csize_t, (Ref{Cdouble}, Csize_t, Csize_t), data, stride, n)
end

@doc md"""
    stats_minmax_index(min_index, max_index, data, stride, n) -> Cvoid

C signature:
`void gsl_stats_minmax_index (size_t * min_index, size_t * max_index, const double data[], const size_t stride, const size_t n)`

GSL documentation:

### `void gsl_stats_minmax_index (size_t * min_index, size_t * max_index, const double data[], size_t stride, size_t n)`

> This function returns the indexes `min_index`, `max_index` of the
> minimum and maximum values in `data` in a single pass.

"""
function stats_minmax_index(min_index, max_index, data, stride, n)
    ccall((:gsl_stats_minmax_index, libgsl), Cvoid, (Ref{Csize_t}, Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), min_index, max_index, data, stride, n)
end

@doc md"""
    stats_select(data, stride, n, k) -> Cdouble

C signature:
`double gsl_stats_select(double data[], const size_t stride, const size_t n, const size_t k)`

GSL documentation:

### `gsl_stats_select(double data[], const size_t stride, const size_t n, const size_t k)`

> This function finds the `k`-th smallest element of the input array
> `data` of length `n` and stride `stride` using the quickselect method.
> The algorithm rearranges the elements of `data` and so the input array
> is not preserved on output.

"""
function stats_select(data, stride, n, k)
    ccall((:gsl_stats_select, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), data, stride, n, k)
end

@doc md"""
    stats_median_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_median_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_median_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n)`

> This function returns the median value of `sorted_data`, a dataset of
> length `n` with stride `stride`. The elements of the array must be in
> ascending numerical order. There are no checks to see whether the data
> are sorted, so the function `gsl_sort` should always be used first.
>
> When the dataset has an odd number of elements the median is the value
> of element $(n-1)/2$. When the dataset has an even number of elements
> the median is the mean of the two nearest middle values, elements
> $(n-1)/2$ and $n/2$. Since the algorithm for computing the median
> involves interpolation this function always returns a floating-point
> number, even for integer data types.

"""
function stats_median_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_median_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_median(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_median (double sorted_data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_median (double data[], const size_t stride, const size_t n)`

> This function returns the median value of `data`, a dataset of length
> `n` with stride `stride`. The median is found using the quickselect
> algorithm. The input array does not need to be sorted, but note that
> the algorithm rearranges the array and so the input is not preserved
> on output.

"""
function stats_median(sorted_data, stride, n)
    ccall((:gsl_stats_median, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_quantile_from_sorted_data(sorted_data, stride, n, f) -> Cdouble

C signature:
`double gsl_stats_quantile_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, const double f)`

GSL documentation:

### `double gsl_stats_quantile_from_sorted_data (const double sorted_data[], size_t stride, size_t n, double f)`

> This function returns a quantile value of `sorted_data`, a
> double-precision array of length `n` with stride `stride`. The
> elements of the array must be in ascending numerical order. The
> quantile is determined by the `f`, a fraction between 0 and 1. For
> example, to compute the value of the 75th percentile `f` should have
> the value 0.75.
>
> There are no checks to see whether the data are sorted, so the
> function `gsl_sort` should always be used first.
>
> The quantile is found by interpolation, using the formula
>
> not texinfo
>
> $$\hbox{quantile} = (1 - \delta) x_i + \delta x_{i+1}$$
>
> texinfo
>
>     quantile = (1 - \delta) x_i + \delta x_{i+1}
>
> where $i$ is `floor((n - 1)f)` and $\delta$ is $(n-1)f - i$.
>
> Thus the minimum value of the array (`data[0*stride]`) is given by `f`
> equal to zero, the maximum value (`data[(n-1)*stride]`) is given by
> `f` equal to one and the median value is given by `f` equal to 0.5.
> Since the algorithm for computing quantiles involves interpolation
> this function always returns a floating-point number, even for integer
> data types.

"""
function stats_quantile_from_sorted_data(sorted_data, stride, n, f)
    ccall((:gsl_stats_quantile_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Cdouble), sorted_data, stride, n, f)
end

@doc md"""
    stats_trmean_from_sorted_data(trim, sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_trmean_from_sorted_data (const double trim, const double sorted_data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_trmean_from_sorted_data (const double alpha, const double sorted_data[], const size_t stride, const size_t n)`

> This function returns the trimmed mean of `sorted_data`, a dataset of
> length `n` with stride `stride`. The elements of the array must be in
> ascending numerical order. There are no checks to see whether the data
> are sorted, so the function `gsl_sort` should always be used first.
> The trimming factor $\alpha$ is given in `alpha`. If $\alpha \ge 0.5$,
> then the median of the input is returned.

"""
function stats_trmean_from_sorted_data(trim, sorted_data, stride, n)
    ccall((:gsl_stats_trmean_from_sorted_data, libgsl), Cdouble, (Cdouble, Ref{Cdouble}, Csize_t, Csize_t), trim, sorted_data, stride, n)
end

@doc md"""
    stats_gastwirth_from_sorted_data(sorted_data, stride, n) -> Cdouble

C signature:
`double gsl_stats_gastwirth_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n)`

GSL documentation:

### `double gsl_stats_gastwirth_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n)`

> This function returns the Gastwirth location estimator of
> `sorted_data`, a dataset of length `n` with stride `stride`. The
> elements of the array must be in ascending numerical order. There are
> no checks to see whether the data are sorted, so the function
> `gsl_sort` should always be used first.

"""
function stats_gastwirth_from_sorted_data(sorted_data, stride, n)
    ccall((:gsl_stats_gastwirth_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t), sorted_data, stride, n)
end

@doc md"""
    stats_mad0(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_mad0(const double data[], const size_t stride, const size_t n, double work[])`

GSL documentation:

### `double gsl_stats_mad0 (const double data[], const size_t stride, const size_t n, double work[])`



"""
function stats_mad0(data, stride, n, work)
    ccall((:gsl_stats_mad0, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_mad(data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_mad(const double data[], const size_t stride, const size_t n, double work[])`

GSL documentation:

### `double gsl_stats_mad (const double data[], const size_t stride, const size_t n, double work[])`

> These functions return the median absolute deviation of `data`, a
> dataset of length `n` and stride `stride`. The `mad0` function
> calculates
> $\textrm{median} \left\{ \left| x_i - \textrm{median} \left( x \right) \right| \right\}$
> (i.e. the $MAD$ statistic without the bias correction scale factor).
> These functions require additional workspace of size `n` provided in
> `work`.

"""
function stats_mad(data, stride, n, work)
    ccall((:gsl_stats_mad, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, work)
end

@doc md"""
    stats_Sn0_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_Sn0_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[])`

GSL documentation:

### `double gsl_stats_Sn0_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[])`



"""
function stats_Sn0_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_Sn0_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), sorted_data, stride, n, work)
end

@doc md"""
    stats_Sn_from_sorted_data(sorted_data, stride, n, work) -> Cdouble

C signature:
`double gsl_stats_Sn_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[])`

GSL documentation:

### `double gsl_stats_Sn_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[])`

> These functions return the $S_n$ statistic of `sorted_data`, a dataset
> of length `n` with stride `stride`. The elements of the array must be
> in ascending numerical order. There are no checks to see whether the
> data are sorted, so the function `gsl_sort` should always be used
> first. The `Sn0` function calculates
> $\textrm{median}_i \left\{ \textrm{median}_j \left( \left| x_i - x_j \right| \right) \right\}$
> (i.e. the $S_n$ statistic without the bias correction scale factors).
> These functions require additional workspace of size `n` provided in
> `work`.

"""
function stats_Sn_from_sorted_data(sorted_data, stride, n, work)
    ccall((:gsl_stats_Sn_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), sorted_data, stride, n, work)
end

@doc md"""
    stats_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_Qn0_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[], int work_int[])`

GSL documentation:

### `double gsl_stats_Qn0_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[], int work_int[])`

> double gsl\_stats\_Qn\_from\_sorted\_data (const double
> sorted\_data\[\], const size\_t stride, const size\_t n, double
> work\[\], int work\_int\[\])

> These functions return the $Q_n$ statistic of `sorted_data`, a dataset
> of length `n` with stride `stride`. The elements of the array must be
> in ascending numerical order. There are no checks to see whether the
> data are sorted, so the function `gsl_sort` should always be used
> first. The `Qn0` function calculates
> $\left\{ \left| x_i - x_j \right|, i < j \right\}_{(k)}$ (i.e. $Q_n$
> without the bias correction scale factors). These functions require
> additional workspace of size `3n` provided in `work` and integer
> workspace of size `5n` provided in `work_int`.

"""
function stats_Qn0_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_Qn0_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

@doc md"""
    stats_Qn_from_sorted_data(sorted_data, stride, n, work, work_int) -> Cdouble

C signature:
`double gsl_stats_Qn_from_sorted_data (const double sorted_data[], const size_t stride, const size_t n, double work[], int work_int[])`
"""
function stats_Qn_from_sorted_data(sorted_data, stride, n, work, work_int)
    ccall((:gsl_stats_Qn_from_sorted_data, libgsl), Cdouble, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cint}), sorted_data, stride, n, work, work_int)
end

