################
# 6.6 Examples #
################
using GSL

a=[-1, 0, 0, 0, 0, 1] 

w = gsl_poly_complex_workspace_alloc(6)
z = gsl_poly_complex_solve(a, 6, w)
gsl_poly_complex_workspace_free(w)

for i=1:5
    @printf("z%d = %+.18f %+.18f\n", i-1, z[2*i-1], z[2*i])
end

#The preceding is equivalent to
z = roots(a)
for i=1:5
    @printf("z%d = %+.18f %+.18f\n", i-1, real(z[i]), imag(z[i]))
end

