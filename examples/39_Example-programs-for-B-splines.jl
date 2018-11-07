import GSL
using Printf
using PyPlot
clf()

k = 4    #spline order; cubic
n = 200  #number of data points to fit 
ncoeffs = 12 # number of fit coefficients 
nbreak = ncoeffs + 2 - k

T = GSL.rng_env_setup()
r = GSL.rng_alloc(T)

# allocate a cubic bspline workspace
bw = GSL.bspline_alloc(k, nbreak)
B = GSL.vector_alloc(ncoeffs)

x = GSL.vector_alloc(n)
println(x)
y = GSL.vector_alloc(n)
X = GSL.matrix_alloc(n, ncoeffs)
c = GSL.vector_alloc(ncoeffs)
w = GSL.vector_alloc(n)
cov = GSL.matrix_alloc(ncoeffs, ncoeffs)
mw = GSL.multifit_linear_alloc(n, ncoeffs)

println("#m=0,S=0")
# this is the data to be fitted 
for i=0:n-1
    xi = (15.0 / (n - 1)) * i
    yi = cos(xi) * exp(-0.1*xi)

    sigma = 0.1*yi
    dy = GSL.ran_gaussian(r, sigma)
    yi += dy

    GSL.vector_set(x, i, xi)
    GSL.vector_set(y, i, yi)
    GSL.vector_set(w, i, 1.0 / (sigma * sigma))

    @printf("%f %f\n", xi, yi)
    plot(xi, yi, "or")
    
end

# use uniform breakpoints on [0, 15] 
GSL.bspline_knots_uniform(0.0, 15.0, bw)

# construct the fit matrix X 
for i=0:n-1
    xi = GSL.vector_get(x, i)

    # compute B_j(xi) for all j 
    GSL.bspline_eval(xi, B, bw)

    # fill in row i of X 
    for j=0:ncoeffs-1
        Bj = GSL.vector_get(B, j)
        GSL.matrix_set(X, i, j, Bj)
    end
end



#XXX Works until here
# do the fit
chisq = [0.0]
GSL.multifit_wlinear(X, w, y, c, cov, chisq, mw)
dof = n - ncoeffs
tss = GSL.stats_wtss(GSL.vector_ptr(w,0), 1, GSL.vector_ptr(y, 0), 1, n)
Rsq = 1.0 - chisq[] / tss

@printf("chisq/dof = %e, Rsq = %f\n", chisq[] / dof, Rsq)

# output the smoothed curve 
println("#m=1,S=0")
for xi in collect(0.0:0.1:14.9)
    GSL.bspline_eval(xi, B, bw)
    yi = Float64[0]
    yerr = Float64[0]        
    GSL.multifit_linear_est(B, c, cov, yi, yerr)
    @printf("%f %f\n", xi, yi[])
    plot(xi, yi, ".k")
end

GSL.rng_free(r)
GSL.bspline_free(bw)
GSL.vector_free(B)
GSL.vector_free(x)
GSL.vector_free(y)
GSL.matrix_free(X)
GSL.vector_free(c)
GSL.vector_free(w)
GSL.matrix_free(cov)
GSL.multifit_linear_free(mw)

show()
