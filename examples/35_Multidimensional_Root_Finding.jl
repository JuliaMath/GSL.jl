using GSL

#vector_alloc
#v = Cdouble[1.0, 5.0, 2.0, 1.5, -1.0]
#n = length(v)
 n = 5
 v = ccall((:gsl_vector_alloc, :libgsl), Ptr{gsl_vector}, (Csize_t,), n)

# #vector_set
 ccall((:gsl_vector_set, :libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, 0, 1.0)
 ccall((:gsl_vector_set, :libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, 1, 5.0)
 ccall((:gsl_vector_set, :libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, 2, 2.0)
 ccall((:gsl_vector_set, :libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, 3, 1.5)#
 ccall((:gsl_vector_set, :libgsl), Void, (Ptr{gsl_vector}, Csize_t, Cdouble), v, 4, -1.0)

dnewton_ptr_ptr = cglobal((:gsl_multiroot_fsolver_dnewton, :libgsl), Ptr{GSL.gsl_multiroot_fsolver_type})
dnewton_ptr = unsafe_load(dnewton_ptr_ptr)
dnewton_solver = GSL.multiroot_fsolver_alloc(dnewton_ptr, n)

gsl_multiroot_fsolver_set_ptr_ptr = cglobal((:gsl_multiroot_fsolver_set, :libgsl), Ptr{Ptr{GSL.gsl_multiroot_fsolver}})
gsl_multiroot_fsolver_set_ptr = unsafe_load(gsl_multiroot_fsolver_set_ptr_ptr)

@show gsl_multiroot_fsolver_set_ptr


isdefined(:gsl_vector) || immutable gsl_vector end


#vector_get
for i=1:5
    @show ccall((:gsl_vector_get, :libgsl), Cdouble, (Ptr{gsl_vector}, Csize_t), v, i-1)
end

function gsl_vector_ptr(x::Ptr{gsl_vector}, n)
  return pointer_to_array(ccall((:gsl_vector_ptr, :libgsl), Ptr{Cdouble}, (Ptr{gsl_vector}, Csize_t), x, 0), n)
end
function function_callback(x::Ptr{gsl_vector}, jlfunc::Function, f::Ptr{gsl_vector})
    convert(Cint, jlfunc(gsl_vector_ptr(x, n), gsl_vector_ptr(f, n)))::Cint
end
const function_callback_ptr = cfunction(function_callback, Cint, (Ptr{gsl_vector}, Ref{Function}, Ptr{gsl_vector}))

f = function(x, f)
  #@show x
  f[:] = (x + (-3:2:5)) .^ 2
  return 0
end

#Ptr{multiroot_function_struct}), is the thing we want but is very hard to do in pure Julia
#Preferable to write C shim to create the multiroot_function_struct directly.

func = Ref(gsl_multiroot_function(
  function_callback_ptr,
  n,
  pointer_from_objref(f)))
@show GSL.multiroot_fsolver_set(
  dnewton_solver,
  Base.unsafe_convert(Ptr{eltype(func)}, func),
  v)
for i = 1:1000
  status = GSL.multiroot_fsolver_iterate(dnewton_solver)
  v = GSL.multiroot_fsolver_root(dnewton_solver)
  if GSL.multiroot_test_residual(v, 0.01) == 0
    println("stopped after ", i, " iterations")
    break
  end
end
v = GSL.multiroot_fsolver_root(dnewton_solver)
println(gsl_vector_ptr(v, n))
