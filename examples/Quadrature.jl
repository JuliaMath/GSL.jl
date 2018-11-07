import GSL

f = x -> x^1.5

ws_size = 100 # Sufficient for most func, according to docs
ws =  GSL.integration_cquad_workspace_alloc(ws_size)

# Wrap function
ff = GSL.@gsl_function(f)

# Call GSL cquad
a = 0
b = 1
result = Cdouble[0]
abserr = Cdouble[0]
nevals = Csize_t[0]
GSL.integration_cquad(ff, a, b, 1e-10, 1e-10, ws, result, abserr, nevals)

exact = 1/2.5
@show result[]
@show abserr[]
@show Int(nevals[])
@show result[] - exact

@assert abs(result[] - exact) < abserr[]

GSL.integration_cquad_workspace_free(ws)
