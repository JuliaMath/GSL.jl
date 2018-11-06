#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_short.h ###############################################


@doc md"""
    permute_matrix_short(p, A) -> Cint

C signature:
`int gsl_permute_matrix_short (const gsl_permutation * p, gsl_matrix_short * A)`
"""
function permute_matrix_short(p, A)
    ccall((:gsl_permute_matrix_short, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_short}), p, A)
end

