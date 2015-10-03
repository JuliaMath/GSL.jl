#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#
#This code is courtesy of Steven G. Johnson
#https://groups.google.com/forum/#!topic/julia-users/_Z0CD-oqbG0
#
##################
# 28.1 Functions #
##################
export deriv_central, deriv_forward, deriv_backward

function function_callback(x::Cdouble, f_)
    f = unsafe_pointer_to_objref(f_)
    Cdouble(f(x))
end
const function_callback_ptr = cfunction(function_callback, Cdouble, (Cdouble, Ptr{Void}))

for gsl_deriv in (:deriv_central, :deriv_forward, :deriv_backward)
    @eval begin
        function ($gsl_deriv)(f::Function, x::Real, h::Real)
            result = Ref{Cdouble}()
            abserr = Ref{Cdouble}()
            gsl_errno = ccall(($(string("gsl_", gsl_deriv)),:libgsl),
                  Cint, (Ptr{gsl_function}, Cdouble, Cdouble,
                         Ref{Cdouble}, Ref{Cdouble}),
                  &gsl_function(function_callback_ptr,
                                pointer_from_objref(f)),
                  x, h,
                  result, abserr)
                  if gsl_errno != 0 throw(GSL_ERROR, gsl_errno) end
            return (result[1], abserr[1])
        end
    end
end

