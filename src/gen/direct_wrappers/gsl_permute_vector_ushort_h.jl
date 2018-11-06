#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_ushort.h ##############################################


@doc md"""
    permute_vector_ushort(p, v) -> Cint

C signature:
`int gsl_permute_vector_ushort (const gsl_permutation * p, gsl_vector_ushort * v)`
"""
function permute_vector_ushort(p, v)
    ccall((:gsl_permute_vector_ushort, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_ushort}), p, v)
end

@doc md"""
    permute_vector_ushort_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_ushort_inverse (const gsl_permutation * p, gsl_vector_ushort * v)`
"""
function permute_vector_ushort_inverse(p, v)
    ccall((:gsl_permute_vector_ushort_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_ushort}), p, v)
end

