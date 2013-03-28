#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 8.4.8 Copying rows and columns #
##################################
export gsl_matrix_get_row, gsl_matrix_get_col, gsl_matrix_set_row,
       gsl_matrix_set_col


### Function uses unknown type; disabled
### # This function copies the elements of the i-th row of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# row.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_get_row (v::Ptr{gsl_vector}, m::Ptr{gsl_matrix}, i::Csize_t)
###     ccall( (:gsl_matrix_get_row, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, Csize_t), v, m, i )
### end


### Function uses unknown type; disabled
### # This function copies the elements of the j-th column of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# column.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_get_col (v::Ptr{gsl_vector}, m::Ptr{gsl_matrix}, j::Csize_t)
###     ccall( (:gsl_matrix_get_col, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_matrix}, Csize_t), v, m, j )
### end


### Function uses unknown type; disabled
### # This function copies the elements of the vector v into the i-th row of the
# matrix m.  The length of the vector must be the same as the length of the
# row.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_matrix_set_row (m::Ptr{gsl_matrix}, i::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_matrix_set_row, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Csize_t, Ptr{gsl_vector}), m, i, v )
### end


### Function uses unknown type; disabled
### # This function copies the elements of the vector v into the j-th column of the
# matrix m.  The length of the vector must be the same as the length of the
# column.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_matrix_set_col (m::Ptr{gsl_matrix}, j::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_matrix_set_col, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Csize_t, Ptr{gsl_vector}), m, j, v )
### end