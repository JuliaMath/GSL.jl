#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 12.1 Sorting objects #
########################
export heapsort, heapsort_index








# This function sorts the count elements of the array array, each of size size,
# into ascending order using the comparison function compare.  The type of the
# comparison function is defined by,                 int (*gsl_comparison_fn_t)
# (const void * a,                                       const void * b)  A
# comparison function should return a negative integer if the first argument is
# less than the second argument, 0 if the two arguments are equal and a
# positive integer if the first argument is greater than the second argument.
# For example, the following function can be used to sort doubles into
# ascending numerical order.                 int           compare_doubles
# (const double * a,                            const double * b)           {
# if (*a > *b)                  return 1;               else if (*a < *b)
# return -1;               else                  return 0;           }  The
# appropriate function call to perform the sort is,
# gsl_heapsort (array, count, sizeof(double),
# compare_doubles);  Note that unlike qsort the heapsort algorithm cannot be
# made into a stable sort by pointer arithmetic.  The trick of comparing
# pointers for equal elements in the comparison function does not work for the
# heapsort algorithm.  The heapsort algorithm performs an internal
# rearrangement of the data which destroys its initial ordering.
#
#   Returns: Cvoid
function heapsort(array::Ref{Cvoid}, count::Integer, size::Integer, compare::gsl_comparison_fn_t)
    ccall( (:gsl_heapsort, libgsl), Cvoid, (Ref{Cvoid}, Csize_t, Csize_t,
        gsl_comparison_fn_t), array, count, size, compare )
end


# This function indirectly sorts the count elements of the array array, each of
# size size, into ascending order using the comparison function compare.  The
# resulting permutation is stored in p, an array of length n.  The elements of
# p give the index of the array element which would have been stored in that
# position if the array had been sorted in place.  The first element of p gives
# the index of the least element in array, and the last element of p gives the
# index of the greatest element in array.  The array itself is not changed.
#
#   Returns: Cint
function heapsort_index(array::Ref{Cvoid}, count::Integer, size::Integer, compare::gsl_comparison_fn_t)
    p = Ref{Csize_t}()
    errno = ccall( (:gsl_heapsort_index, libgsl), Cint, (Ref{Csize_t},
        Ref{Cvoid}, Csize_t, Csize_t, gsl_comparison_fn_t), p, array, count,
        size, compare )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p[]
end
