# (c) 2013 Jiahao Chen <jiahao@mit.edu>

# Converts GSL data structures to Julia data types
import Base.show


#Register this error handler as GSL's default
#where possible, maps errors to Julia's own exceptions
custom_error_handler(reason::Ptr{UInt8}, file::Ptr{UInt8}, line::Integer, errno::Integer) =
    custom_error_handler(unsafe_string(reason), unsafe_string(file), line, errno)

mutable struct GSLError <: Exception
    errno :: Int32
    reason :: AbstractString
    file :: AbstractString
    line :: Cint
end

show(io::IO, E::GSLError) = print(io, string("GSL Error $(E.errno) (", unsafe_string(strerror(E.errno)), "): ", E.reason, " at ", E.file, ":", E.line))

function custom_error_handler(reason::AbstractString, file::AbstractString, line::Integer, errno::Integer)
    if errno == GSL_SUCCESS; return; end
    @warn(GSLError(errno, reason, file, line))
    errstr = "$reason at $file:$line"
    if errno == GSL_EDOM # input domain error, e.g sqrt(-1)
        throw(DomainError("[unknown value]", errstr))
    elseif errno == GSL_ERANGE || errno == GSL_EOVRFLW
        # GSL_ERANGE: output range error, e.g. exp(1e100)
        # or GSL_EOVRFLW: overflow
        throw(OverflowError(errstr))
    elseif errno == GSL_EINVAL # invalid argument supplied by user
        throw(ArgumentError(errstr))
    elseif errno == GSL_ENOMEM # malloc failed
        throw(OutOfMemoryError())
    elseif errno == GSL_EZERODIV # tried to divide by zero
        throw(DivideError())
    elseif errno == GSL_EBADLEN # matrix, vector lengths are not conformant
        throw(BoundsError())
    elseif errno == GSL_EOF # end of file
        throw(EOFError())
    else # convert all other errors into generic ErrorException
        throw(GSLError(errno, reason, file, line))
    end
end

GSL_ERROR(errno::T) where {T<:Integer} = custom_error_handler("", "None", 0, errno)
