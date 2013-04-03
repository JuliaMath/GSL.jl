#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 8.3.9 Finding maximum and minimum elements of vectors #
#########################################################
export vector_max, vector_min, vector_minmax, vector_max_index,
       vector_min_index, vector_minmax_index


# This function returns the maximum value in the vector v.
# 
#   Returns: Cdouble
function vector_max(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_max, :libgsl), Cdouble, (Ptr{gsl_vector}, ), v )
end


# This function returns the minimum value in the vector v.
# 
#   Returns: Cdouble
function vector_min(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_min, :libgsl), Cdouble, (Ptr{gsl_vector}, ), v )
end


# This function returns the minimum and maximum values in the vector v, storing
# them in min_out and max_out.
# 
#   Returns: Void
function vector_minmax(v::Ptr{gsl_vector})
    min_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    max_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_vector_minmax, :libgsl), Void, (Ptr{gsl_vector},
        Ptr{Cdouble}, Ptr{Cdouble}), v, min_out, max_out )
    return unsafe_ref(min_out)[1] ,unsafe_ref(max_out)[1]
end


# This function returns the index of the maximum value in the vector v.  When
# there are several equal maximum elements then the lowest index is returned.
# 
#   Returns: Csize_t
function vector_max_index(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_max_index, :libgsl), Csize_t, (Ptr{gsl_vector}, ),
        v )
end


# This function returns the index of the minimum value in the vector v.  When
# there are several equal minimum elements then the lowest index is returned.
# 
#   Returns: Csize_t
function vector_min_index(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_min_index, :libgsl), Csize_t, (Ptr{gsl_vector}, ),
        v )
end


# This function returns the indices of the minimum and maximum values in the
# vector v, storing them in imin and imax. When there are several equal minimum
# or maximum elements then the lowest indices are returned.
# 
#   Returns: Void
function vector_minmax_index(v::Ptr{gsl_vector})
    imin = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    imax = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_vector_minmax_index, :libgsl), Void, (Ptr{gsl_vector},
        Ptr{Csize_t}, Ptr{Csize_t}), v, imin, imax )
    return unsafe_ref(imin)[1] ,unsafe_ref(imax)[1]
end
