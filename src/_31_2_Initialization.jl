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
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_wavelet_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_wavelet}
#XXX Coerced type for output Ptr{Void}
function gsl_wavelet_alloc{gsl_int<:Integer}(T::Ptr{Void}, k::gsl_int)
    ccall( (:gsl_wavelet_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, Csize_t),
        T, k )
end


# This function returns a pointer to the name of the wavelet family for w.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
function gsl_wavelet_name(w::Ptr{Void})
    output_string = ccall( (:gsl_wavelet_name, :libgsl), Ptr{Cchar},
        (Ptr{Void}, ), w )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# This function frees the wavelet object w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
function gsl_wavelet_free(w::Ptr{Void})
    ccall( (:gsl_wavelet_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function allocates a workspace for the discrete wavelet transform.  To
# perform a one-dimensional transform on n elements, a workspace of size n must
# be provided.  For two-dimensional transforms of n-by-n matrices it is
# sufficient to allocate a workspace of size n, since the transform operates on
# individual rows and columns. A null pointer is returned if insufficient
# memory is available.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_wavelet_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_wavelet_workspace_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_wavelet_workspace_alloc, :libgsl), Ptr{Void}, (Csize_t, ),
        n )
end


# This function frees the allocated workspace work.
# 
#   Returns: Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet_workspace_free(work::Ptr{Void})
    ccall( (:gsl_wavelet_workspace_free, :libgsl), Void, (Ptr{Void}, ),
        work )
end
