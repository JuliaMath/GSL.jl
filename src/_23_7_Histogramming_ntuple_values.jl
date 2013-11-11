#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 23.7 Histogramming ntuple values #
####################################
export ntuple_project


# This function updates the histogram h from the ntuple ntuple using the
# functions value_func and select_func. For each ntuple row where the selection
# function select_func is non-zero the corresponding value of that row is
# computed using the function value_func and added to the histogram.  Those
# ntuple rows where select_func returns zero are ignored.  New entries are
# added to the histogram, so subsequent calls can be used to accumulate further
# data in the same histogram.
# 
#   Returns: Cint
function ntuple_project()
    h = convert(Ptr{gsl_histogram}, Array(gsl_histogram, 1))
    ntuple = convert(Ptr{gsl_ntuple}, Array(gsl_ntuple, 1))
    value_func = convert(Ptr{gsl_ntuple_value_fn}, Array(gsl_ntuple_value_fn, 1))
    select_func = convert(Ptr{gsl_ntuple_select_fn}, Array(gsl_ntuple_select_fn, 1))
    errno = ccall( (:gsl_ntuple_project, :libgsl), Cint,
        (Ptr{gsl_histogram}, Ptr{gsl_ntuple}, Ptr{gsl_ntuple_value_fn},
        Ptr{gsl_ntuple_select_fn}), h, ntuple, value_func, select_func )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(h), unsafe_load(ntuple), unsafe_load(value_func), unsafe_load(select_func)
end
