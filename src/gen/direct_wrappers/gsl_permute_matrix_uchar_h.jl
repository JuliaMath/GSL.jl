#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_uchar.h ###############################################


@doc md"""
    permute_matrix_uchar(p, A) -> Cint

C signature:
`int gsl_permute_matrix_uchar (const gsl_permutation * p, gsl_matrix_uchar * A)`
"""
function permute_matrix_uchar(p, A)
    ccall((:gsl_permute_matrix_uchar, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_uchar}), p, A)
end

