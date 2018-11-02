using GSL
using Printf
using PyPlot
clf()

k = 4    #spline order; cubic
n = 200  #number of data points to fit 
ncoeffs = 12 # number of fit coefficients 
nbreak = ncoeffs + 2 - k

T = gsl_rng_env_setup()
r = gsl_rng_alloc(T)

# allocate a cubic bspline workspace
bw = gsl_bspline_alloc(k, nbreak)
B = gsl_vector_alloc(ncoeffs)

x = gsl_vector_alloc(n)
println(x)
y = gsl_vector_alloc(n)
X = gsl_matrix_alloc(n, ncoeffs)
c = gsl_vector_alloc(ncoeffs)
w = gsl_vector_alloc(n)
cov = gsl_matrix_alloc(ncoeffs, ncoeffs)
mw = gsl_multifit_linear_alloc(n, ncoeffs)

println("#m=0,S=0")
# this is the data to be fitted 
for i=0:n-1
    xi = (15.0 / (n - 1)) * i
    yi = cos(xi) * exp(-0.1*xi)

    sigma = 0.1*yi
    dy = gsl_ran_gaussian(r, sigma)
    yi += dy

    gsl_vector_set(x, i, xi)
    gsl_vector_set(y, i, yi)
    gsl_vector_set(w, i, 1.0 / (sigma * sigma))

    @printf("%f %f\n", xi, yi)
    plot(xi, yi, "or")
    
end

# use uniform breakpoints on [0, 15] 
gsl_bspline_knots_uniform(0.0, 15.0, bw)

# construct the fit matrix X 
for i=0:n-1
    xi = gsl_vector_get(x, i)

    # compute B_j(xi) for all j 
    gsl_bspline_eval(xi, B, bw)

    # fill in row i of X 
    for j=0:ncoeffs-1
        Bj = gsl_vector_get(B, j)
        gsl_matrix_set(X, i, j, Bj)
    end
end



#XXX Works until here
# do the fit
chisq = [0.0]
gsl_multifit_wlinear(X, w, y, c, cov, chisq, mw)
dof = n - ncoeffs
tss = gsl_stats_wtss(gsl_vector_ptr(w,0), 1, gsl_vector_ptr(y, 0), 1, n)
Rsq = 1.0 - chisq[] / tss

@printf("chisq/dof = %e, Rsq = %f\n", chisq[] / dof, Rsq)

# output the smoothed curve 
println("#m=1,S=0")
for xi in collect(0.0:0.1:14.9)
    gsl_bspline_eval(xi, B, bw)
    yi = Float64[0]
    yerr = Float64[0]        
    gsl_multifit_linear_est(B, c, cov, yi, yerr)
    @printf("%f %f\n", xi, yi[])
    plot(xi, yi, ".k")
end

gsl_rng_free(r)
gsl_bspline_free(bw)
gsl_vector_free(B)
gsl_vector_free(x)
gsl_vector_free(y)
gsl_matrix_free(X)
gsl_vector_free(c)
gsl_vector_free(w)
gsl_matrix_free(cov)
gsl_multifit_linear_free(mw)

show()
