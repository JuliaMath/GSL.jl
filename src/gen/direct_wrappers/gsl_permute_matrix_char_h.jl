#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_char.h ################################################


@doc md"""
    permute_matrix_char(p, A) -> Cint

C signature:
`int gsl_permute_matrix_char (const gsl_permutation * p, gsl_matrix_char * A)`
"""
function permute_matrix_char(p, A)
    ccall((:gsl_permute_matrix_char, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_char}), p, A)
end

