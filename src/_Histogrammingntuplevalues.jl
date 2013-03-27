#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 23.7 Histogramming ntuple values #
####################################
export gsl_ntuple_project


# This function updates the histogram h from the ntuple ntuple using the
# functions value_func and select_func. For each ntuple row where the selection
# function select_func is non-zero the corresponding value of that row is
# computed using the function value_func and added to the histogram.  Those
# ntuple rows where select_func returns zero are ignored.  New entries are
# added to the histogram, so subsequent calls can be used to accumulate further
# data in the same histogram.
# 
#   Returns: Cint
function gsl_ntuple_project (h::Ptr{gsl_histogram}, ntuple::Ptr{gsl_ntuple}, value_func::Ptr{gsl_ntuple_value_fn}, select_func::Ptr{gsl_ntuple_select_fn})
    ccall( (:gsl_ntuple_project, "libgsl"), Cint, (Ptr{gsl_histogram},
        Ptr{gsl_ntuple}, Ptr{gsl_ntuple_value_fn}, Ptr{gsl_ntuple_select_fn}),
        h, ntuple, value_func, select_func )
end