#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################
# 29.1 Definitions #
####################
export gsl_cheb_series


mutable struct gsl_cheb_series
    c::Ptr{Cdouble}
    order::Cint
    a::Cdouble
    b::Cdouble
end


