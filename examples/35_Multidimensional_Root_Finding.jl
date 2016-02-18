#TODO: Incorporate the following line into build.jl using BinDeps functionality
#      such that the path to libgslcblas.so.0 is determined automatically.
@unix_only Libdl.dlopen_e("/usr/lib/libgslcblas.so.0", Libdl.RTLD_GLOBAL)

#Adapted from the GSL multiroot test
using GSL

#vector_alloc
v0 = Cdouble[1.0, 5.0, 2.0, 1.5, -1.0]

n = length(v0)
v = ccall((:gsl_vector_alloc, GSL.libgsl), Ptr{gsl_vector}, (Csize_t,), n)

# #vector_set
for i=1:n
    ccall((:gsl_vector_set, GSL.libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, i-1, v0[i])
end

dnewton_ptr_ptr = cglobal((:gsl_multiroot_fsolver_dnewton, GSL.libgsl), Ptr{GSL.gsl_multiroot_fsolver_type})
dnewton_ptr = unsafe_load(dnewton_ptr_ptr)
dnewton_solver = GSL.multiroot_fsolver_alloc(dnewton_ptr, n)

gsl_multiroot_fsolver_set_ptr_ptr = cglobal((:gsl_multiroot_fsolver_set, GSL.libgsl), Ptr{Ptr{GSL.gsl_multiroot_fsolver}})
gsl_multiroot_fsolver_set_ptr = unsafe_load(gsl_multiroot_fsolver_set_ptr_ptr)

#vector_get
for i=1:5
    @assert v0[i] == ccall((:gsl_vector_get, GSL.libgsl), Cdouble, (Ptr{gsl_vector}, Csize_t), v, i-1)
end

function gsl_vector_ptr(x::Ptr{gsl_vector}, n)
    return pointer_to_array(ccall((:gsl_vector_ptr, GSL.libgsl), Ptr{Cdouble}, (Ptr{gsl_vector}, Csize_t), x, 0), n)
end

function function_callback(x::Ptr{gsl_vector}, jlfunc::Function, f::Ptr{gsl_vector})
    convert(Cint, jlfunc(gsl_vector_ptr(x, n), gsl_vector_ptr(f, n)))::Cint
end
const function_callback_ptr = cfunction(function_callback, Cint, (Ptr{gsl_vector}, Ref{Function}, Ptr{gsl_vector}))

f = function(x, f)
    f[:] = (x - (-3:2:5)) .^ 2
    0.0
end

#Ptr{multiroot_function_struct}), is the thing we want but is very hard to do in pure Julia
#Preferable to write C shim to create the multiroot_function_struct directly.

func = Ref(gsl_multiroot_function(
    function_callback_ptr,
    n,
    pointer_from_objref(f)))

GSL.multiroot_fsolver_set(
    dnewton_solver,
    Base.unsafe_convert(Ptr{eltype(func)}, func),
    v)

maxiter = 100
resid = 0.01
for iter = 1:maxiter
    status = GSL.multiroot_fsolver_iterate(dnewton_solver)
    v = GSL.multiroot_fsolver_root(dnewton_solver)


    #XXX What we need is to extract the residual which is a gsl_vector stored
    #in a field called "f" in the dnewton_solver struct
    #
    # res = get f from dnewton_solver
    #
    # The rest of this test works so long as the correct residual res is given
    #println(gsl_vector_ptr(res, n))
    #errno = GSL.multiroot_test_residual(res, resid)
    #if GSL.gsl_errno(errno) == GSL.SUCCESS
    #    info("stopped after $iter iterations")
    #    break
    #end
end
v = GSL.multiroot_fsolver_root(dnewton_solver)
v1= gsl_vector_ptr(v, n)

using Base.Test
@test_approx_eq_eps v1 -3:2:5 resid
