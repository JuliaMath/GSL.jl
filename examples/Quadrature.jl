import GSL

## CQUAD
println("CQUAD")

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

@show exact = 1/2.5
@show result[]
@show abserr[]
@show Int(nevals[])
@show result[] - exact

@assert abs(result[] - exact) < abserr[]

GSL.integration_cquad_workspace_free(ws)

## QAWF
println("QAWF")

f2 = x -> 1/x

# Wrap function
ff2 = GSL.@gsl_function(f2)

# Input params
a = 1.3
epsabs = 1e-8
limit = 100

# Workspaces
workspace = GSL.integration_workspace_alloc(limit)
cycle_workspace = GSL.integration_workspace_alloc(limit)

# QAWO setup
omega = 1
L = 0 # Any value goes
sine = GSL.GSL_INTEG_COSINE
n = 100
wf = GSL.integration_qawo_table_alloc(omega, L, sine, n)

# Outputs
result = Cdouble[0]
abserr = Cdouble[0]

GSL.integration_qawf(ff2, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr) 

GSL.integration_workspace_free(workspace)
GSL.integration_workspace_free(cycle_workspace)
GSL.integration_qawo_table_free(wf)

# int(cos(x)/x, a, inf) = -CosIntegral(a)
@show exact = -GSL.sf_Ci(a)
@show result[]
@show abserr[]
@show result[]-exact
@assert abs(result[]-exact) < abserr[]
