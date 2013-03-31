#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 9.3 Accessing permutation elements #
######################################
export gsl_permutation_get, gsl_permutation_swap


# This function returns the value of the i-th element of the permutation p.  If
# i lies outside the allowed range of 0 to n-1 then the error handler is
# invoked and 0 is returned.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: Csize_t
function gsl_permutation_get{gsl_int<:Integer}(p::Ptr{gsl_permutation}, i::gsl_int)
    ccall( (:gsl_permutation_get, :libgsl), Csize_t, (Ptr{gsl_permutation},
        Csize_t), p, i )
end


# This function exchanges the i-th and j-th elements of the permutation p.
# 
#   Returns: Cint
function gsl_permutation_swap{gsl_int<:Integer}(i::gsl_int, j::gsl_int)
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    gsl_errno = ccall( (:gsl_permutation_swap, :libgsl), Cint,
        (Ptr{gsl_permutation}, Csize_t, Csize_t), p, i, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(p)
end
