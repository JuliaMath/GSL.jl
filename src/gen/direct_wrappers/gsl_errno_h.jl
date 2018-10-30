#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_errno.h ##############################################################


"""
    gsl_error(reason, file, line, gsl_errno) -> Cvoid

C signature:
`void gsl_error (const char * reason, const char * file, int line, int gsl_errno)`
"""
function gsl_error(reason, file, line, gsl_errno)
    ccall((:gsl_error, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Cint, Cint), reason, file, line, gsl_errno)
end

"""
    gsl_stream_printf(label, file, line, reason) -> Cvoid

C signature:
`void gsl_stream_printf (const char *label, const char *file, int line, const char *reason)`
"""
function gsl_stream_printf(label, file, line, reason)
    ccall((:gsl_stream_printf, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Cint, Ref{Cchar}), label, file, line, reason)
end

"""
    gsl_strerror(gsl_errno) -> Ptr{Cchar}

C signature:
`const char * gsl_strerror (const int gsl_errno)`
"""
function gsl_strerror(gsl_errno)
    ccall((:gsl_strerror, libgsl), Ptr{Cchar}, (Cint,), gsl_errno)
end

"""
    gsl_set_error_handler(new_handler) -> Ptr{gsl_error_handler_t}

C signature:
`gsl_error_handler_t * gsl_set_error_handler (gsl_error_handler_t * new_handler)`
"""
function gsl_set_error_handler(new_handler)
    ccall((:gsl_set_error_handler, libgsl), Ptr{gsl_error_handler_t}, (Ptr{gsl_error_handler_t},), new_handler)
end

"""
    gsl_set_error_handler_off() -> Ptr{gsl_error_handler_t}

C signature:
`gsl_error_handler_t * gsl_set_error_handler_off (void)`
"""
function gsl_set_error_handler_off()
    ccall((:gsl_set_error_handler_off, libgsl), Ptr{gsl_error_handler_t}, (), )
end

"""
    gsl_set_stream_handler(new_handler) -> Ptr{gsl_stream_handler_t}

C signature:
`gsl_stream_handler_t * gsl_set_stream_handler (gsl_stream_handler_t * new_handler)`
"""
function gsl_set_stream_handler(new_handler)
    ccall((:gsl_set_stream_handler, libgsl), Ptr{gsl_stream_handler_t}, (Ptr{gsl_stream_handler_t},), new_handler)
end

"""
    gsl_set_stream(new_stream) -> Ptr{Cvoid}

C signature:
`FILE * gsl_set_stream (FILE * new_stream)`
"""
function gsl_set_stream(new_stream)
    ccall((:gsl_set_stream, libgsl), Ptr{Cvoid}, (Ptr{Cvoid},), new_stream)
end

