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

**NOTE: This version breaks compability with previous versions of GSL.jl. Most functions now have the `gsl_` prefix.**

## Structure

The library tries to provide Julia interfaces to all the functions, types and symbols
defined in the [GSL
documentation](https://www.gnu.org/software/gsl/doc/html/index.html). 

Two types of functions are exported:
- _Direct wrappers_ have the prefix `gsl_`. These are meant to provide an interface to GSL that is as faithful to the headers as possible. These are all auto-generated from the headers.
- _Convenience functions_ are added both manually and using a set of heuristics, and are without the `gsl_` prefix. These are meant to provide a more user-friendly second layer on top of the direct wrappers.

Most of the type defintions, constants and symbols of GSL are also exported.

Parts of GSL are not interfaced to, since they provide functionality already existing in
Julia. These are functions with prefixes `gsl_spmatrix_`, `gsl_splinalg_`, `gsl_spblas_`,
`gsl_eigen_`, `gsl_sort`, `gsl_blas_`,
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

* Root finding, numerical differentiation, quadrature, splines, random numbers, permutations. See [examples/](examples/). 
* The special functions `gsl_sf_*`, together with convenience functions `sf_*`.
* Convenice functions `hypergeom` and `hypergeom_e` for the hypergeometric functions.
* Function wrapping macros `@gsl_function`, `@gsl_function_fdf`, `@gsl_multiroot_function` that are used for packaging Julia functions so that they can be passed to GSL.

## Examples

See examples in [examples/](examples/) and tests [test/](test/) for more examples.

### Root finding
```julia
f = x -> x^5+1
df = x -> 5*x^4
fdf = @gsl_function_fdf(f, df)
solver = gsl_root_fdfsolver_alloc(gsl_root_fdfsolver_newton)
gsl_root_fdfsolver_set(solver, fdf, -2)
while abs(f(gsl_root_fdfsolver_root(solver))) > 1e-10
    gsl_root_fdfsolver_iterate(solver)
end
println("x = ", gsl_root_fdfsolver_root(solver))
# Output: x = -1.0000000000104232
```

## Documentation

This is it, though some effort has been put into giving most types and functions proper docstrings:

```
help?> gsl_wavelet_free
search: gsl_wavelet_free gsl_wavelet_workspace_free

  gsl_wavelet_free(w) -> Cvoid

  C signature: void gsl_wavelet_free (gsl_wavelet * w)

  GSL documentation:

  void gsl_wavelet_free (gsl_wavelet * w)
  –––––––––––––––––––––––––––––––––––––––––

  │  This function frees the wavelet object w.
```
```
help?> gsl_wavelet
search: gsl_wavelet gsl_wavelet_type gsl_wavelet_name gsl_wavelet_haar

  mutable struct gsl_wavelet
      type::Ptr{gsl_wavelet_type}
      h1::Ptr{Cdouble}
      g1::Ptr{Cdouble}
      h2::Ptr{Cdouble}
      g2::Ptr{Cdouble}
      nc::Csize_t
      offset::Csize_t
  end

  GSL documentation:

  gsl_wavelet
  –––––––––––––

  │  This structure contains the filter coefficients defining the
  │  wavelet and any associated offset parameters.
```


## Behind the scenes

* All interface code in [src/gen](src/gen) is created by running the script
  [gen/makewrappers.jl](gen/makewrappers.jl), which attempts to parse the GSL headers
  using regular expressions.
* Heuristics for creating convenience functions are in
  [gen/heuristic.jl](gen/heuristic.jl).
* Hand-written convenience functions are in
  [src/manual_wrappers.jl](src/manual_wrappers.jl).
