#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 26.1 Defining the ODE System #
################################
export gsl_odeiv2_system

mutable struct gsl_odeiv2_system
    function_::Ptr{Nothing}
    jacobian::Ptr{Nothing}
    dimension::Csize_t
    params::Ptr{Nothing}
end
