#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################################
# 8.4.11 Finding maximum and minimum elements of matrices #
###########################################################
export gsl_matrix_max, gsl_matrix_min, gsl_matrix_minmax, gsl_matrix_max_index,
       gsl_matrix_min_index, gsl_matrix_minmax_index


### Function uses unknown type; disabled
### # This function returns the maximum value in the matrix m.
# 
### #   Returns: Cdouble
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_max (m::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_max, "libgsl"), Cdouble, (Ptr{gsl_matrix}, ), m )
### end


### Function uses unknown type; disabled
### # This function returns the minimum value in the matrix m.
# 
### #   Returns: Cdouble
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_min (m::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_min, "libgsl"), Cdouble, (Ptr{gsl_matrix}, ), m )
### end


### Function uses unknown type; disabled
### # This function returns the minimum and maximum values in the matrix m, storing
# them in min_out and max_out.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_minmax (m::Ptr{gsl_matrix}, min_out::Ptr{Cdouble}, max_out::Ptr{Cdouble})
###     ccall( (:gsl_matrix_minmax, "libgsl"), Void, (Ptr{gsl_matrix},
###         Ptr{Cdouble}, Ptr{Cdouble}), m, min_out, max_out )
### end


### Function uses unknown type; disabled
### # This function returns the indices of the maximum value in the matrix m,
# storing them in imax and jmax.  When there are several equal maximum elements
# then the first element found is returned, searching in row-major order.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_max_index (m::Ptr{gsl_matrix}, imax::Ptr{Csize_t}, jmax::Ptr{Csize_t})
###     ccall( (:gsl_matrix_max_index, "libgsl"), Void, (Ptr{gsl_matrix},
###         Ptr{Csize_t}, Ptr{Csize_t}), m, imax, jmax )
### end


### Function uses unknown type; disabled
### # This function returns the indices of the minimum value in the matrix m,
# storing them in imin and jmin.  When there are several equal minimum elements
# then the first element found is returned, searching in row-major order.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_min_index (m::Ptr{gsl_matrix}, imin::Ptr{Csize_t}, jmin::Ptr{Csize_t})
###     ccall( (:gsl_matrix_min_index, "libgsl"), Void, (Ptr{gsl_matrix},
###         Ptr{Csize_t}, Ptr{Csize_t}), m, imin, jmin )
### end


### Function uses unknown type; disabled
### # This function returns the indices of the minimum and maximum values in the
# matrix m, storing them in (imin,jmin) and (imax,jmax). When there are several
# equal minimum or maximum elements then the first elements found are returned,
# searching in row-major order.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_minmax_index (m::Ptr{gsl_matrix}, imin::Ptr{Csize_t}, jmin::Ptr{Csize_t}, imax::Ptr{Csize_t}, jmax::Ptr{Csize_t})
###     ccall( (:gsl_matrix_minmax_index, "libgsl"), Void, (Ptr{gsl_matrix},
###         Ptr{Csize_t}, Ptr{Csize_t}, Ptr{Csize_t}, Ptr{Csize_t}), m, imin, jmin,
###         imax, jmax )
### end