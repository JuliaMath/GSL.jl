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
    ccall( (:gsl_stats_max, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_max


# This function returns the minimum value in data, a dataset of length n with
# stride stride.  The minimum value is defined as the value of the element x_i
# which satisfies  x_i <= x_j for all j.          If you want instead to find
# the element with the smallest absolute magnitude you will need to apply fabs
# or abs to your data before calling this function.
# 
#   Returns: Cdouble
function stats_min(data::Real)
    ccall( (:gsl_stats_min, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_min


# This function finds both the minimum and maximum values min, max in data in a
# single pass.
# 
#   Returns: Void
function stats_minmax(data::Real)
    min = Ref{Cdouble}()
    max = Ref{Cdouble}()
    ccall( (:gsl_stats_minmax, libgsl), Void, (Ref{Cdouble}, Ref{Cdouble},
        Cdouble), min, max, data )
    return min[], max[]
end
Compat.@dep_vectorize_1arg Number stats_minmax


# This function returns the index of the maximum value in data, a dataset of
# length n with stride stride.  The maximum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal maximum elements then the first one is chosen.
# 
#   Returns: Csize_t
function stats_max_index(data::Real)
    ccall( (:gsl_stats_max_index, libgsl), Csize_t, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_max_index


# This function returns the index of the minimum value in data, a dataset of
# length n with stride stride.  The minimum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal minimum elements then the first one is chosen.
# 
#   Returns: Csize_t
function stats_min_index(data::Real)
    ccall( (:gsl_stats_min_index, libgsl), Csize_t, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_min_index


# This function returns the indexes min_index, max_index of the minimum and
# maximum values in data in a single pass.
# 
#   Returns: Void
function stats_minmax_index(data::Real)
    min_index = Ref{Csize_t}()
    max_index = Ref{Csize_t}()
    ccall( (:gsl_stats_minmax_index, libgsl), Void, (Ref{Csize_t},
        Ref{Csize_t}, Cdouble), min_index, max_index, data )
    return min_index[], max_index[]
end
Compat.@dep_vectorize_1arg Number stats_minmax_index
