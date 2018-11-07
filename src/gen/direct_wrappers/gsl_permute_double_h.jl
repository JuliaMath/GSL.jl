#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_double.h #####################################################


@doc md"""
    permute(p, data, stride, n) -> Cint

C signature:
`int gsl_permute (const size_t * p, double * data, const size_t stride, const size_t n)`

GSL documentation:

### `int gsl_permute (const size_t * p, double * data, size_t stride, size_t n)`

> This function applies the permutation `p` to the array `data` of size
> `n` with stride `stride`.

"""
function permute(p, data, stride, n)
    ccall((:gsl_permute, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_inverse (const size_t * p, double * data, const size_t stride, const size_t n)`

GSL documentation:

### `int gsl_permute_inverse (const size_t * p, double * data, size_t stride, size_t n)`

> This function applies the inverse of the permutation `p` to the array
> `data` of size `n` with stride `stride`.

"""
function permute_inverse(p, data, stride, n)
    ccall((:gsl_permute_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

