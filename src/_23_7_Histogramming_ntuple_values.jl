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
    h = Ref{gsl_histogram}()
    ntuple = Ref{gsl_ntuple}()
    value_func = Ref{gsl_ntuple_value_fn}()
    select_func = Ref{gsl_ntuple_select_fn}()
    errno = ccall( (:gsl_ntuple_project, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_ntuple}, Ref{gsl_ntuple_value_fn},
        Ref{gsl_ntuple_select_fn}), h, ntuple, value_func, select_func )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[], ntuple[], value_func[], select_func[]
end
