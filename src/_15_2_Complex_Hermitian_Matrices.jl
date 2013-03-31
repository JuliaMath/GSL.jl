#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 15.2 Complex Hermitian Matrices #
###################################
export gsl_eigen_herm_alloc, gsl_eigen_herm_free, gsl_eigen_herm,
       gsl_eigen_hermv_alloc, gsl_eigen_hermv_free, gsl_eigen_hermv


# This function allocates a workspace for computing eigenvalues of n-by-n
# complex hermitian matrices.  The size of the workspace is O(3n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_herm_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_herm_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_eigen_herm_alloc, :libgsl), Ptr{Void}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_herm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_herm_free(w::Ptr{Void})
    ccall( (:gsl_eigen_herm_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues of the complex hermitian matrix A.
# Additional workspace of the appropriate size must be provided in w.  The
# diagonal and lower triangular part of A are destroyed during the computation,
# but the strict upper triangular part is not referenced.  The imaginary parts
# of the diagonal are assumed to be zero and are not referenced. The
# eigenvalues are stored in the vector eval and are unordered.
# 
#   Returns: Cint
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_herm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_herm(A::Ptr{Void}, w::Ptr{Void})
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_eigen_herm, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}, Ptr{Void}), A, eval, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(eval)
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex hermitian matrices.  The size of the workspace
# is O(5n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_hermv_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_hermv_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_eigen_hermv_alloc, :libgsl), Ptr{Void}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_hermv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_hermv_free(w::Ptr{Void})
    ccall( (:gsl_eigen_hermv_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the complex
# hermitian matrix A.  Additional workspace of the appropriate size must be
# provided in w.  The diagonal and lower triangular part of A are destroyed
# during the computation, but the strict upper triangular part is not
# referenced. The imaginary parts of the diagonal are assumed to be zero and
# are not referenced.  The eigenvalues are stored in the vector eval and are
# unordered.  The corresponding complex eigenvectors are stored in the columns
# of the matrix evec.  For example, the eigenvector in the first column
# corresponds to the first eigenvalue.  The eigenvectors are guaranteed to be
# mutually orthogonal and normalised to unit magnitude.
# 
#   Returns: Cint
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type evec::Ptr{gsl_matrix_complex}
#XXX Coerced type for evec::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_hermv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_hermv(A::Ptr{Void}, evec::Ptr{Void}, w::Ptr{Void})
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_eigen_hermv, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}, Ptr{Void}, Ptr{Void}), A, eval, evec, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(eval)
end
