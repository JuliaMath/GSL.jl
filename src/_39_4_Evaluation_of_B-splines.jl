#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 39.4 Evaluation of B-splines #
################################
export bspline_eval, bspline_eval_nonzero, bspline_ncoeffs


# This function evaluates all B-spline basis functions at the position x and
# stores them in the vector B, so that the i-th element is B_i(x). The vector B
# must be of length n = nbreak + k - 2.  This value may also be obtained by
# calling gsl_bspline_ncoeffs.  Computing all the basis functions at once is
# more efficient than computing them individually, due to the nature of the
# defining recurrence relation.
# 
#   Returns: Cint
function bspline_eval(x::Real)
    B = Ref{gsl_vector}()
    w = Ref{gsl_bspline_workspace}()
    errno = ccall( (:gsl_bspline_eval, libgsl), Cint, (Cdouble,
        Ref{gsl_vector}, Ref{gsl_bspline_workspace}), x, B, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return B[], w[]
end
Compat.@dep_vectorize_1arg Number bspline_eval


# This function evaluates all potentially nonzero B-spline basis functions at
# the position x and stores them in the vector Bk, so that the i-th element is
# B_(istart+i)(x).  The last element of Bk is  B_(iend)(x).  The vector Bk must
# be of length k.  By returning only the nonzero basis functions, this function
# allows quantities involving linear combinations of the B_i(x) to be computed
# without unnecessary terms (such linear combinations occur, for example, when
# evaluating an interpolated function).
# 
#   Returns: Cint
function bspline_eval_nonzero(x::Real)
    Bk = Ref{gsl_vector}()
    istart = Ref{Csize_t}()
    iend = Ref{Csize_t}()
    w = Ref{gsl_bspline_workspace}()
    errno = ccall( (:gsl_bspline_eval_nonzero, libgsl), Cint, (Cdouble,
        Ref{gsl_vector}, Ref{Csize_t}, Ref{Csize_t},
        Ref{gsl_bspline_workspace}), x, Bk, istart, iend, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return Bk[], istart[], iend[], w[]
end
Compat.@dep_vectorize_1arg Number bspline_eval_nonzero


# This function returns the number of B-spline coefficients given by n = nbreak
# + k - 2.
# 
#   Returns: Csize_t
function bspline_ncoeffs(w::Ref{gsl_bspline_workspace})
    ccall( (:gsl_bspline_ncoeffs, libgsl), Csize_t,
        (Ref{gsl_bspline_workspace}, ), w )
end
