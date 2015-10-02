#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 10.5 Combination functions #
##############################
export combination_next, combination_prev


# This function advances the combination c to the next combination in
# lexicographic order and returns GSL_SUCCESS.  If no further combinations are
# available it returns GSL_FAILURE and leaves c unmodified.  Starting with the
# first combination and repeatedly applying this function will iterate through
# all possible combinations of a given order.
# 
#   Returns: Cint
function combination_next(c::Ref{gsl_combination})
    errno = ccall( (:gsl_combination_next, libgsl), Cint,
        (Ref{gsl_combination}, ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function steps backwards from the combination c to the previous
# combination in lexicographic order, returning GSL_SUCCESS.  If no previous
# combination is available it returns GSL_FAILURE and leaves c unmodified.
# 
#   Returns: Cint
function combination_prev()
    c = Ref{gsl_combination}()
    errno = ccall( (:gsl_combination_prev, libgsl), Cint,
        (Ref{gsl_combination}, ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return c[]
end
