#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>

# Converts GSL data structures to Julia data types
import Base.show

export GSL_ERROR, custom_gsl_error_handler, complex_packed_ptr, complex_packed_array

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_array(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_ptr(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

#Register this error handler as GSL's default
#where possible, maps errors to Julia's own exceptions
custom_error_handler(reason::Ptr{UInt8}, file::Ptr{UInt8}, line::Integer, errno::Integer) =
    custom_error_handler(bytestring(reason), bytestring(file), line, errno)

type GSLError <: Exception
    errno :: Int32
    reason :: AbstractString
    file :: AbstractString
    line :: Cint
end

show(io::IO, E::GSLError) = print(io, string("GSL Error: ", strerror(E.errno), " -- ", E.reason, " at ", E.file, ":", E.line))

function custom_error_handler(reason::AbstractString, file::AbstractString, line::Integer, errno::Integer)
    if errno == 0; return; end # GSL_SUCCESS

    warn(GSLError(errno, reason, file, line))
    if errno == 1 # GSL_EDOM: input domain error, e.g sqrt(-1)
        throw(DomainError())
    elseif errno == 2 || errno == 16
        # GSL_ERANGE: output range error, e.g. exp(1e100)
        # or GSL_EOVRFLW: overflow
        throw(OverflowError())
    elseif errno == 4 # GSL_EINVAL: invalid argument supplied by user
        throw(ArgumentError(string(reason, " at ", file, ":", line)))
    elseif errno == 8 # GSL_ENOMEM: malloc failed
        throw(OutOfMemoryError())
    elseif errno == 12 # GSL_EZERODIV: tried to divide by zero
        throw(DivideError())
    elseif errno == 19 # GSL_EBADLEN: matrix, vector lengths are not conformant
        throw(BoundsError())
    elseif errno == 32 # GSL_EOF: end of file
        throw(EOFError())
    else # convert all other errors into generic ErrorException
        throw(GSLError(errno, reason, file, line))
    end
end

GSL_ERROR{T<:Integer}(errno::T) = custom_error_handler("", "None", 0, errno)

# This is the first point in loading the package where we try to actually access
# a function from within libgsl. This will fail if libgsl is not installed or
# otherwise unavailable.
const custom_gsl_error_handler = Ref{Ptr{gsl_error_handler_t}}()
