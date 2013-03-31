#################
# 28.2 Examples #
#################

using GSL

f = x->x^1.5

println("f(x) = x^(3/2)")

result, abserr = gsl_deriv_central(f, 2.0, 1e-8)
println("x = 2.0")
@printf("f'(x) = %.10f +/- %.10f\n", result, abserr)
@printf("exact = %.10f\n\n", 1.5 * sqrt(2.0))
 
result, abserr = gsl_deriv_forward(f, 0.0, 1e-8)
println("x = 0.0")
@printf("f'(x) = %.10f +/- %.10f\n", result, abserr)
@printf("exact = %.10f\n", 0.0)

