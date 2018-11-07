################
# 6.6 Examples #
################
import GSL
using Printf
using PolynomialRoots

a=[-1.0, 0.0, 0.0, 0.0, 0.0, 1.0] 

w = GSL.poly_complex_workspace_alloc(6)
z = complex(zeros(5))
GSL.poly_complex_solve(a, 6, w, z)
GSL.poly_complex_workspace_free(w)

lt = (x,y) -> isless(abs(x),abs(y))
for i=1:5
    @printf("z%d = %+.18f %+.18f\n", i-1, real(z[i]), imag(z[i]))
end

#The preceding is equivalent to
z = roots(a)
for i=1:5
    @printf("z%d = %+.18f %+.18f\n", i-1, real(z[i]), imag(z[i]))
end

