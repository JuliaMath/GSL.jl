#################
# 28.2 Examples #
#################

using GSL
using Printf

f = x -> x^1.5

println("f(x) = x^(3/2)")

result = Cdouble[0]
abserr = Cdouble[0]
h = 1e-8
ff = @gsl_function(f)

x = 2.0
gsl_deriv_central(ff, x, h, result, abserr)
println("x = 2.0")
@printf("f'(x) = %.10f +/- %.10f\n", result[], abserr[])
@printf("exact = %.10f\n\n", 1.5 * sqrt(2.0))

x = 0.0
gsl_deriv_forward(ff, x, h, result, abserr)
println("x = 0.0")
@printf("f'(x) = %.10f +/- %.10f\n", result[], abserr[])
@printf("exact = %.10f\n", 0.0)

