#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 31.2 Initialization #
#######################
export gsl_wavelet_alloc, gsl_wavelet_name, gsl_wavelet_free,
       gsl_wavelet_workspace_alloc, gsl_wavelet_workspace_free


# This function allocates and initializes a wavelet object of type T.  The
# parameter k selects the specific member of the wavelet family.  A null
# pointer is returned if insufficient memory is available or if a unsupported
# member is selected.
# 
#   Returns: Ptr{gsl_wavelet}
function gsl_wavelet_alloc(T::Ptr{gsl_wavelet_type}, k::Integer)
    ccall( (:gsl_wavelet_alloc, :libgsl), Ptr{gsl_wavelet},
        (Ptr{gsl_wavelet_type}, Csize_t), T, k )
end


# This function returns a pointer to the name of the wavelet family for w.
# 
#   Returns: Ptr{Cchar}
function gsl_wavelet_name(w::Ptr{gsl_wavelet})
    output_string = ccall( (:gsl_wavelet_name, :libgsl), Ptr{Cchar},
        (Ptr{gsl_wavelet}, ), w )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# This function frees the wavelet object w.
# 
#   Returns: Void
function gsl_wavelet_free(w::Ptr{gsl_wavelet})
    ccall( (:gsl_wavelet_free, :libgsl), Void, (Ptr{gsl_wavelet}, ), w )
end


# This function allocates a workspace for the discrete wavelet transform.  To
# perform a one-dimensional transform on n elements, a workspace of size n must
# be provided.  For two-dimensional transforms of n-by-n matrices it is
# sufficient to allocate a workspace of size n, since the transform operates on
# individual rows and columns. A null pointer is returned if insufficient
# memory is available.
# 
#   Returns: Ptr{gsl_wavelet_workspace}
function gsl_wavelet_workspace_alloc(n::Integer)
    ccall( (:gsl_wavelet_workspace_alloc, :libgsl),
        Ptr{gsl_wavelet_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number gsl_wavelet_workspace_alloc


# This function frees the allocated workspace work.
# 
#   Returns: Void
function gsl_wavelet_workspace_free(work::Ptr{gsl_wavelet_workspace})
    ccall( (:gsl_wavelet_workspace_free, :libgsl), Void,
        (Ptr{gsl_wavelet_workspace}, ), work )
end
