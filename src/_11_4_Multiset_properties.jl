#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 11.4 Multiset properties #
############################
export multiset_n, multiset_k, multiset_data, multiset_valid


# This function returns the range (n) of the multiset c.
# 
#   Returns: Csize_t
function multiset_n(c::Ref{gsl_multiset})
    ccall( (:gsl_multiset_n, libgsl), Csize_t, (Ref{gsl_multiset}, ), c )
end


# This function returns the number of elements (k) in the multiset c.
# 
#   Returns: Csize_t
function multiset_k(c::Ref{gsl_multiset})
    ccall( (:gsl_multiset_k, libgsl), Csize_t, (Ref{gsl_multiset}, ), c )
end


# This function returns a pointer to the array of elements in the multiset c.
# 
#   Returns: Ref{Csize_t}
function multiset_data(c::Ref{gsl_multiset})
    output_ptr = ccall( (:gsl_multiset_data, libgsl), Ref{Csize_t},
        (Ref{gsl_multiset}, ), c )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function checks that the multiset c is valid.  The k elements should lie
# in the range 0 to n-1, with each value occurring in nondecreasing order.
# 
#   Returns: Cint
function multiset_valid()
    c = Ref{gsl_multiset}()
    errno = ccall( (:gsl_multiset_valid, libgsl), Cint,
        (Ref{gsl_multiset}, ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c[]
end
