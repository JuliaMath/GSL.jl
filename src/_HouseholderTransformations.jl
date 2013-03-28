#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 14.11 Householder Transformations #
#####################################
export gsl_linalg_householder_transform,
       gsl_linalg_complex_householder_transform, gsl_linalg_householder_hm,
       gsl_linalg_complex_householder_hm, gsl_linalg_householder_mh,
       gsl_linalg_complex_householder_mh, gsl_linalg_householder_hv,
       gsl_linalg_complex_householder_hv


### Function uses unknown type; disabled
### # This function prepares a Householder transformation P = I - \tau v v^T which
# can be used to zero all the elements of the input vector except the first.
# On output the transformation is stored in the vector v and the scalar \tau is
# returned.
# 
### #   Returns: Cdouble
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_linalg_householder_transform (v::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_householder_transform, "libgsl"), Cdouble,
###         (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # This function prepares a Householder transformation P = I - \tau v v^T which
# can be used to zero all the elements of the input vector except the first.
# On output the transformation is stored in the vector v and the scalar \tau is
# returned.
# 
### #   Returns: gsl_complex
### #XXX Unknown input type v::Ptr{gsl_vector_complex}
### #XXX Unknown output type gsl_complex
### function gsl_linalg_complex_householder_transform (v::Ptr{gsl_vector_complex})
###     ccall( (:gsl_linalg_complex_householder_transform, "libgsl"),
###         gsl_complex, (Ptr{gsl_vector_complex}, ), v )
### end


### Function uses unknown type; disabled
### # This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the left-hand side of the matrix A. On output the result P A
# is stored in A.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_linalg_householder_hm (tau::Cdouble, v::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_householder_hm, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_vector}, Ptr{gsl_matrix}), tau, v, A )
### end


### Function uses unknown type; disabled
### # This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the left-hand side of the matrix A. On output the result P A
# is stored in A.
# 
### #   Returns: Cint
### #XXX Unknown input type tau::gsl_complex
### #XXX Unknown input type v::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_linalg_complex_householder_hm (tau::gsl_complex, v::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_linalg_complex_householder_hm, "libgsl"), Cint,
###         (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), tau,
###         v, A )
### end


### Function uses unknown type; disabled
### # This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the right-hand side of the matrix A. On output the result A P
# is stored in A.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_linalg_householder_mh (tau::Cdouble, v::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_householder_mh, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_vector}, Ptr{gsl_matrix}), tau, v, A )
### end


### Function uses unknown type; disabled
### # This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the right-hand side of the matrix A. On output the result A P
# is stored in A.
# 
### #   Returns: Cint
### #XXX Unknown input type tau::gsl_complex
### #XXX Unknown input type v::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_linalg_complex_householder_mh (tau::gsl_complex, v::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_linalg_complex_householder_mh, "libgsl"), Cint,
###         (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), tau,
###         v, A )
### end


### Function uses unknown type; disabled
### # This function applies the Householder transformation P defined by the scalar
# tau and the vector v to the vector w.  On output the result P w is stored in
# w.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### #XXX Unknown input type w::Ptr{gsl_vector}
### function gsl_linalg_householder_hv (tau::Cdouble, v::Ptr{gsl_vector}, w::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_householder_hv, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_vector}, Ptr{gsl_vector}), tau, v, w )
### end


### Function uses unknown type; disabled
### # This function applies the Householder transformation P defined by the scalar
# tau and the vector v to the vector w.  On output the result P w is stored in
# w.
# 
### #   Returns: Cint
### #XXX Unknown input type tau::gsl_complex
### #XXX Unknown input type v::Ptr{gsl_vector_complex}
### #XXX Unknown input type w::Ptr{gsl_vector_complex}
### function gsl_linalg_complex_householder_hv (tau::gsl_complex, v::Ptr{gsl_vector_complex}, w::Ptr{gsl_vector_complex})
###     ccall( (:gsl_linalg_complex_householder_hv, "libgsl"), Cint,
###         (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), tau,
###         v, w )
### end