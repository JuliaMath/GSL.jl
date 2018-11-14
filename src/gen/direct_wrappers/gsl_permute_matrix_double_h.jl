#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_double.h ##############################################


@doc md"""
    permute_matrix(p, A) -> Cint

C signature:
`int gsl_permute_matrix (const gsl_permutation * p, gsl_matrix * A)`

GSL documentation:

### `int gsl_permute_matrix (const gsl_permutation * p, gsl_matrix * A)`

> This function applies the permutation `p` to the matrix `A` from the
> right, $A' = A P$. The $j$-th column of the permutation matrix $P$ is
> given by the $p_j$-th column of the identity matrix. This effectively
> permutes the columns of `A` according to the permutation `p`, and so
> the number of columns of `A` must equal the size of the permutation
> `p`.

"""
function permute_matrix(p, A)
    ccall((:gsl_permute_matrix, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix}), p, A)
end

