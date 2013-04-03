#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 14.13 Tridiagonal Systems #
#############################
export linalg_solve_tridiag, linalg_solve_symm_tridiag,
       linalg_solve_cyc_tridiag, linalg_solve_symm_cyc_tridiag










# This function solves the general N-by-N system A x = b where A is tridiagonal
# ( N >= 2). The super-diagonal and sub-diagonal vectors e and f must be one
# element shorter than the diagonal vector diag.  The form of A for the 4-by-4
# case is shown below,                 A = ( d_0 e_0  0   0  )               (
# f_0 d_1 e_1  0  )               (  0  f_1 d_2 e_2 )               (  0   0
# f_2 d_3 )
# 
#   Returns: Cint
function linalg_solve_tridiag(diag::Ptr{gsl_vector}, e::Ptr{gsl_vector}, f::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_solve_tridiag, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector},
        Ptr{gsl_vector}), diag, e, f, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# This function solves the general N-by-N system A x = b where A is symmetric
# tridiagonal ( N >= 2).  The off-diagonal vector e must be one element shorter
# than the diagonal vector diag.  The form of A for the 4-by-4 case is shown
# below,                 A = ( d_0 e_0  0   0  )               ( e_0 d_1 e_1  0
# )               (  0  e_1 d_2 e_2 )               (  0   0  e_2 d_3 )
# 
#   Returns: Cint
function linalg_solve_symm_tridiag(diag::Ptr{gsl_vector}, e::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_solve_symm_tridiag, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        diag, e, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# This function solves the general N-by-N system A x = b where A is cyclic
# tridiagonal ( N >= 3).  The cyclic super-diagonal and sub-diagonal vectors e
# and f must have the same number of elements as the diagonal vector diag.  The
# form of A for the 4-by-4 case is shown below,                 A = ( d_0 e_0
# 0  f_3 )               ( f_0 d_1 e_1  0  )               (  0  f_1 d_2 e_2 )
# ( e_3  0  f_2 d_3 )
# 
#   Returns: Cint
function linalg_solve_cyc_tridiag(diag::Ptr{gsl_vector}, e::Ptr{gsl_vector}, f::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_solve_cyc_tridiag, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector},
        Ptr{gsl_vector}), diag, e, f, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# This function solves the general N-by-N system A x = b where A is symmetric
# cyclic tridiagonal ( N >= 3).  The cyclic off-diagonal vector e must have the
# same number of elements as the diagonal vector diag.  The form of A for the
# 4-by-4 case is shown below,                 A = ( d_0 e_0  0  e_3 )
# ( e_0 d_1 e_1  0  )               (  0  e_1 d_2 e_2 )               ( e_3  0
# e_2 d_3 )
# 
#   Returns: Cint
function linalg_solve_symm_cyc_tridiag(diag::Ptr{gsl_vector}, e::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_solve_symm_cyc_tridiag, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        diag, e, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end
