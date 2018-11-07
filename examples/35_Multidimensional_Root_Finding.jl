using Test
import GSL
using LinearAlgebra

# Define problem
n = 5
roots = collect(1.0:5.0)
function fmulti(x::Array{Float64}, out::Array{Float64})
    out[1:n] =  (x .- roots).^2
end

let
    # Initial guess
    v0 = Cdouble[1.0, 5.0, 2.0, 1.5, -1.0]

    vinit = GSL.vector_alloc(n)
    for i=1:n
        GSL.vector_set(vinit, i-1, v0[i])
    end

    # Setup solver
    func = GSL.@gsl_multiroot_function(fmulti, n)
    dnewton_solver = GSL.multiroot_fsolver_alloc(GSL.gsl_multiroot_fsolver_dnewton, n)
    GSL.multiroot_fsolver_set(dnewton_solver, func, vinit)


    # Run
    maxiter = 100
    converged, status = 0,0
    for iter = 1:maxiter
        status = GSL.multiroot_fsolver_iterate(dnewton_solver)
        x = GSL.multiroot_fsolver_root(dnewton_solver)
        dx = GSL.multiroot_fsolver_dx(dnewton_solver)
        converged = GSL.multiroot_test_delta(dx, x, 0, 1e-8)
        if status==GSL.GSL_SUCCESS && converged==GSL.GSL_SUCCESS
            @info("Stopped after $iter iterations")
            break
        end
    end

    if converged==GSL.GSL_SUCCESS
        @info("Converged")
    else
        @info("Did not converge")
    end
    
    vec = GSL.multiroot_fsolver_root(dnewton_solver)
    v1 = GSL.wrap_gsl_vector(vec)
    
    @show v1
    @show v1-roots

    GSL.multiroot_fsolver_free(dnewton_solver)
    GSL.vector_free(vinit)
end
