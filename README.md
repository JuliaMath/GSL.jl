GSL.jl
======

[![Travis Build Status](https://travis-ci.org/JuliaMath/GSL.jl.svg?branch=master)](https://travis-ci.org/JuliaMath/GSL.jl)
[![Appveyor Build status](https://ci.appveyor.com/api/projects/status/7049flml50cs65mu/branch/master?svg=true)](https://ci.appveyor.com/project/simonbyrne/gsl-jl/branch/master)
[![codecov.io](http://codecov.io/github/JuliaMath/GSL.jl/coverage.svg?branch=master)](http://codecov.io/github/JuliaMath/GSL.jl?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/JuliaMath/GSL.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaMath/GSL.jl?branch=master)

Julia wrapper for the [GNU Scientific
Library](https://www.gnu.org/software/gsl/doc/html/index.html) (GSL), for Julia v1.0+.

**NOTE: There have been major changes to this package since v0.4, which are likely to have introduced compability breaks.**

## Structure

The library tries to provide Julia interfaces to all the functions, types and symbols
defined in the [GSL
documentation](https://www.gnu.org/software/gsl/doc/html/index.html). 

- Functions are interfaced without the `gsl_` prefix, e.g. `sf_legendre_Pl` and `vector_alloc`.
- Types, global variables and most constants are interfaced using their original GSL name, e.g. `gsl_vector`, `gsl_root_fdfsolver_newton` and `GSL_SUCCESS`.
- The physical constants `GSL_CONST_*` can be found under the namespace `GSL.Const`, e.g. `GSL.Const.MKSA_ANGSTROM`.


Some functions have a secondary wrapper on top of the GSL interface, to make Julia usage more convenient, for example by allocating the output array. The low-level C interface to GSL can still be accessed under the namespace `GSL.C`. Some examples of functions that are different in the low-level interface:
```julia
GSL.strerror(gsl_errno) -> String
GSL.C.strerror(gsl_errno) -> Ptr{Cchar}
and
GSL.sf_legendre_array(norm, lmax, x) -> Array{Float64}
GSL.C.sf_legendre_array(norm, lmax, x, result_array) -> Cint
```

Parts of GSL are not interfaced to, since they provide functionality already existing in
Julia. These are functions with prefixes `gsl_spmatrix_`, `gsl_splinalg_`, `gsl_spblas_`,
`gsl_eigen_`, `gsl_sort`, `gsl_blas_`,
`cblas_`, `gsl_fft_`, and `gsl_linalg_`.

## Examples

See examples in [examples/](examples/) and tests [test/](test/) for more examples.

### Special function with result struct
```julia
# Direct call
sf_legendre_P3(0.5)
# Output: -0.4375

# With result struct that stores value and error:
sf_legendre_P3_e(0.5)
# Output: gsl_sf_result_struct(-0.4375, 3.3306690738754696e-16)

# Low-level call with result struct as argument:
result = gsl_sf_result(0,0)
GSL.C.sf_legendre_P3_e(0.5, result)
# Output: GSL_SUCCESS
# result = gsl_sf_result_struct(-0.4375, 3.3306690738754696e-16)
```

### Special function with array output
```julia
x = 0.5
lmax = 4
result = sf_legendre_array(GSL_SF_LEGENDRE_SPHARM, lmax, x)
# Equivalent using low-level interface:
n = sf_legendre_array_n(lmax)
result = Array{Float64}(undef, n)
GSL.C.sf_legendre_array(GSL_SF_LEGENDRE_SPHARM, lmax, x, result)

```

### Root finding
```julia
f = x -> x^5+1
df = x -> 5*x^4
fdf = @gsl_function_fdf(f, df)
solver = root_fdfsolver_alloc(gsl_root_fdfsolver_newton)
root_fdfsolver_set(solver, fdf, -2)
while abs(f(root_fdfsolver_root(solver))) > 1e-10
    root_fdfsolver_iterate(solver)
end
println("x = ", root_fdfsolver_root(solver))
# Output: x = -1.0000000000104232
```

## Documentation

Extra functionality defined in this package:

* Convenice functions `hypergeom` and `hypergeom_e` for the hypergeometric functions.
* Function wrapping macros `@gsl_function`, `@gsl_function_fdf`, `@gsl_multiroot_function` and `@gsl_multiroot_function_fdf` that are used for packaging Julia functions so that they can be passed to GSL.
* Functions `wrap_gsl_vector` and `wrap_gsl_matrix` that return a Julia array or matrix pointing to the data in a `gsl_vector` or `gsl_matrix`.

In addition, some effort has been put into giving most types and functions proper docstrings, e.g.

```
help?> GSL.wavelet_free
  wavelet_free(w) -> Cvoid

  C signature: void gsl_wavelet_free (gsl_wavelet * w)

  GSL documentation:

  void gsl_wavelet_free (gsl_wavelet * w)
  –––––––––––––––––––––––––––––––––––––––––

  │  This function frees the wavelet object w.
```
```
help?> GSL.gsl_wavelet
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

  │  This structure contains the filter coefficients defining the wavelet and any associated offset parameters.
```


## Behind the scenes

* All interface code in [src/gen](src/gen) is created by running the script
  [gen/makewrappers.jl](gen/makewrappers.jl), which attempts to parse the GSL headers
  using regular expressions.
* Heuristics for creating convenience functions are in
  [gen/heuristic.jl](gen/heuristic.jl).
* Docstrings are created from the GSL docs in [gen/readdocs.jl](gen/readdocs.jl).
* Hand-written convenience functions are in [src/manual_wrappers.jl](src/manual_wrappers.jl).

