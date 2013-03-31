#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################
# 39.2 Initializing the B-splines solver #
##########################################
export gsl_bspline_alloc, gsl_bspline_free, gsl_bspline_deriv_alloc,
       gsl_bspline_deriv_free


# This function allocates a workspace for computing B-splines of order k. The
# number of breakpoints is given by nbreak. This leads to n = nbreak + k - 2
# basis functions. Cubic B-splines are specified by k = 4. The size of the
# workspace is O(5k + nbreak).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_bspline_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_bspline_alloc{gsl_int<:Integer}(k::gsl_int, nbreak::gsl_int)
    ccall( (:gsl_bspline_alloc, :libgsl), Ptr{Void}, (Csize_t, Csize_t), k,
        nbreak )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_bspline_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_free(w::Ptr{Void})
    ccall( (:gsl_bspline_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function allocates a workspace for computing the derivatives of a
# B-spline basis function of order k.  The size of the workspace is O(2k^2).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_bspline_deriv_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_bspline_deriv_alloc{gsl_int<:Integer}(k::gsl_int)
    ccall( (:gsl_bspline_deriv_alloc, :libgsl), Ptr{Void}, (Csize_t, ), k )
end


# This function frees the memory associated with the derivative workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_bspline_deriv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_deriv_free(w::Ptr{Void})
    ccall( (:gsl_bspline_deriv_free, :libgsl), Void, (Ptr{Void}, ), w )
end
