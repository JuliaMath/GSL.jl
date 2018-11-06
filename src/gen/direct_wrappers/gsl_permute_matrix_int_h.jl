#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_int.h #################################################


@doc md"""
    permute_matrix_int(p, A) -> Cint

C signature:
`int gsl_permute_matrix_int (const gsl_permutation * p, gsl_matrix_int * A)`
"""
function permute_matrix_int(p, A)
    ccall((:gsl_permute_matrix_int, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_int}), p, A)
end

