#Constants

#######################
# 7 Special functions #
#######################

#############
# 7.3 Modes #
#############
export PREC_DOUBLE, PREC_SINGLE, PREC_APPROX
const PREC_DOUBLE=convert(gsl_mode_t, 0)
const PREC_SINGLE=convert(gsl_mode_t, 1)
const PREC_APPROX=convert(gsl_mode_t, 2)

