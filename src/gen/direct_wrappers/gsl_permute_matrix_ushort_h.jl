#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_ushort.h ##############################################


@doc md"""
    permute_matrix_ushort(p, A) -> Cint

C signature:
`int gsl_permute_matrix_ushort (const gsl_permutation * p, gsl_matrix_ushort * A)`
"""
function permute_matrix_ushort(p, A)
    ccall((:gsl_permute_matrix_ushort, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_ushort}), p, A)
end

