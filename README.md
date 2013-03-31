GSL.jl
======

Julia interface to the [GNU Scientific Library (GSL)](http://www.gnu.org/software/gsl)

[Jiahao Chen](http://github.com/jiahao) <jiahao@mit.edu>

Licensed under [GPLv3](http://www.gnu.org/copyleft/gpl.html)

Tested with [libgsl](http://www.gnu.org/software/gsl) 1.15

# How to install

Ensure that [GSL](http://www.gnu.org/software/gsl) is installed on your system, then in Julia:
```julia
Pkg.add("GSL")
```

# How to use

This package provides wrappers to all documented functions and structs in the
[GSL manual](http://www.gnu.org/software/gsl/manual/html_node).
More information is available below.

Example:
```julia
    using GSL
    x = randn()
    gsl_sf_hyperg_U(-1.0, -1.0, x) - (1 + x)
    #Answer: 0.0
```

Translated examples from the GSL documentation are available in `examples/`.

# Convenience methods provided

<script type="text/javascript"
   src="http://cdn.mathjax.org/mathjax/latest/MathJax.js">

</script>

## Roots of polynomials
```julia
    roots{T<:Real}(c::Vector{T}) -> Vector{Complex128}
```
> Finds the (complex) roots of the polynomial with real coefficients c
> \[
> 0 = \sum_{i=1}^{length(c)} c_i z^{i-1}
> \]

## Hypergeometric functions
```julia
    hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64) -> Float64
```
> Computes the appropriate hypergeometric ${}_p F_q$ *<sub>p</sub>F<sub>q</sub>* function,
> where *p* and *q* are the lengths of the input vectors *a* and *b*
> respectively.
> Singleton *a* and/or *b* may be specified as scalars, and length-0 *a* and/or
> *b* may be input as simply `[]`.
> Supported values of (p, q) are (0, 0), (0, 1), (1, 1), (2, 0) and (2, 1).
> This only calls the floating-point versions of the GSL functions
> `gsl_sf_hyperg_?F?` [(GSL manual, Section 7.24)](http://www.gnu.org/software/gsl/manual/html_node/Hypergeometric-Functions.html)

# Current status

## What is available
* All `gsl_*` functions except the CBLAS wrappers `gsl_cblas_*`
* All documented `gsl_*` structs

## What is not available
* The CBLAS wrappers `gsl_cblas_*`:
  Wrappers around the GSL wrappers have been generated but almost certainly don't work. 
  Since Julia itself provides native interfaces to BLAS routines, it seems pointless to
  even try to fix this.
* All undocumented `gsl_*` structs:
  Function calls involving these structs have had their data types changed to `Void`
  in Julia so that they can be used as opaque pointers without knowledge of what is
  inside them.
* All `GSL_*` constants
* All `GSL_*` macros

## How you can help

The wrappers are automatically generated using `util/makewrapper.py`.

1. Test function wrappers for correctness.
2. Expose `GSL_*` constants and macros to Julia.
3. Write convenience methods to further wrap the `gsl_*` calls with a Julia-
   friendly syntax.
