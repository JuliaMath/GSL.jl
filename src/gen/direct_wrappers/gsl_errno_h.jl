#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_errno.h ##############################################################


@doc md"""
    stream_printf(label, file, line, reason) -> Cvoid

C signature:
`void gsl_stream_printf (const char *label, const char *file, int line, const char *reason)`
"""
function stream_printf(label, file, line, reason)
    ccall((:gsl_stream_printf, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Cint, Ref{Cchar}), label, file, line, reason)
end

@doc md"""
    strerror(gsl_errno) -> Ptr{Cchar}

C signature:
`const char * gsl_strerror (const int gsl_errno)`

GSL documentation:

### `const char * gsl_strerror (const int gsl_errno)`

> This function returns a pointer to a string describing the error code
> `gsl_errno`. For example:
>
>     printf ("error: %s\n", gsl_strerror (status));
>
> would print an error message like `error: output range error` for a
> status value of `GSL_ERANGE`.

"""
function strerror(gsl_errno)
    ccall((:gsl_strerror, libgsl), Ptr{Cchar}, (Cint,), gsl_errno)
end

@doc md"""
    set_error_handler(new_handler) -> Ptr{gsl_error_handler_t}

C signature:
`gsl_error_handler_t * gsl_set_error_handler (gsl_error_handler_t * new_handler)`

GSL documentation:

### `gsl_error_handler_t * gsl_set_error_handler (gsl_error_handler_t * new_handler)`

> This function sets a new error handler, `new_handler`, for the GSL
> library routines. The previous handler is returned (so that you can
> restore it later). Note that the pointer to a user defined error
> handler function is stored in a static variable, so there can be only
> one error handler per program. This function should be not be used in
> multi-threaded programs except to set up a program-wide error handler
> from a master thread. The following example shows how to set and
> restore a new error handler:
>
>     /* save original handler, install new handler */
>     old_handler = gsl_set_error_handler (&my_handler); 
>
>     /* code uses new handler */
>     .....     
>
>     /* restore original handler */
>     gsl_set_error_handler (old_handler); 
>
> To use the default behavior (`abort` on error) set the error handler
> to `NULL`:
>
>     old_handler = gsl_set_error_handler (NULL); 

"""
function set_error_handler(new_handler)
    ccall((:gsl_set_error_handler, libgsl), Ptr{gsl_error_handler_t}, (Ptr{gsl_error_handler_t},), new_handler)
end

@doc md"""
    set_error_handler_off() -> Ptr{gsl_error_handler_t}

C signature:
`gsl_error_handler_t * gsl_set_error_handler_off (void)`

GSL documentation:

### `gsl_error_handler_t * gsl_set_error_handler_off ()`

> This function turns off the error handler by defining an error handler
> which does nothing. This will cause the program to continue after any
> error, so the return values from any library routines must be checked.
> This is the recommended behavior for production programs. The previous
> handler is returned (so that you can restore it later).

The error behavior can be changed for specific applications by
recompiling the library with a customized definition of the `GSL_ERROR`
macro in the file `gsl_errno.h`.

"""
function set_error_handler_off()
    ccall((:gsl_set_error_handler_off, libgsl), Ptr{gsl_error_handler_t}, (), )
end

@doc md"""
    set_stream_handler(new_handler) -> Ptr{gsl_stream_handler_t}

C signature:
`gsl_stream_handler_t * gsl_set_stream_handler (gsl_stream_handler_t * new_handler)`
"""
function set_stream_handler(new_handler)
    ccall((:gsl_set_stream_handler, libgsl), Ptr{gsl_stream_handler_t}, (Ptr{gsl_stream_handler_t},), new_handler)
end

@doc md"""
    set_stream(new_stream) -> Ptr{Cvoid}

C signature:
`FILE * gsl_set_stream (FILE * new_stream)`
"""
function set_stream(new_stream)
    ccall((:gsl_set_stream, libgsl), Ptr{Cvoid}, (Ptr{Cvoid},), new_stream)
end

