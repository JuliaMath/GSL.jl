#################################
# 7.21 Hypergeometric functions #
#################################

function gsl_sf_hyperg_0F1(c::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_0F1, "libgsl"), Float64,
        (Float64, Float64),
        c, x)
end

function gsl_sf_hyperg_1F1_int(m::Int64, n::Int64, x::Float64)
    y=ccall( (:gsl_sf_hyperg_1F1_int, "libgsl"), Float64,
        (Int64, Int64, Float64),
        m, n, x)
end

function gsl_sf_hyperg_1F1(a::Float64, b::Float64, x::Float64)
    y=ccall( (:gsl_sf_hyperg_1F1, "libgsl"), Float64,
        (Float64, Float64, Float64),
        a, b, x)
end

function gsl_sf_hyperg_U_int(m::Int64, b::Int64, x::Float64)
    y=ccall( (:gsl_sf_hyperg_U_int, "libgsl"), Float64,
        (Int64, Int64, Float64),
        m, n, x)
end

function gsl_sf_hyperg_U(a::Float64, b::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_U, "libgsl"), Float64,
        (Float64, Float64, Float64),
        a, b, x)
end

function gsl_sf_hyperg_2F1(a::Float64, b::Float64, c::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_2F1, "libgsl"), Float64,
        (Float64, Float64, Float64, Float64),
        a, b, c, x)
end

function gsl_sf_hyperg_2F1_conj(aR::Float64, aI::Float64, c::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_2F1_conj, "libgsl"), Float64,
        (Float64, Float64, Float64, Float64),
        aR, aI, c, x)
end

function gsl_sf_hyperg_2F1_renorm(a::Float64, b::Float64, c::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_2F1_renorm, "libgsl"), Float64,
        (Float64, Float64, Float64, Float64),
        a, b, c, x)
end

function gsl_sf_hyperg_2F0(a::Float64, b::Float64, x::Float64)
    ccall( (:gsl_sf_hyperg_2F0, "libgsl"), Float64,
        (Float64, Float64, Float64),
        a, b, x)
end

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

#########
# Tests #
#########

using Test

a = 3*randn()
b = 3*randn()
c = 3*randn()
x = 2*rand()-1

# Test definition
@test_approx_eq gsl_sf_hyperg_2F1_renorm(a, b, c, x) hypergeom([a, b], c, x)/gamma(c)

# Test special cases
@test_approx_eq log(1+complex(x)) x*hypergeom([1.0, 1.0], 2.0, -x)
@test_approx_eq (1-x)^-a hypergeom([a, 1.0], 1.0, x)
@test_approx_eq asin(x) x*hypergeom([0.5, 0.5], 1.5, x^2)

#gsl function is unstable for b=2
#@test_approx_eq x*gsl_sf_hyperg_U(1.0, 2.0, x) 1.0
@test_approx_eq 1+x gsl_sf_hyperg_U(-1.0, -1.0, x)

#"Cancellation theorem" that reduces order of hypergeometric function
@test_approx_eq hypergeom([a], [a], x) hypergeom([], [], x)

c = a+b+3*rand()
@test_approx_eq hypergeom([a, b], c, 1.0) (gamma(c)*gamma(c-a-b)/(gamma(c-a)*gamma(c-b)))

#Kummer's theorem
@test_approx_eq hypergeom([a, b], 1+a-b, -1.0) (gamma(1+a-b)*gamma(1+a/2)/(gamma(1+a)*gamma(1+a/2-b)))
