using GSL

k = 4    #spline order; cubic
n = 200  #number of data points to fit 
ncoeffs = 12 # number of fit coefficients 
nbreak = ncoeffs + 2 - k

T = rng_env_setup()
r = rng_alloc(T)

# allocate a cubic bspline workspace
bw = bspline_alloc(k, nbreak)
B = vector_alloc(ncoeffs)

x = vector_alloc(n)
println(x)
y = vector_alloc(n)
X = matrix_alloc(n, ncoeffs)
c = vector_alloc(ncoeffs)
w = vector_alloc(n)
cov = matrix_alloc(ncoeffs, ncoeffs)
mw = multifit_linear_alloc(n, ncoeffs)

println("#m=0,S=0")
# this is the data to be fitted 
for i=0:n-1
    xi = (15.0 / (n - 1)) * i
    yi = cos(xi) * exp(-0.1*xi)

    sigma = 0.1*yi
    dy = ran_gaussian(r, sigma)
    yi += dy

    vector_set(x, i, xi)
    vector_set(y, i, yi)
    vector_set(w, i, 1.0 / (sigma * sigma))

    @printf("%f %f\n", xi, yi)
end

# use uniform breakpoints on [0, 15] 
bspline_knots_uniform(0.0, 15.0, bw)

# construct the fit matrix X 
for i=0:n-1
    xi = vector_get(x, i)

    # compute B_j(xi) for all j 
    bspline_eval(xi, B, bw)

    # fill in row i of X 
    for j=0:ncoeffs-1
        Bj = vector_get(B, j)
        matrix_set(X, i, j, Bj)
    end
end

#XXX Works until here
# do the fit 
multifit_wlinear(X, w, y, c, cov, chisq, mw)

dof = n - ncoeffs
tss = stats_wtss(w->data, 1, y->data, 1, y->size)
Rsq = 1.0 - chisq / tss

@printf("chisq/dof = %e, Rsq = %f\n", chisq / dof, Rsq)

# output the smoothed curve 
println("#m=1,S=0")
for xi in [0.0:0.1:14.9]
    bspline_eval(xi, B, bw)
    multifit_linear_est(B, c, cov, &yi, &yerr)
    @printf("%f %f\n", xi, yi)
end

rng_free(r)
bspline_free(bw)
vector_free(B)
vector_free(x)
vector_free(y)
matrix_free(X)
vector_free(c)
vector_free(w)
matrix_free(cov)
multifit_linear_free(mw)
