#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_double.h ##############################################


@doc md"""
    permute_vector(p, v) -> Cint

C signature:
`int gsl_permute_vector (const gsl_permutation * p, gsl_vector * v)`

GSL documentation:

### `int gsl_permute_vector (const gsl_permutation * p, gsl_vector * v)`

> This function applies the permutation `p` to the elements of the
> vector `v`, considered as a row-vector acted on by a permutation
> matrix from the right, $v' = v P$. The $j$-th column of the
> permutation matrix $P$ is given by the $p_j$-th column of the identity
> matrix. The permutation `p` and the vector `v` must have the same
> length.

"""
function permute_vector(p, v)
    ccall((:gsl_permute_vector, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector}), p, v)
end

@doc md"""
    permute_vector_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_inverse (const gsl_permutation * p, gsl_vector * v)`

GSL documentation:

### `int gsl_permute_vector_inverse (const gsl_permutation * p, gsl_vector * v)`

> This function applies the inverse of the permutation `p` to the
> elements of the vector `v`, considered as a row-vector acted on by an
> inverse permutation matrix from the right, $v' = v P^T$. Note that for
> permutation matrices the inverse is the same as the transpose. The
> $j$-th column of the permutation matrix $P$ is given by the $p_j$-th
> column of the identity matrix. The permutation `p` and the vector `v`
> must have the same length.

"""
function permute_vector_inverse(p, v)
    ccall((:gsl_permute_vector_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector}), p, v)
end

