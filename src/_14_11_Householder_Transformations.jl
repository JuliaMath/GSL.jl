#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 14.11 Householder Transformations #
#####################################
export linalg_householder_transform, linalg_complex_householder_transform,
       linalg_householder_hm, linalg_complex_householder_hm,
       linalg_householder_mh, linalg_complex_householder_mh,
       linalg_householder_hv, linalg_complex_householder_hv




# This function prepares a Householder transformation P = I - \tau v v^T which
# can be used to zero all the elements of the input vector except the first.
# On output the transformation is stored in the vector v and the scalar \tau is
# returned.
# 
#   Returns: Cdouble
function linalg_householder_transform(v::Ptr{gsl_vector})
    ccall( (:gsl_linalg_householder_transform, :libgsl), Cdouble,
        (Ptr{gsl_vector}, ), v )
end


# This function prepares a Householder transformation P = I - \tau v v^T which
# can be used to zero all the elements of the input vector except the first.
# On output the transformation is stored in the vector v and the scalar \tau is
# returned.
# 
#   Returns: gsl_complex
function linalg_complex_householder_transform(v::Ptr{gsl_vector_complex})
    ccall( (:gsl_linalg_complex_householder_transform, :libgsl),
        gsl_complex, (Ptr{gsl_vector_complex}, ), v )
end


# This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the left-hand side of the matrix A. On output the result P A
# is stored in A.
# 
#   Returns: Cint
function linalg_householder_hm(tau::Real, v::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_householder_hm, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_matrix}), tau, v, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the left-hand side of the matrix A. On output the result P A
# is stored in A.
# 
#   Returns: Cint
function linalg_complex_householder_hm(tau::gsl_complex, v::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_linalg_complex_householder_hm, :libgsl), Cint,
        (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), tau,
        v, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the right-hand side of the matrix A. On output the result A P
# is stored in A.
# 
#   Returns: Cint
function linalg_householder_mh(tau::Real, v::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_householder_mh, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_matrix}), tau, v, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# This function applies the Householder matrix P defined by the scalar tau and
# the vector v to the right-hand side of the matrix A. On output the result A P
# is stored in A.
# 
#   Returns: Cint
function linalg_complex_householder_mh(tau::gsl_complex, v::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_linalg_complex_householder_mh, :libgsl), Cint,
        (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), tau,
        v, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# This function applies the Householder transformation P defined by the scalar
# tau and the vector v to the vector w.  On output the result P w is stored in
# w.
# 
#   Returns: Cint
function linalg_householder_hv(tau::Real, v::Ptr{gsl_vector})
    w = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_householder_hv, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_vector}), tau, v, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(w)[1]
end


# This function applies the Householder transformation P defined by the scalar
# tau and the vector v to the vector w.  On output the result P w is stored in
# w.
# 
#   Returns: Cint
function linalg_complex_householder_hv(tau::gsl_complex, v::Ptr{gsl_vector_complex})
    w = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_linalg_complex_householder_hv, :libgsl), Cint,
        (gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), tau,
        v, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(w)[1]
end
