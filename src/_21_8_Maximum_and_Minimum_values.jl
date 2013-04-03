#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 21.8 Maximum and Minimum values #
###################################
export stats_max, stats_min, stats_minmax, stats_max_index, stats_min_index,
       stats_minmax_index


# This function returns the maximum value in data, a dataset of length n with
# stride stride.  The maximum value is defined as the value of the element x_i
# which satisfies  x_i >= x_j for all j.          If you want instead to find
# the element with the largest absolute magnitude you will need to apply fabs
# or abs to your data before calling this function.
# 
#   Returns: Cdouble
function stats_max(data::Real)
    ccall( (:gsl_stats_max, :libgsl), Cdouble, (Cdouble, ), data )
end
@vectorize_1arg Number stats_max


# This function returns the minimum value in data, a dataset of length n with
# stride stride.  The minimum value is defined as the value of the element x_i
# which satisfies  x_i <= x_j for all j.          If you want instead to find
# the element with the smallest absolute magnitude you will need to apply fabs
# or abs to your data before calling this function.
# 
#   Returns: Cdouble
function stats_min(data::Real)
    ccall( (:gsl_stats_min, :libgsl), Cdouble, (Cdouble, ), data )
end
@vectorize_1arg Number stats_min


# This function finds both the minimum and maximum values min, max in data in a
# single pass.
# 
#   Returns: Void
function stats_minmax(data::Real)
    min = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    max = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_stats_minmax, :libgsl), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Cdouble), min, max, data )
    return unsafe_ref(min) ,unsafe_ref(max)
end
@vectorize_1arg Number stats_minmax


# This function returns the index of the maximum value in data, a dataset of
# length n with stride stride.  The maximum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal maximum elements then the first one is chosen.
# 
#   Returns: Csize_t
function stats_max_index(data::Real)
    ccall( (:gsl_stats_max_index, :libgsl), Csize_t, (Cdouble, ), data )
end
@vectorize_1arg Number stats_max_index


# This function returns the index of the minimum value in data, a dataset of
# length n with stride stride.  The minimum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal minimum elements then the first one is chosen.
# 
#   Returns: Csize_t
function stats_min_index(data::Real)
    ccall( (:gsl_stats_min_index, :libgsl), Csize_t, (Cdouble, ), data )
end
@vectorize_1arg Number stats_min_index


# This function returns the indexes min_index, max_index of the minimum and
# maximum values in data in a single pass.
# 
#   Returns: Void
function stats_minmax_index(data::Real)
    min_index = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    max_index = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_stats_minmax_index, :libgsl), Void, (Ptr{Csize_t},
        Ptr{Csize_t}, Cdouble), min_index, max_index, data )
    return unsafe_ref(min_index) ,unsafe_ref(max_index)
end
@vectorize_1arg Number stats_minmax_index
