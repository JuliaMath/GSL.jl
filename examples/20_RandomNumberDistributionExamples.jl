##################
# 20.39 Examples #
##################

#The following program demonstrates the use of a random number generator to produce variates from a distribution. It prints 10 samples from the Poisson distribution with a mean of 3.

using GSL
n, mu = 10, 3.0
T = rng_env_setup()
r = rng_alloc(T)
for i=1:n
    k=int64(ran_poisson(r, mu))
    @printf(" %u", k)
end
println()
rng_free(r)

#Output
# 2 5 5 2 1 0 3 4 1 1

###

#The following program generates a random walk in two dimensions.

x=y=0

T = rng_env_setup()
r = rng_alloc(T)

@printf("%f %f\n", x, y)
for i=1:10
    dx=dy=0.0
    dx, dy=ran_dir_2d(r)
    x += dx
    y += dy 
    @printf("%f %f\n", x, y)
end

rng_free(r)

###

#The following program computes the upper and lower cumulative distribution functions for the standard normal distribution at x=2.

x=2.0

P = cdf_ugaussian_P(x)
@printf("prob(x < %f) = %f\n", x, P)

Q = cdf_ugaussian_Q(x)
@printf("prob(x > %f) = %f\n", x, Q)

x = cdf_ugaussian_Pinv(P)
@printf("Pinv(%f) = %f\n", P, x)

x = cdf_ugaussian_Qinv(Q)
@printf("Qinv(%f) = %f\n", Q, x)

#Output
#prob(x < 2.000000) = 0.977250
#prob(x > 2.000000) = 0.022750
#Pinv(0.977250) = 2.000000
#Qinv(0.022750) = 2.000000
