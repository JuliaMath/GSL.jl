#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_ulong.h ###############################################


@doc md"""
    permute_matrix_ulong(p, A) -> Cint

C signature:
`int gsl_permute_matrix_ulong (const gsl_permutation * p, gsl_matrix_ulong * A)`
"""
function permute_matrix_ulong(p, A)
    ccall((:gsl_permute_matrix_ulong, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_ulong}), p, A)
end

