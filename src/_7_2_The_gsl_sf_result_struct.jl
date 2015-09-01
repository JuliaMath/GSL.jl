#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.2 The gsl_sf_result struct #
################################
export gsl_sf_result, gsl_sf_result_e10


immutable gsl_sf_result
    val::Cdouble
    err::Cdouble
end


immutable gsl_sf_result_e10
    val::Cdouble
    err::Cdouble
    e10::Cint
end
