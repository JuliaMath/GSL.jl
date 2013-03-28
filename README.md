GSL.jl
======

Julia interface to the GNU Scientific Library (GSL)

[Jiahao Chen](http://github.com/jiahao) <jiahao@mit.edu>
Licensed under [GPLv3](http://www.gnu.org/copyleft/gpl.html)

# Current status
This package provides wrappers to every single documented function in the
[GSL manual](http://www.gnu.org/software/gsl/manual/html_node) that does *not*
use custom `gsl_*` data types.

Example:
```julia
    using GSL
    x = randn()
    gsl_sf_hyperg_U(-1.0, -1.0, x) - (1 + x)
    #Answer: 0.0
```
The wrappers are automatically generated using util/makewrapper.py.
The code generator currently does NOT know now to wrap structs and constants
and therefore none of them are available to Julia right now. Any attempt to
use wrappers using `gsl_*` structs _will_ fail.

## How you can help

1. Test function wrappers for correctness.
2. Expose `gsl_*` structs and `GSL_*` constants and macros to Julia.
3. Write convenience methods to further wrap the `gsl_*` calls with a Julia-
   friendly syntax.

# Convenience methods provided

Currently only one convenience method is available.

    hypergeom(a::Vector{Float64}, b::Vector{Float64}, x::Float64) -> Float64

> Wraps the appropriate hypergeometric *<sub>p</sub>F<sub>q</sub>* function,
> where *p* and *q* are the lengths of the input vectors *a* and *b*
> respectively.
> Singleton *a* and/or *b* may be specified as scalars, and length-0 *a* and/or
> *b* may be input as simply `[]`.
> Supported values of (p, q) are (0, 0), (0, 1), (1, 1), (2, 0) and (2, 1).
> This only calls the floating-point versions of the GSL functions
> `gsl_sf_hyperg_?F?` [(GSL manual, Section 7.24)](http://www.gnu.org/software/gsl/manual/html_node/Hypergeometric-Functions.html)

