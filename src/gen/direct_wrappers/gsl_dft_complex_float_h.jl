#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_dft_complex_float.h ##################################################


@doc md"""
    dft_complex_float_forward(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_float_forward (const float data[], const size_t stride, const size_t n, float result[])`
"""
function dft_complex_float_forward(data, stride, n, result)
    ccall((:gsl_dft_complex_float_forward, libgsl), Cint, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}), data, stride, n, result)
end

@doc md"""
    dft_complex_float_backward(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_float_backward (const float data[], const size_t stride, const size_t n, float result[])`
"""
function dft_complex_float_backward(data, stride, n, result)
    ccall((:gsl_dft_complex_float_backward, libgsl), Cint, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}), data, stride, n, result)
end

@doc md"""
    dft_complex_float_inverse(data, stride, n, result) -> Cint

C signature:
`int gsl_dft_complex_float_inverse (const float data[], const size_t stride, const size_t n, float result[])`
"""
function dft_complex_float_inverse(data, stride, n, result)
    ccall((:gsl_dft_complex_float_inverse, libgsl), Cint, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}), data, stride, n, result)
end

@doc md"""
    dft_complex_float_transform(data, stride, n, result, sign) -> Cint

C signature:
`int gsl_dft_complex_float_transform (const float data[], const size_t stride, const size_t n, float result[], const gsl_fft_direction sign)`
"""
function dft_complex_float_transform(data, stride, n, result, sign)
    ccall((:gsl_dft_complex_float_transform, libgsl), Cint, (Ref{Cfloat}, Csize_t, Csize_t, Ref{Cfloat}, gsl_fft_direction), data, stride, n, result, sign)
end

