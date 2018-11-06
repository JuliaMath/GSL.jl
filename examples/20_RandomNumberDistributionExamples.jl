##################
# 20.39 Examples #
##################

import GSL
using Printf

#The following program demonstrates the use of a random number generator to produce variates from a distribution. It prints 10 samples from the Poisson distribution with a mean of 3.


let n = 10, mu = 3.0
    T = GSL.rng_env_setup()
    r = GSL.rng_alloc(T)
    for i=1:n
        k=Int64(GSL.ran_poisson(r, mu))
        @printf(" %u", k)
    end
    println()
    GSL.rng_free(r)
    
    #Output
    # 2 5 5 2 1 0 3 4 1 1
end

###

#The following program generates a random walk in two dimensions.

let x=y=0.0
    T = GSL.rng_env_setup()
    r = GSL.rng_alloc(T)

    @printf("%f %f\n", x, y)
    for i=1:10
        dx, dy = Cdouble[0], Cdouble[0]
        GSL.ran_dir_2d(r, dx, dy)
        x += dx[]
        y += dy[]
        @printf("%f %f\n", x, y)
    end

    GSL.rng_free(r)
end

###

# The following program computes the upper and lower cumulative distribution functions for the standard normal distribution at x=2.

let x=2.0

    P = GSL.cdf_ugaussian_P(x)
    @printf("prob(x < %f) = %f\n", x, P)

    Q = GSL.cdf_ugaussian_Q(x)
    @printf("prob(x > %f) = %f\n", x, Q)

    x = GSL.cdf_ugaussian_Pinv(P)
    @printf("Pinv(%f) = %f\n", P, x)

    x = GSL.cdf_ugaussian_Qinv(Q)
    @printf("Qinv(%f) = %f\n", Q, x)

    #Output
    #prob(x < 2.000000) = 0.977250
    #prob(x > 2.000000) = 0.022750
    #Pinv(0.977250) = 2.000000
    #Qinv(0.022750) = 2.000000
end
