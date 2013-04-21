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
For the functions, the `gsl_` prefix is not necessary in the name.
More information is available below.

Example:
```julia
    using GSL
    x = randn()
    sf_hyperg_U(-1.0, -1.0, x) - (1 + x)
    #Answer: 0.0
```

Translated examples from the GSL documentation are available in `examples/`.

# Convenience methods provided

<script type="text/javascript"
   src="http://cdn.mathjax.org/mathjax/latest/MathJax.js">

</script>

## Roots of polynomials
```julia
    roots{T<:Real}(c::Vector{T}, realOnly::Bool) -> Vector{Complex128}
```
> Finds the roots of the polynomial with real coefficients c
> \[
> 0 = \sum_{i=1}^{length(c)} c_i z^{i-1}
> \]
> The coefficients are returned in ascending order of the power
> If the degree of the polynomial is <= 3, then `realOnly=true` finds only
> the real roots.

## Special functions

### Hypergeometric functions
```julia
    hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64) -> Float64
```
> Computes the appropriate hypergeometric *<sub>p</sub>F<sub>q</sub>* function,
> where *p* and *q* are the lengths of the input vectors *a* and *b*
> respectively.
> Singleton *a* and/or *b* may be specified as scalars, and length-0 *a* and/or
> *b* may be input as simply `[]`.
> Supported values of (p, q) are (0, 0), (0, 1), (1, 1), (2, 0) and (2, 1).
> This only calls the floating-point versions of the GSL functions
> `gsl_sf_hyperg_?F?` [(GSL manual, Section 7.24)](http://www.gnu.org/software/gsl/manual/html_node/Hypergeometric-Functions.html)

## Test functions
```julia
    @sf_test(sf, args...)
```
> Macro to help test equality of a function and its error-propagating variant. Requires `Base.Test`.
> Example:

```julia
    x = randn()
    @eval @sf_test sf_dawson $x
```

# Current status

## What is available
* All functions except the ones described below
* All documented `gsl_*` structs
* Most special functions: All except for the following categories:
  * Some array-valued functions `sf_*_array`
    * Available:  `sf_bessel_*_array`, `sf_gegenpoly_array`.
    * Not available: all others. The wrappers do not currently work.
  * Not available: `sf_*_e10_e` that return the `sf_result_e10` struct. (Currently returns bus error.)

* Some `GSL_*` constants
  * Precision mode constants `PREC_SINGLE`, `PREC_DOUBLE`, `PREC_APPROX`

## What is not available
* GSL's BLAS and CBLAS wrappers `blas_*`, `cblas_*`. Use Julia's interface instead.
* Data I/O functions, such as `*_fprintf` and `*_fscanf`.
  Work in progress.
  Wrappers to these functions exist but most likely won't work
* Row and column views of matrices, `matrix_row*` and `matrix_column*` (Sec. 8.4.6)
* All `GSL_*` macros

## Current tests
* Special functions
  * Basic tests comparing equality of basic and error-propagating special functions
  * Some identity tests for hypergeometric functions
  * Available but untested:
    * `sf_bessel_sequence_Jnu_e`, `sf_bessel_Jnu`
    * `sf_coulomb_CL_e`, `sf_coulomb_CL_e`
    * `sf_coupling_6j`, `sf_elljac_e`
    * Mathieu Functions (Section 7.26). (Needs convenience function)
    * Trigonometric Functions for Complex Arguments (Section 7.31)
    * Conversion Functions (Section 7.31.4)
    * Restriction Functions (Section 7.31.5)
    * Trigonometric Functions With Error Estimates (Section 7.31.6)
* All other functions are untested

## How you can help

The wrappers are automatically generated using `util/makewrapper.py`.

1. Test function wrappers for correctness.
2. Expose `GSL_*` constants and macros to Julia.
3. Write convenience methods to further wrap the function calls with a Julia-
   friendly syntax.
