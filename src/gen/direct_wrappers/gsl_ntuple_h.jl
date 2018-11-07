#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_ntuple.h #############################################################


@doc md"""
    ntuple_open(filename, ntuple_data, size) -> Ptr{gsl_ntuple}

C signature:
`gsl_ntuple * gsl_ntuple_open (char * filename, void * ntuple_data, size_t size)`

GSL documentation:

### `gsl_ntuple * gsl_ntuple_open (char * filename, void * ntuple_data, size_t size)`

> This function opens an existing ntuple file `filename` for reading and
> returns a pointer to a corresponding ntuple struct. The ntuples in the
> file must have size `size`. A pointer to memory for the current ntuple
> row `ntuple_data` must be supplied---this is used to copy ntuples in
> and out of the file.

"""
function ntuple_open(filename, ntuple_data, size)
    ccall((:gsl_ntuple_open, libgsl), Ptr{gsl_ntuple}, (Ref{Cchar}, Ptr{Cvoid}, Csize_t), filename, ntuple_data, size)
end

@doc md"""
    ntuple_create(filename, ntuple_data, size) -> Ptr{gsl_ntuple}

C signature:
`gsl_ntuple * gsl_ntuple_create (char * filename, void * ntuple_data, size_t size)`

GSL documentation:

### `gsl_ntuple * gsl_ntuple_create (char * filename, void * ntuple_data, size_t size)`

> This function creates a new write-only ntuple file `filename` for
> ntuples of size `size` and returns a pointer to the newly created
> ntuple struct. Any existing file with the same name is truncated to
> zero length and overwritten. A pointer to memory for the current
> ntuple row `ntuple_data` must be supplied---this is used to copy
> ntuples in and out of the file.

"""
function ntuple_create(filename, ntuple_data, size)
    ccall((:gsl_ntuple_create, libgsl), Ptr{gsl_ntuple}, (Ref{Cchar}, Ptr{Cvoid}, Csize_t), filename, ntuple_data, size)
end

@doc md"""
    ntuple_write(ntuple) -> Cint

C signature:
`int gsl_ntuple_write (gsl_ntuple * ntuple)`

GSL documentation:

### `int gsl_ntuple_write (gsl_ntuple * ntuple)`

> This function writes the current ntuple `ntuple->ntuple_data` of size
> `ntuple->size` to the corresponding file.

"""
function ntuple_write(ntuple)
    ccall((:gsl_ntuple_write, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

@doc md"""
    ntuple_read(ntuple) -> Cint

C signature:
`int gsl_ntuple_read (gsl_ntuple * ntuple)`

GSL documentation:

### `int gsl_ntuple_read (gsl_ntuple * ntuple)`

> This function reads the current row of the ntuple file for `ntuple`
> and stores the values in `ntuple->data`.

"""
function ntuple_read(ntuple)
    ccall((:gsl_ntuple_read, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

@doc md"""
    ntuple_bookdata(ntuple) -> Cint

C signature:
`int gsl_ntuple_bookdata (gsl_ntuple * ntuple)`

GSL documentation:

### `int gsl_ntuple_bookdata (gsl_ntuple * ntuple)`

> This function is a synonym for `gsl_ntuple_write`.

"""
function ntuple_bookdata(ntuple)
    ccall((:gsl_ntuple_bookdata, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

@doc md"""
    ntuple_project(h, ntuple, value_func, select_func) -> Cint

C signature:
`int gsl_ntuple_project (gsl_histogram * h, gsl_ntuple * ntuple, gsl_ntuple_value_fn *value_func, gsl_ntuple_select_fn *select_func)`

GSL documentation:

### `int gsl_ntuple_project (gsl_histogram * h, gsl_ntuple * ntuple, gsl_ntuple_value_fn * value_func, gsl_ntuple_select_fn * select_func)`

> This function updates the histogram `h` from the ntuple `ntuple` using
> the functions `value_func` and `select_func`. For each ntuple row
> where the selection function `select_func` is non-zero the
> corresponding value of that row is computed using the function
> `value_func` and added to the histogram. Those ntuple rows where
> `select_func` returns zero are ignored. New entries are added to the
> histogram, so subsequent calls can be used to accumulate further data
> in the same histogram.

"""
function ntuple_project(h, ntuple, value_func, select_func)
    ccall((:gsl_ntuple_project, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_ntuple}, Ref{gsl_ntuple_value_fn}, Ref{gsl_ntuple_select_fn}), h, ntuple, value_func, select_func)
end

@doc md"""
    ntuple_close(ntuple) -> Cint

C signature:
`int gsl_ntuple_close (gsl_ntuple * ntuple)`

GSL documentation:

### `int gsl_ntuple_close (gsl_ntuple * ntuple)`

> This function closes the ntuple file `ntuple` and frees its associated
> allocated memory.

"""
function ntuple_close(ntuple)
    ccall((:gsl_ntuple_close, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

