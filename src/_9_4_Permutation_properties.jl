#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 9.4 Permutation properties #
##############################
export permutation_size, permutation_data, permutation_valid


# This function returns the size of the permutation p.
#
#   Returns: Csize_t
function permutation_size(p::Ref{gsl_permutation})
    ccall( (:gsl_permutation_size, libgsl), Csize_t,
        (Ref{gsl_permutation}, ), p )
end


# This function returns a pointer to the array of elements in the permutation
# p.
#
#   Returns: Ptr{Csize_t}
function permutation_data(p::Ref{gsl_permutation})
    output_ptr = ccall( (:gsl_permutation_data, libgsl), Ptr{Csize_t},
        (Ref{gsl_permutation}, ), p )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function checks that the permutation p is valid.  The n elements should
# contain each of the numbers 0 to n-1 once and only once.
#
#   Returns: Cint
function permutation_valid(p::Ref{gsl_permutation})
    errno = ccall( (:gsl_permutation_valid, libgsl), Cint,
        (Ref{gsl_permutation}, ), p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
