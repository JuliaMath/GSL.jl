gsl.jl
======

Julia interface to the GNU Scientific Library (gsl)

# Current status
This package currently provides access only to the hypergeometric functions `gsl_sf_hyperg_*` [(GSL manual, Section 7.24)](http://www.gnu.org/software/gsl/manual/html_node/Hypergeometric-Functions.html)via the `hypergeom` wrapper function.

# Methods provided
    hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64) -> Float64
> Wraps the appropriate hypergeometric *<sub>p</sub>F<sub>q</sub>* function, where *p* and *q* are the lengths of the input vectors *a* and *b* respectively. Singleton *a* and/or *b* may be specified as scalars, and length-0 *a* and/or *b* may be input as simply `[]`.
> Supported values of (p, q) are (0, 0), (0, 1), (1, 1), (2, 0) and (2, 1).
> This only calls the floating-point versions of the GSL functions

Other functions in Section 7.24 may be accessed directly.

Example:
    require("SpecialFunctions.jl")
    x = randn()
    x * gsl_sf_hyperg_U(1.0, 2.0, x)
    #Answer: 1.0

