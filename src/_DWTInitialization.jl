#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 31.2 Initialization #
#######################
export gsl_wavelet_alloc, gsl_wavelet_daubechies,
       gsl_wavelet_daubechies_centered, gsl_wavelet_haar,
       gsl_wavelet_haar_centered, gsl_wavelet_bspline,
       gsl_wavelet_bspline_centered, gsl_wavelet_name, gsl_wavelet_free,
       gsl_wavelet_workspace_alloc, gsl_wavelet_workspace_free


### Function uses unknown type; disabled
### # This function allocates and initializes a wavelet object of type T.  The
# parameter k selects the specific member of the wavelet family.  A null
# pointer is returned if insufficient memory is available or if a unsupported
# member is selected.
# 
### #   Returns: Ptr{gsl_wavelet}
### #XXX Unknown input type T::Ptr{gsl_wavelet_type}
### #XXX Unknown output type Ptr{gsl_wavelet}
### function gsl_wavelet_alloc (T::Ptr{gsl_wavelet_type}, k::Csize_t)
###     ccall( (:gsl_wavelet_alloc, "libgsl"), Ptr{gsl_wavelet},
###         (Ptr{gsl_wavelet_type}, Csize_t), T, k )
### end


### Function uses unknown type; disabled
### # This is the Daubechies wavelet family of maximum phase with k/2 vanishing
# moments.  The implemented wavelets are  k=4, 6, ..., 20, with k even.
# 
### #   {$k=4, 6, \dots, 20$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_daubechies ()
###     ccall( (:gsl_wavelet_daubechies, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Daubechies wavelet family of maximum phase with k/2 vanishing
# moments.  The implemented wavelets are  k=4, 6, ..., 20, with k even.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_daubechies_centered ()
###     ccall( (:gsl_wavelet_daubechies_centered, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Haar wavelet.  The only valid choice of k for the Haar wavelet is
# k=2.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_haar ()
###     ccall( (:gsl_wavelet_haar, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Haar wavelet.  The only valid choice of k for the Haar wavelet is
# k=2.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_haar_centered ()
###     ccall( (:gsl_wavelet_haar_centered, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the biorthogonal B-spline wavelet family of order (i,j).  The
# implemented values of k = 100*i + j are 103, 105, 202, 204, 206, 208, 301,
# 303, 305 307, 309.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_bspline ()
###     ccall( (:gsl_wavelet_bspline, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the biorthogonal B-spline wavelet family of order (i,j).  The
# implemented values of k = 100*i + j are 103, 105, 202, 204, 206, 208, 301,
# 303, 305 307, 309.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_wavelet_bspline_centered ()
###     ccall( (:gsl_wavelet_bspline_centered, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to the name of the wavelet family for w.
# 
### #   Returns: Ptr{Cchar}
### #XXX Unknown input type w::Ptr{gsl_wavelet}
### function gsl_wavelet_name (w::Ptr{gsl_wavelet})
###     ccall( (:gsl_wavelet_name, "libgsl"), Ptr{Cchar}, (Ptr{gsl_wavelet}, ),
###         w )
### end


### Function uses unknown type; disabled
### # This function frees the wavelet object w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_wavelet}
### function gsl_wavelet_free (w::Ptr{gsl_wavelet})
###     ccall( (:gsl_wavelet_free, "libgsl"), Void, (Ptr{gsl_wavelet}, ), w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for the discrete wavelet transform.  To
# perform a one-dimensional transform on n elements, a workspace of size n must
# be provided.  For two-dimensional transforms of n-by-n matrices it is
# sufficient to allocate a workspace of size n, since the transform operates on
# individual rows and columns. A null pointer is returned if insufficient
# memory is available.
# 
### #   Returns: Ptr{gsl_wavelet_workspace}
### #XXX Unknown output type Ptr{gsl_wavelet_workspace}
### function gsl_wavelet_workspace_alloc (n::Csize_t)
###     ccall( (:gsl_wavelet_workspace_alloc, "libgsl"),
###         Ptr{gsl_wavelet_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the allocated workspace work.
# 
### #   Returns: Void
### #XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
### function gsl_wavelet_workspace_free (work::Ptr{gsl_wavelet_workspace})
###     ccall( (:gsl_wavelet_workspace_free, "libgsl"), Void,
###         (Ptr{gsl_wavelet_workspace}, ), work )
### end