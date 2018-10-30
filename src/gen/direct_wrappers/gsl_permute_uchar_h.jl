#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_uchar.h ######################################################


"""
    gsl_permute_uchar(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_uchar (const size_t * p, unsigned char * data, const size_t stride, const size_t n)`
"""
function gsl_permute_uchar(p, data, stride, n)
    ccall((:gsl_permute_uchar, libgsl), Cint, (Ref{Csize_t}, Ref{Cuchar}, Csize_t, Csize_t), p, data, stride, n)
end

"""
    gsl_permute_uchar_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_uchar_inverse (const size_t * p, unsigned char * data, const size_t stride, const size_t n)`
"""
function gsl_permute_uchar_inverse(p, data, stride, n)
    ccall((:gsl_permute_uchar_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cuchar}, Csize_t, Csize_t), p, data, stride, n)
end

