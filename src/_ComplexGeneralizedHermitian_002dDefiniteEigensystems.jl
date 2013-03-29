#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################################
# 15.5 Complex Generalized Hermitian-Definite Eigensystems #
############################################################
export gsl_eigen_genherm_alloc, gsl_eigen_genherm_free, gsl_eigen_genherm,
       gsl_eigen_genhermv_alloc, gsl_eigen_genhermv_free, gsl_eigen_genhermv




# This function allocates a workspace for computing eigenvalues of n-by-n
# complex generalized hermitian-definite eigensystems. The size of the
# workspace is O(3n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_genherm_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_genherm_alloc (n::Csize_t)
    ccall( (:gsl_eigen_genherm_alloc, "libgsl"), Ptr{Void}, (Csize_t, ), n
        )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_genherm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genherm_free (w::Ptr{Void})
    ccall( (:gsl_eigen_genherm_free, "libgsl"), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues of the complex generalized hermitian-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_genherm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genherm (A::Ptr{Void}, B::Ptr{Void}, eval::Ptr{gsl_vector}, w::Ptr{Void})
    ccall( (:gsl_eigen_genherm, "libgsl"), Cint, (Ptr{Void}, Ptr{Void},
        Ptr{gsl_vector}, Ptr{Void}), A, B, eval, w )
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex generalized hermitian-definite eigensystems.
# The size of the workspace is O(5n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_genhermv_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_genhermv_alloc (n::Csize_t)
    ccall( (:gsl_eigen_genhermv_alloc, "libgsl"), Ptr{Void}, (Csize_t, ), n
        )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_genhermv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genhermv_free (w::Ptr{Void})
    ccall( (:gsl_eigen_genhermv_free, "libgsl"), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the complex
# generalized hermitian-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type evec::Ptr{gsl_matrix_complex}
#XXX Coerced type for evec::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_genhermv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genhermv (A::Ptr{Void}, B::Ptr{Void}, eval::Ptr{gsl_vector}, evec::Ptr{Void}, w::Ptr{Void})
    ccall( (:gsl_eigen_genhermv, "libgsl"), Cint, (Ptr{Void}, Ptr{Void},
        Ptr{gsl_vector}, Ptr{Void}, Ptr{Void}), A, B, eval, evec, w )
end
