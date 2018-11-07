#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_uint.h ################################################


@doc md"""
    permute_matrix_uint(p, A) -> Cint

C signature:
`int gsl_permute_matrix_uint (const gsl_permutation * p, gsl_matrix_uint * A)`
"""
function permute_matrix_uint(p, A)
    ccall((:gsl_permute_matrix_uint, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_uint}), p, A)
end

