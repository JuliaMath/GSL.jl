#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 41.1 Representation of floating point numbers #
#################################################
export ieee_fprintf_float, ieee_fprintf_double,
       ieee_printf_float, ieee_printf_double

# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stream. A pointer is used to pass the number
# indirectly, to avoid any undesired promotion from float to double.  The
# output takes one of the following forms,             NaNthe Not-a-Number
# symbol            Inf, -Infpositive or negative infinity
# 1.fffff...*2^E, -1.fffff...*2^Ea normalized floating point number
# 0.fffff...*2^E, -0.fffff...*2^Ea denormalized floating point number
# 0, -0positive or negative zero               The output can be used directly
# in GNU Emacs Calc mode by preceding it with 2# to indicate binary.
#
#   Returns: Cvoid
function ieee_fprintf_float(stream::Ref{Cvoid}, x_in::AbstractVector{tA}) where {tA<:Real}
    x = convert(Vector{Cfloat}, x_in)
    ccall( (:gsl_ieee_fprintf_float, libgsl), Cvoid, (Ref{Cvoid},
        Ref{Cfloat}), stream, x )
end


# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stream. A pointer is used to pass the number
# indirectly, to avoid any undesired promotion from float to double.  The
# output takes one of the following forms,             NaNthe Not-a-Number
# symbol            Inf, -Infpositive or negative infinity
# 1.fffff...*2^E, -1.fffff...*2^Ea normalized floating point number
# 0.fffff...*2^E, -0.fffff...*2^Ea denormalized floating point number
# 0, -0positive or negative zero               The output can be used directly
# in GNU Emacs Calc mode by preceding it with 2# to indicate binary.
#
#   Returns: Cvoid
function ieee_fprintf_double(stream::Ref{Cvoid}, x_in::AbstractVector{tA}) where {tA<:Real}
    x = convert(Vector{Cdouble}, x_in)
    ccall( (:gsl_ieee_fprintf_double, libgsl), Cvoid, (Ref{Cvoid},
        Ref{Cdouble}), stream, x )
end


# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
#
#   Returns: Cvoid
function ieee_printf_float(x_in::AbstractVector{tA}) where {tA<:Real}
    x = convert(Vector{Cfloat}, x_in)
    ccall( (:gsl_ieee_printf_float, libgsl), Cvoid, (Ref{Cfloat}, ), x )
end


# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
#
#   Returns: Cvoid
function ieee_printf_double(x_in::AbstractVector{tA}) where {tA<:Real}
    x = convert(Vector{Cdouble}, x_in)
    ccall( (:gsl_ieee_printf_double, libgsl), Cvoid, (Ref{Cdouble}, ), x )
end
