#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>

export hypergeom, hypergeom_e

const hypergeom_input = Union{Float64, Vector{Float64}, Vector{Union{}}}

#A convenience function to wrap the most common hypergeometric functions
function hypergeom(a::hypergeom_input, b::hypergeom_input, x::Float64)
    n = length(a), length(b)
    if n == (0, 0)
        exp(x)
    elseif n == (0, 1)
        sf_hyperg_0F1(b[1], x)
    elseif n == (1, 1)
        sf_hyperg_1F1(a[1], b[1], x)
    elseif n == (2, 0)
        sf_hyperg_2F0(a[1], a[2], x)
    elseif n == (2, 1)
        sf_hyperg_2F1(a[1], a[2], b[1], x)
    else
        error("hypergeometric function of order $n is not implemented")
    end
end

function hypergeom_e(a::hypergeom_input, b::hypergeom_input, x::Float64)
    n = length(a), length(b)
    if n == (0, 0)
        y=sf_exp_err_e(x,0.0)
    elseif n == (0, 1)
        y=sf_hyperg_0F1_e(b[1], x)
    elseif n == (1, 1)
        y=sf_hyperg_1F1_e(a[1], b[1], x)
    elseif n == (2, 0)
        y=sf_hyperg_2F0_e(a[1], a[2], x)
    elseif n == (2, 1)
        y=sf_hyperg_2F1_e(a[1], a[2], b[1], x)
    else
        error("hypergeometric function of order $n is not implemented")
    end
    y.val, y.err
end


