#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_long.h ################################################


@doc md"""
    permute_matrix_long(p, A) -> Cint

C signature:
`int gsl_permute_matrix_long (const gsl_permutation * p, gsl_matrix_long * A)`
"""
function permute_matrix_long(p, A)
    ccall((:gsl_permute_matrix_long, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_long}), p, A)
end

