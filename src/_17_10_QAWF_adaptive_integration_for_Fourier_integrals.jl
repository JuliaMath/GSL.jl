#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 17.10 QAWF adaptive integration for Fourier integrals #
#########################################################
export integration_qawf










# This function attempts to compute a Fourier integral of the function f over
# the semi-infinite interval [a,+\infty).                 I = \int_a^{+\infty}
# dx f(x) sin(omega x)           I = \int_a^{+\infty} dx f(x) cos(omega x)  The
# parameter \omega and choice of \sin or \cos is taken from the table wf (the
# length L can take any value, since it is overridden by this function to a
# value appropriate for the Fourier integration).  The integral is computed
# using the QAWO algorithm over each of the subintervals,                 C_1 =
# [a, a + c]           C_2 = [a + c, a + 2 c]           ... = ...           C_k
# = [a + (k-1) c, a + k c]  where  c = (2 floor(|\omega|) + 1) \pi/|\omega|.
# The width c is chosen to cover an odd number of periods so that the
# contributions from the intervals alternate in sign and are monotonically
# decreasing when f is positive and monotonically decreasing.  The sum of this
# sequence of contributions is accelerated using the epsilon-algorithm.
# This function works to an overall absolute tolerance of abserr.  The
# following strategy is used: on each interval C_k the algorithm tries to
# achieve the tolerance                 TOL_k = u_k abserr  where  u_k = (1 -
# p)p^{k-1} and p = 9/10.  The sum of the geometric series of contributions
# from each interval gives an overall tolerance of abserr.          If the
# integration of a subinterval leads to difficulties then the accuracy
# requirement for subsequent intervals is relaxed,                 TOL_k = u_k
# max(abserr, max_{i<k}{E_i})  where E_k is the estimated error on the interval
# C_k.          The subintervals and their results are stored in the memory
# provided by workspace.  The maximum number of subintervals is given by limit,
# which may not exceed the allocated size of the workspace.  The integration
# over each subinterval uses the memory provided by cycle_workspace as
# workspace for the QAWO algorithm.
#
#   Returns: Cint
function integration_qawf(a::Real, epsabs::Real, limit::Integer)
    f = Ref{gsl_function}()
    workspace = Ref{gsl_integration_workspace}()
    cycle_workspace = Ref{gsl_integration_workspace}()
    wf = Ref{gsl_integration_qawo_table}()
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_integration_qawf, libgsl), Cint,
        (Ref{gsl_function}, Cdouble, Cdouble, Csize_t,
        Ref{gsl_integration_workspace}, Ref{gsl_integration_workspace},
        Ref{gsl_integration_qawo_table}, Ref{Cdouble}, Ref{Cdouble}), f, a,
        epsabs, limit, workspace, cycle_workspace, wf, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return f[], workspace[], cycle_workspace[], wf[], result[], abserr[]
end
