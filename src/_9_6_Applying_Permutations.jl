#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 9.6 Applying Permutations #
#############################
export permute, permute_inverse, permute_vector, permute_vector_inverse,
       permutation_mul


# This function applies the permutation p to the array data of size n with
# stride stride.
# 
#   Returns: Cint
function permute(p_in::AbstractVector{tA}, stride::Integer) where {tA<:Integer}
    n = length(p_in)
    p = convert(Vector{Csize_t}, p_in)
    v = Ref{Cdouble}()
    errno = ccall( (:gsl_permute, libgsl), Cint, (Ref{Csize_t},
        Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return data[]
end


# This function applies the inverse of the permutation p to the array data of
# size n with stride stride.
# 
#   Returns: Cint
function permute_inverse(p_in::AbstractVector{tA}, stride::Integer) where {tA<:Integer}
    n = length(p_in)
    p = convert(Vector{Csize_t}, p_in)
    v = Ref{Cdouble}()
    errno = ccall( (:gsl_permute_inverse, libgsl), Cint, (Ref{Csize_t},
        Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return data[]
end


# This function applies the permutation p to the elements of the vector v,
# considered as a row-vector acted on by a permutation matrix from the right,
# v' = v P.  The j-th column of the permutation matrix P is given by the p_j-th
# column of the identity matrix. The permutation p and the vector v must have
# the same length.
# 
#   Returns: Cint
function permute_vector(p::Ref{gsl_permutation})
    v = Ref{gsl_vector}()
    errno = ccall( (:gsl_permute_vector, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_vector}), p, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return v[]
end


# This function applies the inverse of the permutation p to the elements of the
# vector v, considered as a row-vector acted on by an inverse permutation
# matrix from the right, v' = v P^T.  Note that for permutation matrices the
# inverse is the same as the transpose.  The j-th column of the permutation
# matrix P is given by the p_j-th column of the identity matrix. The
# permutation p and the vector v must have the same length.
# 
#   Returns: Cint
function permute_vector_inverse(p::Ref{gsl_permutation})
    v = Ref{gsl_vector}()
    errno = ccall( (:gsl_permute_vector_inverse, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_vector}), p, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return v[]
end


# This function combines the two permutations pa and pb into a single
# permutation p, where  p = pa * pb.  The permutation p is equivalent to
# applying pb first and then pa.
# 
#   Returns: Cint
function permutation_mul(pa::Ref{gsl_permutation}, pb::Ref{gsl_permutation})
    p = Ref{gsl_permutation}()
    errno = ccall( (:gsl_permutation_mul, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_permutation}, Ref{gsl_permutation}), p,
        pa, pb )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p[]
end
