#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_double.h ##############################################


"""
    gsl_permute_matrix(p, A) -> Cint

C signature:
`int gsl_permute_matrix (const gsl_permutation * p, gsl_matrix * A)`
"""
function gsl_permute_matrix(p, A)
    ccall((:gsl_permute_matrix, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix}), p, A)
end

