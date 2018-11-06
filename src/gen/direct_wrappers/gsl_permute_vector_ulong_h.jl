#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_ulong.h ###############################################


@doc md"""
    permute_vector_ulong(p, v) -> Cint

C signature:
`int gsl_permute_vector_ulong (const gsl_permutation * p, gsl_vector_ulong * v)`
"""
function permute_vector_ulong(p, v)
    ccall((:gsl_permute_vector_ulong, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_ulong}), p, v)
end

@doc md"""
    permute_vector_ulong_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_ulong_inverse (const gsl_permutation * p, gsl_vector_ulong * v)`
"""
function permute_vector_ulong_inverse(p, v)
    ccall((:gsl_permute_vector_ulong_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_ulong}), p, v)
end

