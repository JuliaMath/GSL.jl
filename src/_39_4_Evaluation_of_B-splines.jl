#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 39.4 Evaluation of B-splines #
################################
export gsl_bspline_eval, gsl_bspline_eval_nonzero, gsl_bspline_ncoeffs


# This function evaluates all B-spline basis functions at the position x and
# stores them in the vector B, so that the i-th element is B_i(x). The vector B
# must be of length n = nbreak + k - 2.  This value may also be obtained by
# calling gsl_bspline_ncoeffs.  Computing all the basis functions at once is
# more efficient than computing them individually, due to the nature of the
# defining recurrence relation.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_bspline_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_eval(x::Cdouble, w::Ptr{Void})
    B = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_bspline_eval, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{Void}), x, B, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(B)
end


# This function evaluates all potentially nonzero B-spline basis functions at
# the position x and stores them in the vector Bk, so that the i-th element is
# B_(istart+i)(x).  The last element of Bk is  B_(iend)(x).  The vector Bk must
# be of length k.  By returning only the nonzero basis functions, this function
# allows quantities involving linear combinations of the B_i(x) to be computed
# without unnecessary terms (such linear combinations occur, for example, when
# evaluating an interpolated function).
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_bspline_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_eval_nonzero(x::Cdouble, w::Ptr{Void})
    Bk = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    istart = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    iend = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    gsl_errno = ccall( (:gsl_bspline_eval_nonzero, :libgsl), Cint,
        (Cdouble, Ptr{gsl_vector}, Ptr{Csize_t}, Ptr{Csize_t}, Ptr{Void}), x,
        Bk, istart, iend, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(Bk) ,unsafe_ref(istart) ,unsafe_ref(iend)
end


# This function returns the number of B-spline coefficients given by n = nbreak
# + k - 2.
# 
#   Returns: Csize_t
#XXX Unknown input type w::Ptr{gsl_bspline_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_ncoeffs(w::Ptr{Void})
    ccall( (:gsl_bspline_ncoeffs, :libgsl), Csize_t, (Ptr{Void}, ), w )
end
