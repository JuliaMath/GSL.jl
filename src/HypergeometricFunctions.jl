#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>

export hypergeom

#A convenience function to wrap the most common hypergeometric functions
function hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64)
    na, nb = length(a), length(b)

    if (na, nb) == (0, 0)
        exp(x)
    elseif (na, nb) == (0, 1)
        gsl_sf_hyperg_0F1(b[1], x)
    elseif (na, nb) == (1, 1)
        gsl_sf_hyperg_1F1(a[1], b[1], x)
    elseif (na, nb) == (2, 0)
        gsl_sf_hyperg_2F0(a[1], a[2], x)
    elseif (na, nb) == (2, 1)
        gsl_sf_hyperg_2F1(a[1], a[2], b[1], x)
    else
        error("Not implemented")
    end
end

hypergeom(a::Vector{Float64}, b::Float64, x::Float64) = hypergeom(a, [b], x)
hypergeom(a::Float64, b::Vector{Float64}, x::Float64) = hypergeom([a], b, x)
hypergeom(a::Float64, b::Float64, x::Float64) = hypergeom([a], [b], x)
hypergeom(a::Vector{None}, b::Vector{Float64}, x::Float64) = hypergeom(zeros(0), b, x)
hypergeom(a::Vector{Float64}, b::Vector{None}, x::Float64) = hypergeom(a, zeros(0), x)
hypergeom(a::Vector{None}, b::Vector{None}, x::Float64) = hypergeom(zeros(0), zeros(0), x)

