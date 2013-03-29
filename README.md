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

This package provides wrappers to some documented functions in the
[GSL manual](http://www.gnu.org/software/gsl/manual/html_node).
More information is available below.

Example:
```julia
    using GSL
    x = randn()
    gsl_sf_hyperg_U(-1.0, -1.0, x) - (1 + x)
    #Answer: 0.0
```

# Convenience methods provided

Currently only one convenience method is available.
```julia
    hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64) -> Float64
```
> Wraps the appropriate hypergeometric *<sub>p</sub>F<sub>q</sub>* function,
> where *p* and *q* are the lengths of the input vectors *a* and *b*
> respectively.
> Singleton *a* and/or *b* may be specified as scalars, and length-0 *a* and/or
> *b* may be input as simply `[]`.
> Supported values of (p, q) are (0, 0), (0, 1), (1, 1), (2, 0) and (2, 1).
> This only calls the floating-point versions of the GSL functions
> `gsl_sf_hyperg_?F?` [(GSL manual, Section 7.24)](http://www.gnu.org/software/gsl/manual/html_node/Hypergeometric-Functions.html)

# Current status

A limited subset of the GSL functions are currently available.

## What is available
* All `gsl_*` functions that _do not_ use custom `gsl_*` types

## What is not available
* All `gsl_*` functions that _do_ use custom `gsl_*` types
* All `GSL_*` constants
* All `GSL_*` macros
* All `gsl_*` structs

## How you can help

The wrappers are automatically generated using util/makewrapper.py.
The code generator currently does NOT know now to wrap structs and constants
and therefore none of them are available to Julia right now.

1. Test function wrappers for correctness.
2. Expose `gsl_*` structs and `GSL_*` constants and macros to Julia.
3. Write convenience methods to further wrap the `gsl_*` calls with a Julia-
   friendly syntax.
