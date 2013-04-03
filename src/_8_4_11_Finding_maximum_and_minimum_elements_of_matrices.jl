#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################################
# 8.4.11 Finding maximum and minimum elements of matrices #
###########################################################
export matrix_max, matrix_min, matrix_minmax, matrix_max_index,
       matrix_min_index, matrix_minmax_index


# This function returns the maximum value in the matrix m.
# 
#   Returns: Cdouble
function matrix_max(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_max, :libgsl), Cdouble, (Ptr{gsl_matrix}, ), m )
end


# This function returns the minimum value in the matrix m.
# 
#   Returns: Cdouble
function matrix_min(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_min, :libgsl), Cdouble, (Ptr{gsl_matrix}, ), m )
end


# This function returns the minimum and maximum values in the matrix m, storing
# them in min_out and max_out.
# 
#   Returns: Void
function matrix_minmax(m::Ptr{gsl_matrix})
    min_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    max_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_matrix_minmax, :libgsl), Void, (Ptr{gsl_matrix},
        Ptr{Cdouble}, Ptr{Cdouble}), m, min_out, max_out )
    return unsafe_ref(min_out)[1] ,unsafe_ref(max_out)[1]
end


# This function returns the indices of the maximum value in the matrix m,
# storing them in imax and jmax.  When there are several equal maximum elements
# then the first element found is returned, searching in row-major order.
# 
#   Returns: Void
function matrix_max_index(m::Ptr{gsl_matrix})
    imax = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    jmax = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_matrix_max_index, :libgsl), Void, (Ptr{gsl_matrix},
        Ptr{Csize_t}, Ptr{Csize_t}), m, imax, jmax )
    return unsafe_ref(imax)[1] ,unsafe_ref(jmax)[1]
end


# This function returns the indices of the minimum value in the matrix m,
# storing them in imin and jmin.  When there are several equal minimum elements
# then the first element found is returned, searching in row-major order.
# 
#   Returns: Void
function matrix_min_index(m::Ptr{gsl_matrix})
    imin = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    jmin = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_matrix_min_index, :libgsl), Void, (Ptr{gsl_matrix},
        Ptr{Csize_t}, Ptr{Csize_t}), m, imin, jmin )
    return unsafe_ref(imin)[1] ,unsafe_ref(jmin)[1]
end


# This function returns the indices of the minimum and maximum values in the
# matrix m, storing them in (imin,jmin) and (imax,jmax). When there are several
# equal minimum or maximum elements then the first elements found are returned,
# searching in row-major order.
# 
#   Returns: Void
function matrix_minmax_index(m::Ptr{gsl_matrix})
    imin = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    jmin = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    imax = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    jmax = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_matrix_minmax_index, :libgsl), Void, (Ptr{gsl_matrix},
        Ptr{Csize_t}, Ptr{Csize_t}, Ptr{Csize_t}, Ptr{Csize_t}), m, imin, jmin,
        imax, jmax )
    return unsafe_ref(imin)[1] ,unsafe_ref(jmin)[1] ,unsafe_ref(imax)[1] ,unsafe_ref(jmax)[1]
end
