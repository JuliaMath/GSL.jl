#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 41.2 Setting up your IEEE environment #
#########################################
export ieee_env_setup














# This function reads the environment variable GSL_IEEE_MODE and attempts to
# set up the corresponding specified IEEE modes.  The environment variable
# should be a list of keywords, separated by commas, like this,
# GSL_IEEE_MODE = "keyword,keyword,..."  where keyword is one of the following
# mode-names,             single-precision double-precision extended-precision
# round-to-nearest round-down round-up round-to-zero mask-all mask-invalid
# mask-denormalized mask-division-by-zero mask-overflow mask-underflow trap-
# inexact trap-common  If GSL_IEEE_MODE is empty or undefined then the function
# returns immediately and no attempt is made to change the system's IEEE mode.
# When the modes from GSL_IEEE_MODE are turned on the function prints a short
# message showing the new settings to remind you that the results of the
# program will be affected.          If the requested modes are not supported
# by the platform being used then the function calls the error handler and
# returns an error code of GSL_EUNSUP.          When options are specified
# using this method, the resulting mode is based on a default setting of the
# highest available precision (double precision or extended precision,
# depending on the platform) in round-to-nearest mode, with all exceptions
# enabled apart from the inexact exception.  The inexact exception is generated
# whenever rounding occurs, so it must generally be disabled in typical
# scientific calculations.  All other floating-point exceptions are enabled by
# default, including underflows and the use of denormalized numbers, for
# safety.  They can be disabled with the individual mask- settings or together
# using mask-all.          The following adjusted combination of modes is
# convenient for many purposes,                 GSL_IEEE_MODE="double-
# precision,"\                           "mask-underflow,"\
# "mask-denormalized"  This choice ignores any errors relating to small numbers
# (either denormalized, or underflowing to zero) but traps overflows, division
# by zero and invalid operations.          Note that on the x86 series of
# processors this function sets both the original x87 mode and the newer mxcsr
# mode, which controls SSE floating-point operations.  The SSE floating-point
# units do not have a precision-control bit, and always work in double-
# precision.  The single-precision and extended-precision keywords have no
# effect in this case.
# 
#   Returns: Cvoid
function ieee_env_setup()
    ccall( (:gsl_ieee_env_setup, libgsl), Cvoid, () )
end
