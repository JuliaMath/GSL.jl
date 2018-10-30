#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_ntuple.h #############################################################


"""
    gsl_ntuple_open(filename, ntuple_data, size) -> Ptr{gsl_ntuple}

C signature:
`gsl_ntuple * gsl_ntuple_open (char * filename, void * ntuple_data, size_t size)`
"""
function gsl_ntuple_open(filename, ntuple_data, size)
    ccall((:gsl_ntuple_open, libgsl), Ptr{gsl_ntuple}, (Ref{Cchar}, Ptr{Cvoid}, Csize_t), filename, ntuple_data, size)
end

"""
    gsl_ntuple_create(filename, ntuple_data, size) -> Ptr{gsl_ntuple}

C signature:
`gsl_ntuple * gsl_ntuple_create (char * filename, void * ntuple_data, size_t size)`
"""
function gsl_ntuple_create(filename, ntuple_data, size)
    ccall((:gsl_ntuple_create, libgsl), Ptr{gsl_ntuple}, (Ref{Cchar}, Ptr{Cvoid}, Csize_t), filename, ntuple_data, size)
end

"""
    gsl_ntuple_write(ntuple) -> Cint

C signature:
`int gsl_ntuple_write (gsl_ntuple * ntuple)`
"""
function gsl_ntuple_write(ntuple)
    ccall((:gsl_ntuple_write, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

"""
    gsl_ntuple_read(ntuple) -> Cint

C signature:
`int gsl_ntuple_read (gsl_ntuple * ntuple)`
"""
function gsl_ntuple_read(ntuple)
    ccall((:gsl_ntuple_read, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

"""
    gsl_ntuple_bookdata(ntuple) -> Cint

C signature:
`int gsl_ntuple_bookdata (gsl_ntuple * ntuple)`
"""
function gsl_ntuple_bookdata(ntuple)
    ccall((:gsl_ntuple_bookdata, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

"""
    gsl_ntuple_project(h, ntuple, value_func, select_func) -> Cint

C signature:
`int gsl_ntuple_project (gsl_histogram * h, gsl_ntuple * ntuple, gsl_ntuple_value_fn *value_func, gsl_ntuple_select_fn *select_func)`
"""
function gsl_ntuple_project(h, ntuple, value_func, select_func)
    ccall((:gsl_ntuple_project, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_ntuple}, Ref{gsl_ntuple_value_fn}, Ref{gsl_ntuple_select_fn}), h, ntuple, value_func, select_func)
end

"""
    gsl_ntuple_close(ntuple) -> Cint

C signature:
`int gsl_ntuple_close (gsl_ntuple * ntuple)`
"""
function gsl_ntuple_close(ntuple)
    ccall((:gsl_ntuple_close, libgsl), Cint, (Ptr{gsl_ntuple},), ntuple)
end

