#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 31.2 Initialization #
#######################
export wavelet_alloc, wavelet_name, wavelet_free, wavelet_workspace_alloc,
       wavelet_workspace_free


# This function allocates and initializes a wavelet object of type T.  The
# parameter k selects the specific member of the wavelet family.  A null
# pointer is returned if insufficient memory is available or if a unsupported
# member is selected.
#
#   Returns: Ptr{gsl_wavelet}
function wavelet_alloc(T::Ref{gsl_wavelet_type}, k::Integer)
    output_ptr = ccall( (:gsl_wavelet_alloc, libgsl), Ptr{gsl_wavelet},
        (Ref{gsl_wavelet_type}, Csize_t), T, k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function returns a pointer to the name of the wavelet family for w.
#
#   Returns: Ptr{Cchar}
function wavelet_name(w::Ref{gsl_wavelet})
    output_string = output_ptr = ccall( (:gsl_wavelet_name, libgsl),
        Ptr{Cchar}, (Ref{gsl_wavelet}, ), w )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# This function frees the wavelet object w.
#
#   Returns: Void
function wavelet_free(w::Ref{gsl_wavelet})
    ccall( (:gsl_wavelet_free, libgsl), Void, (Ref{gsl_wavelet}, ), w )
end


# This function allocates a workspace for the discrete wavelet transform.  To
# perform a one-dimensional transform on n elements, a workspace of size n must
# be provided.  For two-dimensional transforms of n-by-n matrices it is
# sufficient to allocate a workspace of size n, since the transform operates on
# individual rows and columns. A null pointer is returned if insufficient
# memory is available.
#
#   Returns: Ptr{gsl_wavelet_workspace}
function wavelet_workspace_alloc(n::Integer)
    output_ptr = ccall( (:gsl_wavelet_workspace_alloc, libgsl),
        Ptr{gsl_wavelet_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number wavelet_workspace_alloc


# This function frees the allocated workspace work.
#
#   Returns: Void
function wavelet_workspace_free(work::Ref{gsl_wavelet_workspace})
    ccall( (:gsl_wavelet_workspace_free, libgsl), Void,
        (Ref{gsl_wavelet_workspace}, ), work )
end
