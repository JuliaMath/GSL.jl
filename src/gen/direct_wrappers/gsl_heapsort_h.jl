#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_heapsort.h ###########################################################


"""
    gsl_heapsort(array, count, size, compare) -> Cvoid

C signature:
`void gsl_heapsort (void * array, size_t count, size_t size, gsl_comparison_fn_t compare)`
"""
function gsl_heapsort(array, count, size, compare)
    ccall((:gsl_heapsort, libgsl), Cvoid, (Ptr{Cvoid}, Csize_t, Csize_t, gsl_comparison_fn_t), array, count, size, compare)
end

"""
    gsl_heapsort_index(p, array, count, size, compare) -> Cint

C signature:
`int gsl_heapsort_index (size_t * p, const void * array, size_t count, size_t size, gsl_comparison_fn_t compare)`
"""
function gsl_heapsort_index(p, array, count, size, compare)
    ccall((:gsl_heapsort_index, libgsl), Cint, (Ref{Csize_t}, Ptr{Cvoid}, Csize_t, Csize_t, gsl_comparison_fn_t), p, array, count, size, compare)
end

