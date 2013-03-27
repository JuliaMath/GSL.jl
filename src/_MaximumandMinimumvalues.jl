#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 21.8 Maximum and Minimum values #
###################################
export gsl_stats_max, gsl_stats_min, gsl_stats_minmax, gsl_stats_max_index,
       gsl_stats_min_index, gsl_stats_minmax_index


# This function returns the maximum value in data, a dataset of length n with
# stride stride.  The maximum value is defined as the value of the element x_i
# which satisfies  x_i >= x_j for all j.          If you want instead to find
# the element with the largest absolute magnitude you will need to apply fabs
# or abs to your data before calling this function.
# 
#   {$x_i \ge x_j$} 
#   Returns: Cdouble
function gsl_stats_max (data::Cdouble)
    ccall( (:gsl_stats_max, "libgsl"), Cdouble, (Cdouble, ), data )
end


# This function returns the minimum value in data, a dataset of length n with
# stride stride.  The minimum value is defined as the value of the element x_i
# which satisfies  x_i <= x_j for all j.          If you want instead to find
# the element with the smallest absolute magnitude you will need to apply fabs
# or abs to your data before calling this function.
# 
#   {$x_i \le x_j$} 
#   Returns: Cdouble
function gsl_stats_min (data::Cdouble)
    ccall( (:gsl_stats_min, "libgsl"), Cdouble, (Cdouble, ), data )
end


# This function finds both the minimum and maximum values min, max in data in a
# single pass.
# 
#   Returns: Void
function gsl_stats_minmax (min::Ptr{Cdouble}, max::Ptr{Cdouble}, data::Cdouble)
    ccall( (:gsl_stats_minmax, "libgsl"), Void, (Ptr{Cdouble},
        Ptr{Cdouble}, Cdouble), min, max, data )
end


# This function returns the index of the maximum value in data, a dataset of
# length n with stride stride.  The maximum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal maximum elements then the first one is chosen.
# 
#   {$x_i \ge x_j$} 
#   Returns: Csize_t
function gsl_stats_max_index (data::Cdouble)
    ccall( (:gsl_stats_max_index, "libgsl"), Csize_t, (Cdouble, ), data )
end


# This function returns the index of the minimum value in data, a dataset of
# length n with stride stride.  The minimum value is defined as the value of
# the element x_i which satisfies  x_i >= x_j for all j.  When there are
# several equal minimum elements then the first one is chosen.
# 
#   {$x_i \ge x_j$} 
#   Returns: Csize_t
function gsl_stats_min_index (data::Cdouble)
    ccall( (:gsl_stats_min_index, "libgsl"), Csize_t, (Cdouble, ), data )
end


# This function returns the indexes min_index, max_index of the minimum and
# maximum values in data in a single pass.
# 
#   Returns: Void
function gsl_stats_minmax_index (min_index::Ptr{Csize_t}, max_index::Ptr{Csize_t}, data::Cdouble)
    ccall( (:gsl_stats_minmax_index, "libgsl"), Void, (Ptr{Csize_t},
        Ptr{Csize_t}, Cdouble), min_index, max_index, data )
end