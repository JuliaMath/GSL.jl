#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_dft_complex.h ########################################################


@doc md"""
    dft_complex_forward(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_forward (const double data[], const size_t stride, const size_t n, double result[])`
"""
function dft_complex_forward(data, stride, n, result)
    ccall((:gsl_dft_complex_forward, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, result)
end

@doc md"""
    dft_complex_backward(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_backward (const double data[], const size_t stride, const size_t n, double result[])`
"""
function dft_complex_backward(data, stride, n, result)
    ccall((:gsl_dft_complex_backward, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, result)
end

@doc md"""
    dft_complex_inverse(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_inverse (const double data[], const size_t stride, const size_t n, double result[])`
"""
function dft_complex_inverse(data, stride, n, result)
    ccall((:gsl_dft_complex_inverse, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}), data, stride, n, result)
end

@doc md"""
    dft_complex_transform(data, stride, n, result, sign) -> Cint

C signature:
`int gsl_dft_complex_transform (const double data[], const size_t stride, const size_t n, double result[], const gsl_fft_direction sign)`
"""
function dft_complex_transform(data, stride, n, result, sign)
    ccall((:gsl_dft_complex_transform, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, gsl_fft_direction), data, stride, n, result, sign)
end

