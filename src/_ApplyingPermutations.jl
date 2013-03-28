#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 9.6 Applying Permutations #
#############################
export gsl_permute, gsl_permute_inverse, gsl_permute_vector,
       gsl_permute_vector_inverse, gsl_permutation_mul


# This function applies the permutation p to the array data of size n with
# stride stride.
# 
#   Returns: Cint
function gsl_permute (p::Ptr{Csize_t}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_permute, "libgsl"), Cint, (Ptr{Csize_t}, Ptr{Cdouble},
        Csize_t, Csize_t), p, data, stride, n )
end


# This function applies the inverse of the permutation p to the array data of
# size n with stride stride.
# 
#   Returns: Cint
function gsl_permute_inverse (p::Ptr{Csize_t}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_permute_inverse, "libgsl"), Cint, (Ptr{Csize_t},
        Ptr{Cdouble}, Csize_t, Csize_t), p, data, stride, n )
end


### Function uses unknown type; disabled
### # This function applies the permutation p to the elements of the vector v,
# considered as a row-vector acted on by a permutation matrix from the right,
# v' = v P.  The j-th column of the permutation matrix P is given by the p_j-th
# column of the identity matrix. The permutation p and the vector v must have
# the same length.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_permute_vector (p::Ptr{gsl_permutation}, v::Ptr{gsl_vector})
###     ccall( (:gsl_permute_vector, "libgsl"), Cint, (Ptr{gsl_permutation},
###         Ptr{gsl_vector}), p, v )
### end


### Function uses unknown type; disabled
### # This function applies the inverse of the permutation p to the elements of the
# vector v, considered as a row-vector acted on by an inverse permutation
# matrix from the right, v' = v P^T.  Note that for permutation matrices the
# inverse is the same as the transpose.  The j-th column of the permutation
# matrix P is given by the p_j-th column of the identity matrix. The
# permutation p and the vector v must have the same length.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_permute_vector_inverse (p::Ptr{gsl_permutation}, v::Ptr{gsl_vector})
###     ccall( (:gsl_permute_vector_inverse, "libgsl"), Cint,
###         (Ptr{gsl_permutation}, Ptr{gsl_vector}), p, v )
### end


### Function uses unknown type; disabled
### # This function combines the two permutations pa and pb into a single
# permutation p, where  p = pa * pb.  The permutation p is equivalent to
# applying pb first and then pa.
# 
### #   {$@var{p} = @var{pa} \ast @var{pb}$} 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### #XXX Unknown input type pa::Ptr{gsl_permutation}
### #XXX Unknown input type pb::Ptr{gsl_permutation}
### function gsl_permutation_mul (p::Ptr{gsl_permutation}, pa::Ptr{gsl_permutation}, pb::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_mul, "libgsl"), Cint, (Ptr{gsl_permutation},
###         Ptr{gsl_permutation}, Ptr{gsl_permutation}), p, pa, pb )
### end