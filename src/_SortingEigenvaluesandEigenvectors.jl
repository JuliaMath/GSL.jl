#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 15.7 Sorting Eigenvalues and Eigenvectors #
#############################################
export gsl_eigen_symmv_sort, gsl_eigen_symmv_sort, gsl_eigen_symmv_sort,
       gsl_eigen_symmv_sort, gsl_eigen_hermv_sort, gsl_eigen_nonsymmv_sort,
       gsl_eigen_gensymmv_sort, gsl_eigen_genhermv_sort, gsl_eigen_genv_sort


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding real eigenvectors stored in the columns of the matrix
# evec into ascending or descending order according to the value of the
# parameter sort_type,             GSL_EIGEN_SORT_VAL_ASCascending order in
# numerical value GSL_EIGEN_SORT_VAL_DESCdescending order in numerical value
# GSL_EIGEN_SORT_ABS_ASCascending order in magnitude
# GSL_EIGEN_SORT_ABS_DESCdescending order in magnitude
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_symmv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_symmv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_symmv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_symmv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_symmv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_symmv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_symmv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_symmv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_hermv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix_complex}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_hermv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix_complex}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.  Only GSL_EIGEN_SORT_ABS_ASC and
# GSL_EIGEN_SORT_ABS_DESC are supported due to the eigenvalues being complex.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector_complex}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_nonsymmv_sort (eval::Ptr{gsl_vector_complex}, evec::Ptr{gsl_matrix_complex}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_nonsymmv_sort, "libgsl"), Cint,
###         (Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}, gsl_eigen_sort_t),
###         eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding real eigenvectors stored in the columns of the matrix
# evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_gensymmv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_gensymmv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
### #   Returns: Cint
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_genhermv_sort (eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix_complex}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_genhermv_sort, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix_complex}, gsl_eigen_sort_t), eval, evec, sort_type )
### end


### Function uses unknown type; disabled
### # This function simultaneously sorts the eigenvalues stored in the vectors
# (alpha, beta) and the corresponding complex eigenvectors stored in the
# columns of the matrix evec into ascending or descending order according to
# the value of the parameter sort_type as shown above. Only
# GSL_EIGEN_SORT_ABS_ASC and GSL_EIGEN_SORT_ABS_DESC are supported due to the
# eigenvalues being complex.
# 
### #   Returns: Cint
### #XXX Unknown input type alpha::Ptr{gsl_vector_complex}
### #XXX Unknown input type beta::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type sort_type::gsl_eigen_sort_t
### function gsl_eigen_genv_sort (alpha::Ptr{gsl_vector_complex}, beta::Ptr{gsl_vector}, evec::Ptr{gsl_matrix_complex}, sort_type::gsl_eigen_sort_t)
###     ccall( (:gsl_eigen_genv_sort, "libgsl"), Cint,
###         (Ptr{gsl_vector_complex}, Ptr{gsl_vector}, Ptr{gsl_matrix_complex},
###         gsl_eigen_sort_t), alpha, beta, evec, sort_type )
### end