#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 26.1 Defining the ODE System #
################################
export gsl_odeiv2_system




type gsl_odeiv2_system
    function_::Ptr{Void}
    jacobian::Ptr{Void}
    dimension::Csize_t
    params::Ptr{Void}
end
