#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 33.4 Providing the function to solve #
########################################
export gsl_function, gsl_function_fdf








type gsl_function
    function_::Ref{Void}
    params::Ref{Void}
end


type gsl_function_fdf
    f::Ref{Void}
    df::Ref{Void}
    fdf::Ref{Void}
    params::Ref{Void}
end
