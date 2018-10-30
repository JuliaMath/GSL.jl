GSL.jl
======

[![Travis Build Status](https://travis-ci.org/JuliaMath/GSL.jl.svg?branch=master)](https://travis-ci.org/JuliaMath/GSL.jl)
[![Appveyor Build status](https://ci.appveyor.com/api/projects/status/7049flml50cs65mu/branch/master?svg=true)](https://ci.appveyor.com/project/simonbyrne/gsl-jl/branch/master)
[![codecov.io](http://codecov.io/github/JuliaMath/GSL.jl/coverage.svg?branch=master)](http://codecov.io/github/JuliaMath/GSL.jl?branch=master)

Julia wrapper for the [Gnu Scientific
Library](https://www.gnu.org/software/gsl/doc/html/index.html) (GSL).

This is a redevelopment of [GSL.jl](https://github.com/JuliaMath/GSL.jl) by Jiahao Chen,
using GSL 2.5 through [GSLBuilder.jl](https://github.com/giordano/GSLBuilder.jl) by Mosè
Giordano, intended to eventually either replace or be merged into GSL.jl.

Developed for Julia 1.0+.

## Structure

The library tries as faithfully as possible to export the functions, types and symbols
defined in the [GSL
documentation](https://www.gnu.org/software/gsl/doc/html/index.html). Most of these have
the prefix `gsl_` in their name.

In addition, a number convenience functions are supplied, which try to make the interface
less cumbersome. These are created both manually and using a heuristic rule set. The
convenience functions have the prefix `gsl_` dropped from their name.

Parts of GSL are not interfaced to, since they provide functionality already existing in
Julia. These are functions with prefixes `gsl_spmatrix_`, `gsl_splinalg_`, `gsl_spblas_`,
`gsl_eigen_`, `gsl_complex`, `gsl_sort`, `gsl_vector_`, `gsl_matrix_`, `gsl_blas_`,
`cblas_`, `gsl_fft_`, and `gsl_linalg_`.

### Examples of convenience functions

**Function with result struct:**
```julia
# Direct call
gsl_sf_legendre_P3(x)
# Output: -0.4375

# Direct call with structure that stores result and error:
result = gsl_sf_result(0,0)
gsl_sf_legendre_P3_e(0.5, result)
# Output: gsl_sf_result_struct(-0.4375, 3.3306690738754696e-16)

# Using convenience function:
sf_legendre_P3_e(0.5)
# Output: gsl_sf_result_struct(-0.4375, 3.3306690738754696e-16)
```

**Function with array output:**
```julia
x = 0.5
lmax = 4
# Direct call:
n = gsl_sf_legendre_array_n(lmax)
result = Array{Float64}(undef, n)
gsl_sf_legendre_array(GSL_SF_LEGENDRE_SPHARM, lmax, x, result)
# Equivalent using convenience function:
result = sf_legendre_array(GSL_SF_LEGENDRE_SPHARM, lmax, x)
```

## Functionality

A lot of GSL functionality is interfaced, but most of it is untested.

Things that seem to be working:

* A lot of the special functions `gsl_sf_*`.
* Root finding, see examples in [test/rootfinding.jl](test/rootfinding.jl).
* Convenice functions `hypergeom` and `hypergeom_e` for the hypergeometric functions.

## Behind the scenes

* All interface code in [src/gen](src/gen) is created by running the script
  [gen/makewrappers.jl](gen/makewrappers.jl), which attempts to parse the GSL headers
  using regular expressions.
* Heuristics for creating convenience functions are in
  [gen/heuristic.jl](gen/heuristic.jl).
* Hand-written convenience functions are in
  [src/manual_wrappers.jl](src/manual_wrappers.jl).
