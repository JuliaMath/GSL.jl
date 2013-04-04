#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>

# Converts GSL data structures to Julia data types

export GSL_ERROR, complex_packed_ptr, complex_packed_array

#Steals GSL_ERROR to become an exception in Julia
type GSL_ERROR{T<:Integer} <: Exception
    errno :: T
end

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_array(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_ptr(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

