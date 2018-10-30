#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_double.h #####################################################


"""
    gsl_permute(p, data, stride, n) -> Cint

C signature:
`int gsl_permute (const size_t * p, double * data, const size_t stride, const size_t n)`
"""
function gsl_permute(p, data, stride, n)
    ccall((:gsl_permute, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

"""
    gsl_permute_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_inverse (const size_t * p, double * data, const size_t stride, const size_t n)`
"""
function gsl_permute_inverse(p, data, stride, n)
    ccall((:gsl_permute_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

