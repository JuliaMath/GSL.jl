#
# This code is auto generated from the GSL headers, do not edit!
#

export strerror
@doc md"""
    strerror(gsl_errno)

C signature:
`const char * gsl_strerror (const int gsl_errno)`
"""
function strerror(gsl_errno)
    output = gsl_strerror(gsl_errno)
    output = unsafe_string(output)
    return output
end

export interp_name
@doc md"""
    interp_name(interp)

C signature:
`const char * gsl_interp_name(const gsl_interp * interp)`
"""
function interp_name(interp)
    output = gsl_interp_name(interp)
    output = unsafe_string(output)
    return output
end

export interp2d_name
@doc md"""
    interp2d_name(interp)

C signature:
`const char * gsl_interp2d_name(const gsl_interp2d * interp)`
"""
function interp2d_name(interp)
    output = gsl_interp2d_name(interp)
    output = unsafe_string(output)
    return output
end

export matrix_char_const_ptr
@doc md"""
    matrix_char_const_ptr(m, i, j)

C signature:
`const char * gsl_matrix_char_const_ptr(const gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_const_ptr(m, i, j)
    output = gsl_matrix_char_const_ptr(m, i, j)
    output = unsafe_string(output)
    return output
end

export min_fminimizer_name
@doc md"""
    min_fminimizer_name(s)

C signature:
`const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`
"""
function min_fminimizer_name(s)
    output = gsl_min_fminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_robust_name
@doc md"""
    multifit_robust_name(w)

C signature:
`const char *gsl_multifit_robust_name(const gsl_multifit_robust_workspace *w)`
"""
function multifit_robust_name(w)
    output = gsl_multifit_robust_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_fsolver_name
@doc md"""
    multifit_fsolver_name(s)

C signature:
`const char * gsl_multifit_fsolver_name (const gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_name(s)
    output = gsl_multifit_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_fdfsolver_name
@doc md"""
    multifit_fdfsolver_name(s)

C signature:
`const char * gsl_multifit_fdfsolver_name (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_name(s)
    output = gsl_multifit_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_fdfridge_name
@doc md"""
    multifit_fdfridge_name(w)

C signature:
`const char *gsl_multifit_fdfridge_name(const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_name(w)
    output = gsl_multifit_fdfridge_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_nlinear_name
@doc md"""
    multifit_nlinear_name(w)

C signature:
`const char * gsl_multifit_nlinear_name (const gsl_multifit_nlinear_workspace * w)`
"""
function multifit_nlinear_name(w)
    output = gsl_multifit_nlinear_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_nlinear_trs_name
@doc md"""
    multifit_nlinear_trs_name(w)

C signature:
`const char * gsl_multifit_nlinear_trs_name (const gsl_multifit_nlinear_workspace * w)`
"""
function multifit_nlinear_trs_name(w)
    output = gsl_multifit_nlinear_trs_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_linear_name
@doc md"""
    multilarge_linear_name(w)

C signature:
`const char *gsl_multilarge_linear_name(const gsl_multilarge_linear_workspace * w)`
"""
function multilarge_linear_name(w)
    output = gsl_multilarge_linear_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_nlinear_name
@doc md"""
    multilarge_nlinear_name(w)

C signature:
`const char * gsl_multilarge_nlinear_name (const gsl_multilarge_nlinear_workspace * w)`
"""
function multilarge_nlinear_name(w)
    output = gsl_multilarge_nlinear_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_nlinear_trs_name
@doc md"""
    multilarge_nlinear_trs_name(w)

C signature:
`const char * gsl_multilarge_nlinear_trs_name (const gsl_multilarge_nlinear_workspace * w)`
"""
function multilarge_nlinear_trs_name(w)
    output = gsl_multilarge_nlinear_trs_name(w)
    output = unsafe_string(output)
    return output
end

export multimin_fminimizer_name
@doc md"""
    multimin_fminimizer_name(s)

C signature:
`const char * gsl_multimin_fminimizer_name (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_name(s)
    output = gsl_multimin_fminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multimin_fdfminimizer_name
@doc md"""
    multimin_fdfminimizer_name(s)

C signature:
`const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`
"""
function multimin_fdfminimizer_name(s)
    output = gsl_multimin_fdfminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multiroot_fsolver_name
@doc md"""
    multiroot_fsolver_name(s)

C signature:
`const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`
"""
function multiroot_fsolver_name(s)
    output = gsl_multiroot_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multiroot_fdfsolver_name
@doc md"""
    multiroot_fdfsolver_name(s)

C signature:
`const char * gsl_multiroot_fdfsolver_name (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_name(s)
    output = gsl_multiroot_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv_step_name
@doc md"""
    odeiv_step_name(s)

C signature:
`const char * gsl_odeiv_step_name(const gsl_odeiv_step * s)`
"""
function odeiv_step_name(s)
    output = gsl_odeiv_step_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv_control_name
@doc md"""
    odeiv_control_name(c)

C signature:
`const char * gsl_odeiv_control_name(const gsl_odeiv_control * c)`
"""
function odeiv_control_name(c)
    output = gsl_odeiv_control_name(c)
    output = unsafe_string(output)
    return output
end

export odeiv2_step_name
@doc md"""
    odeiv2_step_name(s)

C signature:
`const char *gsl_odeiv2_step_name (const gsl_odeiv2_step * s)`
"""
function odeiv2_step_name(s)
    output = gsl_odeiv2_step_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv2_control_name
@doc md"""
    odeiv2_control_name(c)

C signature:
`const char *gsl_odeiv2_control_name (const gsl_odeiv2_control * c)`
"""
function odeiv2_control_name(c)
    output = gsl_odeiv2_control_name(c)
    output = unsafe_string(output)
    return output
end

export qrng_name
@doc md"""
    qrng_name(q)

C signature:
`const char * gsl_qrng_name (const gsl_qrng * q)`
"""
function qrng_name(q)
    output = gsl_qrng_name(q)
    output = unsafe_string(output)
    return output
end

export rng_name
@doc md"""
    rng_name(r)

C signature:
`const char *gsl_rng_name (const gsl_rng * r)`
"""
function rng_name(r)
    output = gsl_rng_name(r)
    output = unsafe_string(output)
    return output
end

export root_fsolver_name
@doc md"""
    root_fsolver_name(s)

C signature:
`const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`
"""
function root_fsolver_name(s)
    output = gsl_root_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export root_fdfsolver_name
@doc md"""
    root_fdfsolver_name(s)

C signature:
`const char * gsl_root_fdfsolver_name (const gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_name(s)
    output = gsl_root_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export sf_airy_Ai_e
@doc md"""
    sf_airy_Ai_e(x, mode)

C signature:
`int gsl_sf_airy_Ai_e(const double x, const gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Ai_e(x, mode, result)
    return result
end

export sf_airy_Bi_e
@doc md"""
    sf_airy_Bi_e(x, mode)

C signature:
`int gsl_sf_airy_Bi_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Bi_e(x, mode, result)
    return result
end

export sf_airy_Ai_scaled_e
@doc md"""
    sf_airy_Ai_scaled_e(x, mode)

C signature:
`int gsl_sf_airy_Ai_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Ai_scaled_e(x, mode, result)
    return result
end

export sf_airy_Bi_scaled_e
@doc md"""
    sf_airy_Bi_scaled_e(x, mode)

C signature:
`int gsl_sf_airy_Bi_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Bi_scaled_e(x, mode, result)
    return result
end

export sf_airy_Ai_deriv_e
@doc md"""
    sf_airy_Ai_deriv_e(x, mode)

C signature:
`int gsl_sf_airy_Ai_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Ai_deriv_e(x, mode, result)
    return result
end

export sf_airy_Bi_deriv_e
@doc md"""
    sf_airy_Bi_deriv_e(x, mode)

C signature:
`int gsl_sf_airy_Bi_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Bi_deriv_e(x, mode, result)
    return result
end

export sf_airy_Ai_deriv_scaled_e
@doc md"""
    sf_airy_Ai_deriv_scaled_e(x, mode)

C signature:
`int gsl_sf_airy_Ai_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Ai_deriv_scaled_e(x, mode, result)
    return result
end

export sf_airy_Bi_deriv_scaled_e
@doc md"""
    sf_airy_Bi_deriv_scaled_e(x, mode)

C signature:
`int gsl_sf_airy_Bi_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_Bi_deriv_scaled_e(x, mode, result)
    return result
end

export sf_airy_zero_Ai_e
@doc md"""
    sf_airy_zero_Ai_e(s)

C signature:
`int gsl_sf_airy_zero_Ai_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_zero_Ai_e(s, result)
    return result
end

export sf_airy_zero_Bi_e
@doc md"""
    sf_airy_zero_Bi_e(s)

C signature:
`int gsl_sf_airy_zero_Bi_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_zero_Bi_e(s, result)
    return result
end

export sf_airy_zero_Ai_deriv_e
@doc md"""
    sf_airy_zero_Ai_deriv_e(s)

C signature:
`int gsl_sf_airy_zero_Ai_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_deriv_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_zero_Ai_deriv_e(s, result)
    return result
end

export sf_airy_zero_Bi_deriv_e
@doc md"""
    sf_airy_zero_Bi_deriv_e(s)

C signature:
`int gsl_sf_airy_zero_Bi_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_deriv_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_airy_zero_Bi_deriv_e(s, result)
    return result
end

export sf_bessel_J0_e
@doc md"""
    sf_bessel_J0_e(x)

C signature:
`int gsl_sf_bessel_J0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_J0_e(x, result)
    return result
end

export sf_bessel_J1_e
@doc md"""
    sf_bessel_J1_e(x)

C signature:
`int gsl_sf_bessel_J1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_J1_e(x, result)
    return result
end

export sf_bessel_Jn_e
@doc md"""
    sf_bessel_Jn_e(n, x)

C signature:
`int gsl_sf_bessel_Jn_e(int n, double x, gsl_sf_result * result)`
"""
function sf_bessel_Jn_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Jn_e(n, x, result)
    return result
end

export sf_bessel_Jn_array
@doc md"""
    sf_bessel_Jn_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_Jn_array(int nmin, int nmax, double x, double * result_array)`
"""
function sf_bessel_Jn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_Jn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_Y0_e
@doc md"""
    sf_bessel_Y0_e(x)

C signature:
`int gsl_sf_bessel_Y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Y0_e(x, result)
    return result
end

export sf_bessel_Y1_e
@doc md"""
    sf_bessel_Y1_e(x)

C signature:
`int gsl_sf_bessel_Y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Y1_e(x, result)
    return result
end

export sf_bessel_Yn_e
@doc md"""
    sf_bessel_Yn_e(n, x)

C signature:
`int gsl_sf_bessel_Yn_e(int n,const double x, gsl_sf_result * result)`
"""
function sf_bessel_Yn_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Yn_e(n, x, result)
    return result
end

export sf_bessel_Yn_array
@doc md"""
    sf_bessel_Yn_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_Yn_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function sf_bessel_Yn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_Yn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_I0_e
@doc md"""
    sf_bessel_I0_e(x)

C signature:
`int gsl_sf_bessel_I0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_I0_e(x, result)
    return result
end

export sf_bessel_I1_e
@doc md"""
    sf_bessel_I1_e(x)

C signature:
`int gsl_sf_bessel_I1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_I1_e(x, result)
    return result
end

export sf_bessel_In_e
@doc md"""
    sf_bessel_In_e(n, x)

C signature:
`int gsl_sf_bessel_In_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_In_e(n, x, result)
    return result
end

export sf_bessel_In_array
@doc md"""
    sf_bessel_In_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_In_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function sf_bessel_In_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_In_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_I0_scaled_e
@doc md"""
    sf_bessel_I0_scaled_e(x)

C signature:
`int gsl_sf_bessel_I0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_I0_scaled_e(x, result)
    return result
end

export sf_bessel_I1_scaled_e
@doc md"""
    sf_bessel_I1_scaled_e(x)

C signature:
`int gsl_sf_bessel_I1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_I1_scaled_e(x, result)
    return result
end

export sf_bessel_In_scaled_e
@doc md"""
    sf_bessel_In_scaled_e(n, x)

C signature:
`int gsl_sf_bessel_In_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_In_scaled_e(n, x, result)
    return result
end

export sf_bessel_In_scaled_array
@doc md"""
    sf_bessel_In_scaled_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_In_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function sf_bessel_In_scaled_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_In_scaled_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_K0_e
@doc md"""
    sf_bessel_K0_e(x)

C signature:
`int gsl_sf_bessel_K0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_K0_e(x, result)
    return result
end

export sf_bessel_K1_e
@doc md"""
    sf_bessel_K1_e(x)

C signature:
`int gsl_sf_bessel_K1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_K1_e(x, result)
    return result
end

export sf_bessel_Kn_e
@doc md"""
    sf_bessel_Kn_e(n, x)

C signature:
`int gsl_sf_bessel_Kn_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Kn_e(n, x, result)
    return result
end

export sf_bessel_Kn_array
@doc md"""
    sf_bessel_Kn_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_Kn_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function sf_bessel_Kn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_Kn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_K0_scaled_e
@doc md"""
    sf_bessel_K0_scaled_e(x)

C signature:
`int gsl_sf_bessel_K0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_K0_scaled_e(x, result)
    return result
end

export sf_bessel_K1_scaled_e
@doc md"""
    sf_bessel_K1_scaled_e(x)

C signature:
`int gsl_sf_bessel_K1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_K1_scaled_e(x, result)
    return result
end

export sf_bessel_Kn_scaled_e
@doc md"""
    sf_bessel_Kn_scaled_e(n, x)

C signature:
`int gsl_sf_bessel_Kn_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Kn_scaled_e(n, x, result)
    return result
end

export sf_bessel_Kn_scaled_array
@doc md"""
    sf_bessel_Kn_scaled_array(nmin, nmax, x)

C signature:
`int gsl_sf_bessel_Kn_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function sf_bessel_Kn_scaled_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_j0_e
@doc md"""
    sf_bessel_j0_e(x)

C signature:
`int gsl_sf_bessel_j0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_j0_e(x, result)
    return result
end

export sf_bessel_j1_e
@doc md"""
    sf_bessel_j1_e(x)

C signature:
`int gsl_sf_bessel_j1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_j1_e(x, result)
    return result
end

export sf_bessel_j2_e
@doc md"""
    sf_bessel_j2_e(x)

C signature:
`int gsl_sf_bessel_j2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_j2_e(x, result)
    return result
end

export sf_bessel_jl_e
@doc md"""
    sf_bessel_jl_e(l, x)

C signature:
`int gsl_sf_bessel_jl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_jl_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_jl_e(l, x, result)
    return result
end

export sf_bessel_jl_array
@doc md"""
    sf_bessel_jl_array(lmax, x)

C signature:
`int gsl_sf_bessel_jl_array(const int lmax, const double x, double * result_array)`
"""
function sf_bessel_jl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_bessel_jl_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_y0_e
@doc md"""
    sf_bessel_y0_e(x)

C signature:
`int gsl_sf_bessel_y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_y0_e(x, result)
    return result
end

export sf_bessel_y1_e
@doc md"""
    sf_bessel_y1_e(x)

C signature:
`int gsl_sf_bessel_y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_y1_e(x, result)
    return result
end

export sf_bessel_y2_e
@doc md"""
    sf_bessel_y2_e(x)

C signature:
`int gsl_sf_bessel_y2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_y2_e(x, result)
    return result
end

export sf_bessel_yl_e
@doc md"""
    sf_bessel_yl_e(l, x)

C signature:
`int gsl_sf_bessel_yl_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_yl_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_yl_e(l, x, result)
    return result
end

export sf_bessel_yl_array
@doc md"""
    sf_bessel_yl_array(lmax, x)

C signature:
`int gsl_sf_bessel_yl_array(const int lmax, const double x, double * result_array)`
"""
function sf_bessel_yl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_bessel_yl_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_i0_scaled_e
@doc md"""
    sf_bessel_i0_scaled_e(x)

C signature:
`int gsl_sf_bessel_i0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_i0_scaled_e(x, result)
    return result
end

export sf_bessel_i1_scaled_e
@doc md"""
    sf_bessel_i1_scaled_e(x)

C signature:
`int gsl_sf_bessel_i1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_i1_scaled_e(x, result)
    return result
end

export sf_bessel_i2_scaled_e
@doc md"""
    sf_bessel_i2_scaled_e(x)

C signature:
`int gsl_sf_bessel_i2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_i2_scaled_e(x, result)
    return result
end

export sf_bessel_il_scaled_e
@doc md"""
    sf_bessel_il_scaled_e(l, x)

C signature:
`int gsl_sf_bessel_il_scaled_e(const int l, double x, gsl_sf_result * result)`
"""
function sf_bessel_il_scaled_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_il_scaled_e(l, x, result)
    return result
end

export sf_bessel_il_scaled_array
@doc md"""
    sf_bessel_il_scaled_array(lmax, x)

C signature:
`int gsl_sf_bessel_il_scaled_array(const int lmax, const double x, double * result_array)`
"""
function sf_bessel_il_scaled_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_bessel_il_scaled_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_k0_scaled_e
@doc md"""
    sf_bessel_k0_scaled_e(x)

C signature:
`int gsl_sf_bessel_k0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_k0_scaled_e(x, result)
    return result
end

export sf_bessel_k1_scaled_e
@doc md"""
    sf_bessel_k1_scaled_e(x)

C signature:
`int gsl_sf_bessel_k1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_k1_scaled_e(x, result)
    return result
end

export sf_bessel_k2_scaled_e
@doc md"""
    sf_bessel_k2_scaled_e(x)

C signature:
`int gsl_sf_bessel_k2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_k2_scaled_e(x, result)
    return result
end

export sf_bessel_kl_scaled_e
@doc md"""
    sf_bessel_kl_scaled_e(l, x)

C signature:
`int gsl_sf_bessel_kl_scaled_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_kl_scaled_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_kl_scaled_e(l, x, result)
    return result
end

export sf_bessel_kl_scaled_array
@doc md"""
    sf_bessel_kl_scaled_array(lmax, x)

C signature:
`int gsl_sf_bessel_kl_scaled_array(const int lmax, const double x, double * result_array)`
"""
function sf_bessel_kl_scaled_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_bessel_kl_scaled_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_Jnu_e
@doc md"""
    sf_bessel_Jnu_e(nu, x)

C signature:
`int gsl_sf_bessel_Jnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Jnu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Jnu_e(nu, x, result)
    return result
end

export sf_bessel_Ynu_e
@doc md"""
    sf_bessel_Ynu_e(nu, x)

C signature:
`int gsl_sf_bessel_Ynu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Ynu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Ynu_e(nu, x, result)
    return result
end

export sf_bessel_Inu_scaled_e
@doc md"""
    sf_bessel_Inu_scaled_e(nu, x)

C signature:
`int gsl_sf_bessel_Inu_scaled_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_scaled_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Inu_scaled_e(nu, x, result)
    return result
end

export sf_bessel_Inu_e
@doc md"""
    sf_bessel_Inu_e(nu, x)

C signature:
`int gsl_sf_bessel_Inu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Inu_e(nu, x, result)
    return result
end

export sf_bessel_Knu_scaled_e
@doc md"""
    sf_bessel_Knu_scaled_e(nu, x)

C signature:
`int gsl_sf_bessel_Knu_scaled_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_scaled_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Knu_scaled_e(nu, x, result)
    return result
end

export sf_bessel_Knu_scaled_e10_e
@doc md"""
    sf_bessel_Knu_scaled_e10_e(nu, x)

C signature:
`int gsl_sf_bessel_Knu_scaled_e10_e(const double nu, const double x, gsl_sf_result_e10 * result)`
"""
function sf_bessel_Knu_scaled_e10_e(nu, x)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_bessel_Knu_scaled_e10_e(nu, x, result)
    return result
end

export sf_bessel_Knu_e
@doc md"""
    sf_bessel_Knu_e(nu, x)

C signature:
`int gsl_sf_bessel_Knu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_Knu_e(nu, x, result)
    return result
end

export sf_bessel_lnKnu_e
@doc md"""
    sf_bessel_lnKnu_e(nu, x)

C signature:
`int gsl_sf_bessel_lnKnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_lnKnu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_lnKnu_e(nu, x, result)
    return result
end

export sf_bessel_zero_J0_e
@doc md"""
    sf_bessel_zero_J0_e(s)

C signature:
`int gsl_sf_bessel_zero_J0_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J0_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_zero_J0_e(s, result)
    return result
end

export sf_bessel_zero_J1_e
@doc md"""
    sf_bessel_zero_J1_e(s)

C signature:
`int gsl_sf_bessel_zero_J1_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J1_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_zero_J1_e(s, result)
    return result
end

export sf_bessel_zero_Jnu_e
@doc md"""
    sf_bessel_zero_Jnu_e(nu, s)

C signature:
`int gsl_sf_bessel_zero_Jnu_e(double nu, unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_Jnu_e(nu, s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_bessel_zero_Jnu_e(nu, s, result)
    return result
end

export sf_clausen_e
@doc md"""
    sf_clausen_e(x)

C signature:
`int gsl_sf_clausen_e(double x, gsl_sf_result * result)`
"""
function sf_clausen_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_clausen_e(x, result)
    return result
end

export sf_hydrogenicR_1_e
@doc md"""
    sf_hydrogenicR_1_e(Z, r)

C signature:
`int gsl_sf_hydrogenicR_1_e(const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_1_e(Z, r)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hydrogenicR_1_e(Z, r, result)
    return result
end

export sf_hydrogenicR_e
@doc md"""
    sf_hydrogenicR_e(n, l, Z, r)

C signature:
`int gsl_sf_hydrogenicR_e(const int n, const int l, const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_e(n, l, Z, r)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hydrogenicR_e(n, l, Z, r, result)
    return result
end

export sf_coulomb_wave_FG_e
@doc md"""
    sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, exp_F, exp_G)

C signature:
`int gsl_sf_coulomb_wave_FG_e(const double eta, const double x, const double lam_F, const int k_lam_G, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`
"""
function sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, exp_F, exp_G)
    F = gsl_sf_result(0,0)
    Fp = gsl_sf_result(0,0)
    G = gsl_sf_result(0,0)
    Gp = gsl_sf_result(0,0)
    output = gsl_sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
    return F, Fp, G, Gp
end

export sf_coulomb_CL_e
@doc md"""
    sf_coulomb_CL_e(L, eta)

C signature:
`int gsl_sf_coulomb_CL_e(double L, double eta, gsl_sf_result * result)`
"""
function sf_coulomb_CL_e(L, eta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coulomb_CL_e(L, eta, result)
    return result
end

export sf_coupling_3j_e
@doc md"""
    sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)

C signature:
`int gsl_sf_coupling_3j_e(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc, gsl_sf_result * result )`
"""
function sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
    return result
end

export sf_coupling_6j_e
@doc md"""
    sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)

C signature:
`int gsl_sf_coupling_6j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_coupling_RacahW_e
@doc md"""
    sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)

C signature:
`int gsl_sf_coupling_RacahW_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_coupling_9j_e
@doc md"""
    sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)

C signature:
`int gsl_sf_coupling_9j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji, gsl_sf_result * result )`
"""
function sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
    return result
end

export sf_coupling_6j_INCORRECT_e
@doc md"""
    sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)

C signature:
`int gsl_sf_coupling_6j_INCORRECT_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = gsl_sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_dawson_e
@doc md"""
    sf_dawson_e(x)

C signature:
`int gsl_sf_dawson_e(double x, gsl_sf_result * result)`
"""
function sf_dawson_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_dawson_e(x, result)
    return result
end

export sf_debye_1_e
@doc md"""
    sf_debye_1_e(x)

C signature:
`int gsl_sf_debye_1_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_1_e(x, result)
    return result
end

export sf_debye_2_e
@doc md"""
    sf_debye_2_e(x)

C signature:
`int gsl_sf_debye_2_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_2_e(x, result)
    return result
end

export sf_debye_3_e
@doc md"""
    sf_debye_3_e(x)

C signature:
`int gsl_sf_debye_3_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_3_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_3_e(x, result)
    return result
end

export sf_debye_4_e
@doc md"""
    sf_debye_4_e(x)

C signature:
`int gsl_sf_debye_4_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_4_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_4_e(x, result)
    return result
end

export sf_debye_5_e
@doc md"""
    sf_debye_5_e(x)

C signature:
`int gsl_sf_debye_5_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_5_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_5_e(x, result)
    return result
end

export sf_debye_6_e
@doc md"""
    sf_debye_6_e(x)

C signature:
`int gsl_sf_debye_6_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_6_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_debye_6_e(x, result)
    return result
end

export sf_dilog_e
@doc md"""
    sf_dilog_e(x)

C signature:
`int gsl_sf_dilog_e(const double x, gsl_sf_result * result)`
"""
function sf_dilog_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_dilog_e(x, result)
    return result
end

export sf_complex_dilog_xy_e
@doc md"""
    sf_complex_dilog_xy_e(x, y)

C signature:
`int gsl_sf_complex_dilog_xy_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_dilog_xy_e(x, y)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = gsl_sf_complex_dilog_xy_e(x, y, result_re, result_im)
    return result_re, result_im
end

export sf_complex_dilog_e
@doc md"""
    sf_complex_dilog_e(r, theta)

C signature:
`int gsl_sf_complex_dilog_e( const double r, const double theta, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_dilog_e(r, theta)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = gsl_sf_complex_dilog_e(r, theta, result_re, result_im)
    return result_re, result_im
end

export sf_complex_spence_xy_e
@doc md"""
    sf_complex_spence_xy_e(x, y)

C signature:
`int gsl_sf_complex_spence_xy_e( const double x, const double y, gsl_sf_result * real_sp, gsl_sf_result * imag_sp )`
"""
function sf_complex_spence_xy_e(x, y)
    real_sp = gsl_sf_result(0,0)
    imag_sp = gsl_sf_result(0,0)
    output = gsl_sf_complex_spence_xy_e(x, y, real_sp, imag_sp)
    return real_sp, imag_sp
end

export sf_multiply_e
@doc md"""
    sf_multiply_e(x, y)

C signature:
`int gsl_sf_multiply_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_multiply_e(x, y)
    result = gsl_sf_result(0,0)
    output = gsl_sf_multiply_e(x, y, result)
    return result
end

export sf_multiply_err_e
@doc md"""
    sf_multiply_err_e(x, dx, y, dy)

C signature:
`int gsl_sf_multiply_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`
"""
function sf_multiply_err_e(x, dx, y, dy)
    result = gsl_sf_result(0,0)
    output = gsl_sf_multiply_err_e(x, dx, y, dy, result)
    return result
end

export sf_ellint_Kcomp_e
@doc md"""
    sf_ellint_Kcomp_e(k, mode)

C signature:
`int gsl_sf_ellint_Kcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Kcomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_Kcomp_e(k, mode, result)
    return result
end

export sf_ellint_Ecomp_e
@doc md"""
    sf_ellint_Ecomp_e(k, mode)

C signature:
`int gsl_sf_ellint_Ecomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Ecomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_Ecomp_e(k, mode, result)
    return result
end

export sf_ellint_Pcomp_e
@doc md"""
    sf_ellint_Pcomp_e(k, n, mode)

C signature:
`int gsl_sf_ellint_Pcomp_e(double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Pcomp_e(k, n, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_Pcomp_e(k, n, mode, result)
    return result
end

export sf_ellint_Dcomp_e
@doc md"""
    sf_ellint_Dcomp_e(k, mode)

C signature:
`int gsl_sf_ellint_Dcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Dcomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_Dcomp_e(k, mode, result)
    return result
end

export sf_ellint_F_e
@doc md"""
    sf_ellint_F_e(phi, k, mode)

C signature:
`int gsl_sf_ellint_F_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_F_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_F_e(phi, k, mode, result)
    return result
end

export sf_ellint_E_e
@doc md"""
    sf_ellint_E_e(phi, k, mode)

C signature:
`int gsl_sf_ellint_E_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_E_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_E_e(phi, k, mode, result)
    return result
end

export sf_ellint_P_e
@doc md"""
    sf_ellint_P_e(phi, k, n, mode)

C signature:
`int gsl_sf_ellint_P_e(double phi, double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_P_e(phi, k, n, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_P_e(phi, k, n, mode, result)
    return result
end

export sf_ellint_D_e
@doc md"""
    sf_ellint_D_e(phi, k, mode)

C signature:
`int gsl_sf_ellint_D_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_D_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_D_e(phi, k, mode, result)
    return result
end

export sf_ellint_RC_e
@doc md"""
    sf_ellint_RC_e(x, y, mode)

C signature:
`int gsl_sf_ellint_RC_e(double x, double y, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RC_e(x, y, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_RC_e(x, y, mode, result)
    return result
end

export sf_ellint_RD_e
@doc md"""
    sf_ellint_RD_e(x, y, z, mode)

C signature:
`int gsl_sf_ellint_RD_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RD_e(x, y, z, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_RD_e(x, y, z, mode, result)
    return result
end

export sf_ellint_RF_e
@doc md"""
    sf_ellint_RF_e(x, y, z, mode)

C signature:
`int gsl_sf_ellint_RF_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RF_e(x, y, z, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_RF_e(x, y, z, mode, result)
    return result
end

export sf_ellint_RJ_e
@doc md"""
    sf_ellint_RJ_e(x, y, z, p, mode)

C signature:
`int gsl_sf_ellint_RJ_e(double x, double y, double z, double p, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RJ_e(x, y, z, p, mode)
    result = gsl_sf_result(0,0)
    output = gsl_sf_ellint_RJ_e(x, y, z, p, mode, result)
    return result
end

export sf_erfc_e
@doc md"""
    sf_erfc_e(x)

C signature:
`int gsl_sf_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_erfc_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_erfc_e(x, result)
    return result
end

export sf_log_erfc_e
@doc md"""
    sf_log_erfc_e(x)

C signature:
`int gsl_sf_log_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_log_erfc_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_log_erfc_e(x, result)
    return result
end

export sf_erf_e
@doc md"""
    sf_erf_e(x)

C signature:
`int gsl_sf_erf_e(double x, gsl_sf_result * result)`
"""
function sf_erf_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_erf_e(x, result)
    return result
end

export sf_erf_Z_e
@doc md"""
    sf_erf_Z_e(x)

C signature:
`int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Z_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_erf_Z_e(x, result)
    return result
end

export sf_erf_Q_e
@doc md"""
    sf_erf_Q_e(x)

C signature:
`int gsl_sf_erf_Q_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Q_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_erf_Q_e(x, result)
    return result
end

export sf_hazard_e
@doc md"""
    sf_hazard_e(x)

C signature:
`int gsl_sf_hazard_e(double x, gsl_sf_result * result)`
"""
function sf_hazard_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hazard_e(x, result)
    return result
end

export sf_exp_e
@doc md"""
    sf_exp_e(x)

C signature:
`int gsl_sf_exp_e(const double x, gsl_sf_result * result)`
"""
function sf_exp_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exp_e(x, result)
    return result
end

export sf_exp_e10_e
@doc md"""
    sf_exp_e10_e(x)

C signature:
`int gsl_sf_exp_e10_e(const double x, gsl_sf_result_e10 * result)`
"""
function sf_exp_e10_e(x)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_exp_e10_e(x, result)
    return result
end

export sf_exp_mult_e
@doc md"""
    sf_exp_mult_e(x, y)

C signature:
`int gsl_sf_exp_mult_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_exp_mult_e(x, y)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exp_mult_e(x, y, result)
    return result
end

export sf_exp_mult_e10_e
@doc md"""
    sf_exp_mult_e10_e(x, y)

C signature:
`int gsl_sf_exp_mult_e10_e(const double x, const double y, gsl_sf_result_e10 * result)`
"""
function sf_exp_mult_e10_e(x, y)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_exp_mult_e10_e(x, y, result)
    return result
end

export sf_expm1_e
@doc md"""
    sf_expm1_e(x)

C signature:
`int gsl_sf_expm1_e(const double x, gsl_sf_result * result)`
"""
function sf_expm1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expm1_e(x, result)
    return result
end

export sf_exprel_e
@doc md"""
    sf_exprel_e(x)

C signature:
`int gsl_sf_exprel_e(const double x, gsl_sf_result * result)`
"""
function sf_exprel_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exprel_e(x, result)
    return result
end

export sf_exprel_2_e
@doc md"""
    sf_exprel_2_e(x)

C signature:
`int gsl_sf_exprel_2_e(double x, gsl_sf_result * result)`
"""
function sf_exprel_2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exprel_2_e(x, result)
    return result
end

export sf_exprel_n_e
@doc md"""
    sf_exprel_n_e(n, x)

C signature:
`int gsl_sf_exprel_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_exprel_n_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exprel_n_e(n, x, result)
    return result
end

export sf_exprel_n_CF_e
@doc md"""
    sf_exprel_n_CF_e(n, x)

C signature:
`int gsl_sf_exprel_n_CF_e(const double n, const double x, gsl_sf_result * result)`
"""
function sf_exprel_n_CF_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exprel_n_CF_e(n, x, result)
    return result
end

export sf_exp_err_e
@doc md"""
    sf_exp_err_e(x, dx)

C signature:
`int gsl_sf_exp_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function sf_exp_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exp_err_e(x, dx, result)
    return result
end

export sf_exp_err_e10_e
@doc md"""
    sf_exp_err_e10_e(x, dx)

C signature:
`int gsl_sf_exp_err_e10_e(const double x, const double dx, gsl_sf_result_e10 * result)`
"""
function sf_exp_err_e10_e(x, dx)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_exp_err_e10_e(x, dx, result)
    return result
end

export sf_exp_mult_err_e
@doc md"""
    sf_exp_mult_err_e(x, dx, y, dy)

C signature:
`int gsl_sf_exp_mult_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`
"""
function sf_exp_mult_err_e(x, dx, y, dy)
    result = gsl_sf_result(0,0)
    output = gsl_sf_exp_mult_err_e(x, dx, y, dy, result)
    return result
end

export sf_exp_mult_err_e10_e
@doc md"""
    sf_exp_mult_err_e10_e(x, dx, y, dy)

C signature:
`int gsl_sf_exp_mult_err_e10_e(const double x, const double dx, const double y, const double dy, gsl_sf_result_e10 * result)`
"""
function sf_exp_mult_err_e10_e(x, dx, y, dy)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result)
    return result
end

export sf_expint_E1_e
@doc md"""
    sf_expint_E1_e(x)

C signature:
`int gsl_sf_expint_E1_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_E1_e(x, result)
    return result
end

export sf_expint_E2_e
@doc md"""
    sf_expint_E2_e(x)

C signature:
`int gsl_sf_expint_E2_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_E2_e(x, result)
    return result
end

export sf_expint_En_e
@doc md"""
    sf_expint_En_e(n, x)

C signature:
`int gsl_sf_expint_En_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_En_e(n, x, result)
    return result
end

export sf_expint_E1_scaled_e
@doc md"""
    sf_expint_E1_scaled_e(x)

C signature:
`int gsl_sf_expint_E1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_E1_scaled_e(x, result)
    return result
end

export sf_expint_E2_scaled_e
@doc md"""
    sf_expint_E2_scaled_e(x)

C signature:
`int gsl_sf_expint_E2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_E2_scaled_e(x, result)
    return result
end

export sf_expint_En_scaled_e
@doc md"""
    sf_expint_En_scaled_e(n, x)

C signature:
`int gsl_sf_expint_En_scaled_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_En_scaled_e(n, x, result)
    return result
end

export sf_expint_Ei_e
@doc md"""
    sf_expint_Ei_e(x)

C signature:
`int gsl_sf_expint_Ei_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_Ei_e(x, result)
    return result
end

export sf_expint_Ei_scaled_e
@doc md"""
    sf_expint_Ei_scaled_e(x)

C signature:
`int gsl_sf_expint_Ei_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_Ei_scaled_e(x, result)
    return result
end

export sf_Shi_e
@doc md"""
    sf_Shi_e(x)

C signature:
`int gsl_sf_Shi_e(const double x, gsl_sf_result * result)`
"""
function sf_Shi_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_Shi_e(x, result)
    return result
end

export sf_Chi_e
@doc md"""
    sf_Chi_e(x)

C signature:
`int gsl_sf_Chi_e(const double x, gsl_sf_result * result)`
"""
function sf_Chi_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_Chi_e(x, result)
    return result
end

export sf_expint_3_e
@doc md"""
    sf_expint_3_e(x)

C signature:
`int gsl_sf_expint_3_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_3_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_expint_3_e(x, result)
    return result
end

export sf_Si_e
@doc md"""
    sf_Si_e(x)

C signature:
`int gsl_sf_Si_e(const double x, gsl_sf_result * result)`
"""
function sf_Si_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_Si_e(x, result)
    return result
end

export sf_Ci_e
@doc md"""
    sf_Ci_e(x)

C signature:
`int gsl_sf_Ci_e(const double x, gsl_sf_result * result)`
"""
function sf_Ci_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_Ci_e(x, result)
    return result
end

export sf_atanint_e
@doc md"""
    sf_atanint_e(x)

C signature:
`int gsl_sf_atanint_e(const double x, gsl_sf_result * result)`
"""
function sf_atanint_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_atanint_e(x, result)
    return result
end

export sf_fermi_dirac_m1_e
@doc md"""
    sf_fermi_dirac_m1_e(x)

C signature:
`int gsl_sf_fermi_dirac_m1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_m1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_m1_e(x, result)
    return result
end

export sf_fermi_dirac_0_e
@doc md"""
    sf_fermi_dirac_0_e(x)

C signature:
`int gsl_sf_fermi_dirac_0_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_0_e(x, result)
    return result
end

export sf_fermi_dirac_1_e
@doc md"""
    sf_fermi_dirac_1_e(x)

C signature:
`int gsl_sf_fermi_dirac_1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_1_e(x, result)
    return result
end

export sf_fermi_dirac_2_e
@doc md"""
    sf_fermi_dirac_2_e(x)

C signature:
`int gsl_sf_fermi_dirac_2_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_2_e(x, result)
    return result
end

export sf_fermi_dirac_int_e
@doc md"""
    sf_fermi_dirac_int_e(j, x)

C signature:
`int gsl_sf_fermi_dirac_int_e(const int j, const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_int_e(j, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_int_e(j, x, result)
    return result
end

export sf_fermi_dirac_mhalf_e
@doc md"""
    sf_fermi_dirac_mhalf_e(x)

C signature:
`int gsl_sf_fermi_dirac_mhalf_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_mhalf_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_mhalf_e(x, result)
    return result
end

export sf_fermi_dirac_half_e
@doc md"""
    sf_fermi_dirac_half_e(x)

C signature:
`int gsl_sf_fermi_dirac_half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_half_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_half_e(x, result)
    return result
end

export sf_fermi_dirac_3half_e
@doc md"""
    sf_fermi_dirac_3half_e(x)

C signature:
`int gsl_sf_fermi_dirac_3half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_3half_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_3half_e(x, result)
    return result
end

export sf_fermi_dirac_inc_0_e
@doc md"""
    sf_fermi_dirac_inc_0_e(x, b)

C signature:
`int gsl_sf_fermi_dirac_inc_0_e(const double x, const double b, gsl_sf_result * result)`
"""
function sf_fermi_dirac_inc_0_e(x, b)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fermi_dirac_inc_0_e(x, b, result)
    return result
end

export sf_lngamma_e
@doc md"""
    sf_lngamma_e(x)

C signature:
`int gsl_sf_lngamma_e(double x, gsl_sf_result * result)`
"""
function sf_lngamma_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lngamma_e(x, result)
    return result
end

export sf_lngamma_sgn_e
@doc md"""
    sf_lngamma_sgn_e(x, sgn)

C signature:
`int gsl_sf_lngamma_sgn_e(double x, gsl_sf_result * result_lg, double *sgn)`
"""
function sf_lngamma_sgn_e(x, sgn)
    result_lg = gsl_sf_result(0,0)
    output = gsl_sf_lngamma_sgn_e(x, result_lg, sgn)
    return result_lg
end

export sf_gamma_e
@doc md"""
    sf_gamma_e(x)

C signature:
`int gsl_sf_gamma_e(const double x, gsl_sf_result * result)`
"""
function sf_gamma_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gamma_e(x, result)
    return result
end

export sf_gammastar_e
@doc md"""
    sf_gammastar_e(x)

C signature:
`int gsl_sf_gammastar_e(const double x, gsl_sf_result * result)`
"""
function sf_gammastar_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gammastar_e(x, result)
    return result
end

export sf_gammainv_e
@doc md"""
    sf_gammainv_e(x)

C signature:
`int gsl_sf_gammainv_e(const double x, gsl_sf_result * result)`
"""
function sf_gammainv_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gammainv_e(x, result)
    return result
end

export sf_lngamma_complex_e
@doc md"""
    sf_lngamma_complex_e(zr, zi)

C signature:
`int gsl_sf_lngamma_complex_e(double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`
"""
function sf_lngamma_complex_e(zr, zi)
    lnr = gsl_sf_result(0,0)
    arg = gsl_sf_result(0,0)
    output = gsl_sf_lngamma_complex_e(zr, zi, lnr, arg)
    return lnr, arg
end

export sf_taylorcoeff_e
@doc md"""
    sf_taylorcoeff_e(n, x)

C signature:
`int gsl_sf_taylorcoeff_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_taylorcoeff_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_taylorcoeff_e(n, x, result)
    return result
end

export sf_fact_e
@doc md"""
    sf_fact_e(n)

C signature:
`int gsl_sf_fact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_fact_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_fact_e(n, result)
    return result
end

export sf_doublefact_e
@doc md"""
    sf_doublefact_e(n)

C signature:
`int gsl_sf_doublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_doublefact_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_doublefact_e(n, result)
    return result
end

export sf_lnfact_e
@doc md"""
    sf_lnfact_e(n)

C signature:
`int gsl_sf_lnfact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lnfact_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnfact_e(n, result)
    return result
end

export sf_lndoublefact_e
@doc md"""
    sf_lndoublefact_e(n)

C signature:
`int gsl_sf_lndoublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lndoublefact_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lndoublefact_e(n, result)
    return result
end

export sf_lnchoose_e
@doc md"""
    sf_lnchoose_e(n, m)

C signature:
`int gsl_sf_lnchoose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_lnchoose_e(n, m)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnchoose_e(n, m, result)
    return result
end

export sf_choose_e
@doc md"""
    sf_choose_e(n, m)

C signature:
`int gsl_sf_choose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_choose_e(n, m)
    result = gsl_sf_result(0,0)
    output = gsl_sf_choose_e(n, m, result)
    return result
end

export sf_lnpoch_e
@doc md"""
    sf_lnpoch_e(a, x)

C signature:
`int gsl_sf_lnpoch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_lnpoch_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnpoch_e(a, x, result)
    return result
end

export sf_lnpoch_sgn_e
@doc md"""
    sf_lnpoch_sgn_e(a, x, sgn)

C signature:
`int gsl_sf_lnpoch_sgn_e(const double a, const double x, gsl_sf_result * result, double * sgn)`
"""
function sf_lnpoch_sgn_e(a, x, sgn)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnpoch_sgn_e(a, x, result, sgn)
    return result
end

export sf_poch_e
@doc md"""
    sf_poch_e(a, x)

C signature:
`int gsl_sf_poch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_poch_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_poch_e(a, x, result)
    return result
end

export sf_pochrel_e
@doc md"""
    sf_pochrel_e(a, x)

C signature:
`int gsl_sf_pochrel_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_pochrel_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_pochrel_e(a, x, result)
    return result
end

export sf_gamma_inc_Q_e
@doc md"""
    sf_gamma_inc_Q_e(a, x)

C signature:
`int gsl_sf_gamma_inc_Q_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_Q_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gamma_inc_Q_e(a, x, result)
    return result
end

export sf_gamma_inc_P_e
@doc md"""
    sf_gamma_inc_P_e(a, x)

C signature:
`int gsl_sf_gamma_inc_P_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_P_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gamma_inc_P_e(a, x, result)
    return result
end

export sf_gamma_inc_e
@doc md"""
    sf_gamma_inc_e(a, x)

C signature:
`int gsl_sf_gamma_inc_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gamma_inc_e(a, x, result)
    return result
end

export sf_lnbeta_e
@doc md"""
    sf_lnbeta_e(a, b)

C signature:
`int gsl_sf_lnbeta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_lnbeta_e(a, b)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnbeta_e(a, b, result)
    return result
end

export sf_lnbeta_sgn_e
@doc md"""
    sf_lnbeta_sgn_e(x, y, sgn)

C signature:
`int gsl_sf_lnbeta_sgn_e(const double x, const double y, gsl_sf_result * result, double * sgn)`
"""
function sf_lnbeta_sgn_e(x, y, sgn)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnbeta_sgn_e(x, y, result, sgn)
    return result
end

export sf_beta_e
@doc md"""
    sf_beta_e(a, b)

C signature:
`int gsl_sf_beta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_beta_e(a, b)
    result = gsl_sf_result(0,0)
    output = gsl_sf_beta_e(a, b, result)
    return result
end

export sf_beta_inc_e
@doc md"""
    sf_beta_inc_e(a, b, x)

C signature:
`int gsl_sf_beta_inc_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_beta_inc_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_beta_inc_e(a, b, x, result)
    return result
end

export sf_gegenpoly_1_e
@doc md"""
    sf_gegenpoly_1_e(lambda, x)

C signature:
`int gsl_sf_gegenpoly_1_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_1_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gegenpoly_1_e(lambda, x, result)
    return result
end

export sf_gegenpoly_2_e
@doc md"""
    sf_gegenpoly_2_e(lambda, x)

C signature:
`int gsl_sf_gegenpoly_2_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_2_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gegenpoly_2_e(lambda, x, result)
    return result
end

export sf_gegenpoly_3_e
@doc md"""
    sf_gegenpoly_3_e(lambda, x)

C signature:
`int gsl_sf_gegenpoly_3_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_3_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gegenpoly_3_e(lambda, x, result)
    return result
end

export sf_gegenpoly_n_e
@doc md"""
    sf_gegenpoly_n_e(n, lambda, x)

C signature:
`int gsl_sf_gegenpoly_n_e(int n, double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_n_e(n, lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_gegenpoly_n_e(n, lambda, x, result)
    return result
end

export sf_gegenpoly_array
@doc md"""
    sf_gegenpoly_array(nmax, lambda, x)

C signature:
`int gsl_sf_gegenpoly_array(int nmax, double lambda, double x, double * result_array)`
"""
function sf_gegenpoly_array(nmax, lambda, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_gegenpoly_array(nmax, lambda, x, result_array)
    return result_array
end

export sf_hermite_prob_e
@doc md"""
    sf_hermite_prob_e(n, x)

C signature:
`int gsl_sf_hermite_prob_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_prob_e(n, x, result)
    return result
end

export sf_hermite_prob_der_e
@doc md"""
    sf_hermite_prob_der_e(m, n, x)

C signature:
`int gsl_sf_hermite_prob_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_prob_der_e(m, n, x, result)
    return result
end

export sf_hermite_phys_e
@doc md"""
    sf_hermite_phys_e(n, x)

C signature:
`int gsl_sf_hermite_phys_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_phys_e(n, x, result)
    return result
end

export sf_hermite_phys_der_e
@doc md"""
    sf_hermite_phys_der_e(m, n, x)

C signature:
`int gsl_sf_hermite_phys_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_phys_der_e(m, n, x, result)
    return result
end

export sf_hermite_func_e
@doc md"""
    sf_hermite_func_e(n, x)

C signature:
`int gsl_sf_hermite_func_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_func_e(n, x, result)
    return result
end

export sf_hermite_prob_array
@doc md"""
    sf_hermite_prob_array(nmax, x)

C signature:
`int gsl_sf_hermite_prob_array(const int nmax, const double x, double * result_array)`
"""
function sf_hermite_prob_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_hermite_prob_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_prob_array_der
@doc md"""
    sf_hermite_prob_array_der(m, nmax, x)

C signature:
`int gsl_sf_hermite_prob_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_prob_array_der(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_hermite_prob_array_der(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_prob_der_array
@doc md"""
    sf_hermite_prob_der_array(mmax, n, x)

C signature:
`int gsl_sf_hermite_prob_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_prob_der_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = gsl_sf_hermite_prob_der_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_prob_series_e
@doc md"""
    sf_hermite_prob_series_e(n, x, a)

C signature:
`int gsl_sf_hermite_prob_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_prob_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_prob_series_e(n, x, a, result)
    return result
end

export sf_hermite_phys_array
@doc md"""
    sf_hermite_phys_array(nmax, x)

C signature:
`int gsl_sf_hermite_phys_array(const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_hermite_phys_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_phys_array_der
@doc md"""
    sf_hermite_phys_array_der(m, nmax, x)

C signature:
`int gsl_sf_hermite_phys_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array_der(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_hermite_phys_array_der(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_phys_der_array
@doc md"""
    sf_hermite_phys_der_array(mmax, n, x)

C signature:
`int gsl_sf_hermite_phys_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_phys_der_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = gsl_sf_hermite_phys_der_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_phys_series_e
@doc md"""
    sf_hermite_phys_series_e(n, x, a)

C signature:
`int gsl_sf_hermite_phys_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_phys_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_phys_series_e(n, x, a, result)
    return result
end

export sf_hermite_func_array
@doc md"""
    sf_hermite_func_array(nmax, x)

C signature:
`int gsl_sf_hermite_func_array(const int nmax, const double x, double * result_array)`
"""
function sf_hermite_func_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = gsl_sf_hermite_func_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_func_series_e
@doc md"""
    sf_hermite_func_series_e(n, x, a)

C signature:
`int gsl_sf_hermite_func_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_func_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_func_series_e(n, x, a, result)
    return result
end

export sf_hermite_func_der_e
@doc md"""
    sf_hermite_func_der_e(m, n, x)

C signature:
`int gsl_sf_hermite_func_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_func_der_e(m, n, x, result)
    return result
end

export sf_hermite_prob_zero_e
@doc md"""
    sf_hermite_prob_zero_e(n, s)

C signature:
`int gsl_sf_hermite_prob_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_prob_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_prob_zero_e(n, s, result)
    return result
end

export sf_hermite_phys_zero_e
@doc md"""
    sf_hermite_phys_zero_e(n, s)

C signature:
`int gsl_sf_hermite_phys_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_phys_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_phys_zero_e(n, s, result)
    return result
end

export sf_hermite_func_zero_e
@doc md"""
    sf_hermite_func_zero_e(n, s)

C signature:
`int gsl_sf_hermite_func_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_func_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hermite_func_zero_e(n, s, result)
    return result
end

export sf_hyperg_0F1_e
@doc md"""
    sf_hyperg_0F1_e(c, x)

C signature:
`int gsl_sf_hyperg_0F1_e(double c, double x, gsl_sf_result * result)`
"""
function sf_hyperg_0F1_e(c, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_0F1_e(c, x, result)
    return result
end

export sf_hyperg_1F1_int_e
@doc md"""
    sf_hyperg_1F1_int_e(m, n, x)

C signature:
`int gsl_sf_hyperg_1F1_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_int_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_1F1_int_e(m, n, x, result)
    return result
end

export sf_hyperg_1F1_e
@doc md"""
    sf_hyperg_1F1_e(a, b, x)

C signature:
`int gsl_sf_hyperg_1F1_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_1F1_e(a, b, x, result)
    return result
end

export sf_hyperg_U_int_e
@doc md"""
    sf_hyperg_U_int_e(m, n, x)

C signature:
`int gsl_sf_hyperg_U_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_int_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_U_int_e(m, n, x, result)
    return result
end

export sf_hyperg_U_int_e10_e
@doc md"""
    sf_hyperg_U_int_e10_e(m, n, x)

C signature:
`int gsl_sf_hyperg_U_int_e10_e(const int m, const int n, const double x, gsl_sf_result_e10 * result)`
"""
function sf_hyperg_U_int_e10_e(m, n, x)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_hyperg_U_int_e10_e(m, n, x, result)
    return result
end

export sf_hyperg_U_e
@doc md"""
    sf_hyperg_U_e(a, b, x)

C signature:
`int gsl_sf_hyperg_U_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_U_e(a, b, x, result)
    return result
end

export sf_hyperg_U_e10_e
@doc md"""
    sf_hyperg_U_e10_e(a, b, x)

C signature:
`int gsl_sf_hyperg_U_e10_e(const double a, const double b, const double x, gsl_sf_result_e10 * result)`
"""
function sf_hyperg_U_e10_e(a, b, x)
    result = gsl_sf_result_e10(0,0,0)
    output = gsl_sf_hyperg_U_e10_e(a, b, x, result)
    return result
end

export sf_hyperg_2F1_e
@doc md"""
    sf_hyperg_2F1_e(a, b, c, x)

C signature:
`int gsl_sf_hyperg_2F1_e(double a, double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_e(a, b, c, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_2F1_e(a, b, c, x, result)
    return result
end

export sf_hyperg_2F1_conj_e
@doc md"""
    sf_hyperg_2F1_conj_e(aR, aI, c, x)

C signature:
`int gsl_sf_hyperg_2F1_conj_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_e(aR, aI, c, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, result)
    return result
end

export sf_hyperg_2F1_renorm_e
@doc md"""
    sf_hyperg_2F1_renorm_e(a, b, c, x)

C signature:
`int gsl_sf_hyperg_2F1_renorm_e(const double a, const double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_renorm_e(a, b, c, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, result)
    return result
end

export sf_hyperg_2F1_conj_renorm_e
@doc md"""
    sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x)

C signature:
`int gsl_sf_hyperg_2F1_conj_renorm_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result)
    return result
end

export sf_hyperg_2F0_e
@doc md"""
    sf_hyperg_2F0_e(a, b, x)

C signature:
`int gsl_sf_hyperg_2F0_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F0_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hyperg_2F0_e(a, b, x, result)
    return result
end

export sf_laguerre_1_e
@doc md"""
    sf_laguerre_1_e(a, x)

C signature:
`int gsl_sf_laguerre_1_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_1_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_laguerre_1_e(a, x, result)
    return result
end

export sf_laguerre_2_e
@doc md"""
    sf_laguerre_2_e(a, x)

C signature:
`int gsl_sf_laguerre_2_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_2_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_laguerre_2_e(a, x, result)
    return result
end

export sf_laguerre_3_e
@doc md"""
    sf_laguerre_3_e(a, x)

C signature:
`int gsl_sf_laguerre_3_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_3_e(a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_laguerre_3_e(a, x, result)
    return result
end

export sf_laguerre_n_e
@doc md"""
    sf_laguerre_n_e(n, a, x)

C signature:
`int gsl_sf_laguerre_n_e(const int n, const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_n_e(n, a, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_laguerre_n_e(n, a, x, result)
    return result
end

export sf_lambert_W0_e
@doc md"""
    sf_lambert_W0_e(x)

C signature:
`int gsl_sf_lambert_W0_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_W0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lambert_W0_e(x, result)
    return result
end

export sf_lambert_Wm1_e
@doc md"""
    sf_lambert_Wm1_e(x)

C signature:
`int gsl_sf_lambert_Wm1_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_Wm1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lambert_Wm1_e(x, result)
    return result
end

export sf_legendre_Pl_e
@doc md"""
    sf_legendre_Pl_e(l, x)

C signature:
`int gsl_sf_legendre_Pl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Pl_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_Pl_e(l, x, result)
    return result
end

export sf_legendre_Pl_array
@doc md"""
    sf_legendre_Pl_array(lmax, x)

C signature:
`int gsl_sf_legendre_Pl_array( const int lmax, const double x, double * result_array )`
"""
function sf_legendre_Pl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_Pl_array(lmax, x, result_array)
    return result_array
end

export sf_legendre_Pl_deriv_array
@doc md"""
    sf_legendre_Pl_deriv_array(lmax, x)

C signature:
`int gsl_sf_legendre_Pl_deriv_array( const int lmax, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_Pl_deriv_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    result_deriv_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_P1_e
@doc md"""
    sf_legendre_P1_e(x)

C signature:
`int gsl_sf_legendre_P1_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_P1_e(x, result)
    return result
end

export sf_legendre_P2_e
@doc md"""
    sf_legendre_P2_e(x)

C signature:
`int gsl_sf_legendre_P2_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_P2_e(x, result)
    return result
end

export sf_legendre_P3_e
@doc md"""
    sf_legendre_P3_e(x)

C signature:
`int gsl_sf_legendre_P3_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P3_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_P3_e(x, result)
    return result
end

export sf_legendre_Q0_e
@doc md"""
    sf_legendre_Q0_e(x)

C signature:
`int gsl_sf_legendre_Q0_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q0_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_Q0_e(x, result)
    return result
end

export sf_legendre_Q1_e
@doc md"""
    sf_legendre_Q1_e(x)

C signature:
`int gsl_sf_legendre_Q1_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_Q1_e(x, result)
    return result
end

export sf_legendre_Ql_e
@doc md"""
    sf_legendre_Ql_e(l, x)

C signature:
`int gsl_sf_legendre_Ql_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Ql_e(l, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_Ql_e(l, x, result)
    return result
end

export sf_legendre_Plm_e
@doc md"""
    sf_legendre_Plm_e(l, m, x)

C signature:
`int gsl_sf_legendre_Plm_e(const int l, const int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Plm_e(l, m, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_Plm_e(l, m, x, result)
    return result
end

export sf_legendre_Plm_array
@doc md"""
    sf_legendre_Plm_array(lmax, m, x)

C signature:
`int gsl_sf_legendre_Plm_array( const int lmax, const int m, const double x, double * result_array )`
"""
function sf_legendre_Plm_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_Plm_array(lmax, m, x, result_array)
    return result_array
end

export sf_legendre_Plm_deriv_array
@doc md"""
    sf_legendre_Plm_deriv_array(lmax, m, x)

C signature:
`int gsl_sf_legendre_Plm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_Plm_deriv_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    result_deriv_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_Plm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_sphPlm_e
@doc md"""
    sf_legendre_sphPlm_e(l, m, x)

C signature:
`int gsl_sf_legendre_sphPlm_e(const int l, int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_sphPlm_e(l, m, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_sphPlm_e(l, m, x, result)
    return result
end

export sf_legendre_sphPlm_array
@doc md"""
    sf_legendre_sphPlm_array(lmax, m, x)

C signature:
`int gsl_sf_legendre_sphPlm_array( const int lmax, int m, const double x, double * result_array )`
"""
function sf_legendre_sphPlm_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_sphPlm_array(lmax, m, x, result_array)
    return result_array
end

export sf_legendre_sphPlm_deriv_array
@doc md"""
    sf_legendre_sphPlm_deriv_array(lmax, m, x)

C signature:
`int gsl_sf_legendre_sphPlm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_sphPlm_deriv_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    result_deriv_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_conicalP_half_e
@doc md"""
    sf_conicalP_half_e(lambda, x)

C signature:
`int gsl_sf_conicalP_half_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_half_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_half_e(lambda, x, result)
    return result
end

export sf_conicalP_mhalf_e
@doc md"""
    sf_conicalP_mhalf_e(lambda, x)

C signature:
`int gsl_sf_conicalP_mhalf_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_mhalf_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_mhalf_e(lambda, x, result)
    return result
end

export sf_conicalP_0_e
@doc md"""
    sf_conicalP_0_e(lambda, x)

C signature:
`int gsl_sf_conicalP_0_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_0_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_0_e(lambda, x, result)
    return result
end

export sf_conicalP_1_e
@doc md"""
    sf_conicalP_1_e(lambda, x)

C signature:
`int gsl_sf_conicalP_1_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_1_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_1_e(lambda, x, result)
    return result
end

export sf_conicalP_sph_reg_e
@doc md"""
    sf_conicalP_sph_reg_e(l, lambda, x)

C signature:
`int gsl_sf_conicalP_sph_reg_e(const int l, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_sph_reg_e(l, lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_sph_reg_e(l, lambda, x, result)
    return result
end

export sf_conicalP_cyl_reg_e
@doc md"""
    sf_conicalP_cyl_reg_e(m, lambda, x)

C signature:
`int gsl_sf_conicalP_cyl_reg_e(const int m, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_cyl_reg_e(m, lambda, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_conicalP_cyl_reg_e(m, lambda, x, result)
    return result
end

export sf_legendre_H3d_0_e
@doc md"""
    sf_legendre_H3d_0_e(lambda, eta)

C signature:
`int gsl_sf_legendre_H3d_0_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_0_e(lambda, eta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_H3d_0_e(lambda, eta, result)
    return result
end

export sf_legendre_H3d_1_e
@doc md"""
    sf_legendre_H3d_1_e(lambda, eta)

C signature:
`int gsl_sf_legendre_H3d_1_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_1_e(lambda, eta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_H3d_1_e(lambda, eta, result)
    return result
end

export sf_legendre_H3d_e
@doc md"""
    sf_legendre_H3d_e(l, lambda, eta)

C signature:
`int gsl_sf_legendre_H3d_e(const int l, const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_e(l, lambda, eta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_legendre_H3d_e(l, lambda, eta, result)
    return result
end

export sf_legendre_H3d_array
@doc md"""
    sf_legendre_H3d_array(lmax, lambda, eta)

C signature:
`int gsl_sf_legendre_H3d_array(const int lmax, const double lambda, const double eta, double * result_array)`
"""
function sf_legendre_H3d_array(lmax, lambda, eta)
    result_array = zeros(Cdouble, (lmax+1))
    output = gsl_sf_legendre_H3d_array(lmax, lambda, eta, result_array)
    return result_array
end

export sf_legendre_array
@doc md"""
    sf_legendre_array(norm, lmax, x)

C signature:
`int gsl_sf_legendre_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`
"""
function sf_legendre_array(norm, lmax, x)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_array(norm, lmax, x, result_array)
    return result_array
end

export sf_legendre_array_e
@doc md"""
    sf_legendre_array_e(norm, lmax, x, csphase)

C signature:
`int gsl_sf_legendre_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[])`
"""
function sf_legendre_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_array_e(norm, lmax, x, csphase, result_array)
    return result_array
end

export sf_legendre_deriv_array
@doc md"""
    sf_legendre_deriv_array(norm, lmax, x)

C signature:
`int gsl_sf_legendre_deriv_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_array(norm, lmax, x)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_array_e
@doc md"""
    sf_legendre_deriv_array_e(norm, lmax, x, csphase)

C signature:
`int gsl_sf_legendre_deriv_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_alt_array
@doc md"""
    sf_legendre_deriv_alt_array(norm, lmax, x)

C signature:
`int gsl_sf_legendre_deriv_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_alt_array(norm, lmax, x)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_alt_array_e
@doc md"""
    sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase)

C signature:
`int gsl_sf_legendre_deriv_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv2_array
@doc md"""
    sf_legendre_deriv2_array(norm, lmax, x)

C signature:
`int gsl_sf_legendre_deriv2_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_array(norm, lmax, x)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_array_e
@doc md"""
    sf_legendre_deriv2_array_e(norm, lmax, x, csphase)

C signature:
`int gsl_sf_legendre_deriv2_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_alt_array
@doc md"""
    sf_legendre_deriv2_alt_array(norm, lmax, x)

C signature:
`int gsl_sf_legendre_deriv2_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_alt_array(norm, lmax, x)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_alt_array_e
@doc md"""
    sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase)

C signature:
`int gsl_sf_legendre_deriv2_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, gsl_sf_legendre_array_n(lmax))
    output = gsl_sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_log_e
@doc md"""
    sf_log_e(x)

C signature:
`int gsl_sf_log_e(const double x, gsl_sf_result * result)`
"""
function sf_log_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_log_e(x, result)
    return result
end

export sf_log_abs_e
@doc md"""
    sf_log_abs_e(x)

C signature:
`int gsl_sf_log_abs_e(const double x, gsl_sf_result * result)`
"""
function sf_log_abs_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_log_abs_e(x, result)
    return result
end

export sf_complex_log_e
@doc md"""
    sf_complex_log_e(zr, zi)

C signature:
`int gsl_sf_complex_log_e(const double zr, const double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`
"""
function sf_complex_log_e(zr, zi)
    lnr = gsl_sf_result(0,0)
    theta = gsl_sf_result(0,0)
    output = gsl_sf_complex_log_e(zr, zi, lnr, theta)
    return lnr, theta
end

export sf_log_1plusx_e
@doc md"""
    sf_log_1plusx_e(x)

C signature:
`int gsl_sf_log_1plusx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_log_1plusx_e(x, result)
    return result
end

export sf_log_1plusx_mx_e
@doc md"""
    sf_log_1plusx_mx_e(x)

C signature:
`int gsl_sf_log_1plusx_mx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_mx_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_log_1plusx_mx_e(x, result)
    return result
end

export sf_mathieu_a_array
@doc md"""
    sf_mathieu_a_array(order_min, order_max, qq, work)

C signature:
`int gsl_sf_mathieu_a_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_a_array(order_min, order_max, qq, work)
    result_array = zeros(Cdouble, order_min)
    output = gsl_sf_mathieu_a_array(order_min, order_max, qq, work, result_array)
    return result_array
end

export sf_mathieu_b_array
@doc md"""
    sf_mathieu_b_array(order_min, order_max, qq, work)

C signature:
`int gsl_sf_mathieu_b_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_b_array(order_min, order_max, qq, work)
    result_array = zeros(Cdouble, order_min)
    output = gsl_sf_mathieu_b_array(order_min, order_max, qq, work, result_array)
    return result_array
end

export sf_mathieu_a_e
@doc md"""
    sf_mathieu_a_e(order, qq)

C signature:
`int gsl_sf_mathieu_a_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_a_e(order, qq)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_a_e(order, qq, result)
    return result
end

export sf_mathieu_b_e
@doc md"""
    sf_mathieu_b_e(order, qq)

C signature:
`int gsl_sf_mathieu_b_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_b_e(order, qq)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_b_e(order, qq, result)
    return result
end

export sf_mathieu_ce_e
@doc md"""
    sf_mathieu_ce_e(order, qq, zz)

C signature:
`int gsl_sf_mathieu_ce_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_ce_e(order, qq, zz)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_ce_e(order, qq, zz, result)
    return result
end

export sf_mathieu_se_e
@doc md"""
    sf_mathieu_se_e(order, qq, zz)

C signature:
`int gsl_sf_mathieu_se_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_se_e(order, qq, zz)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_se_e(order, qq, zz, result)
    return result
end

export sf_mathieu_ce_array
@doc md"""
    sf_mathieu_ce_array(nmin, nmax, qq, zz, work)

C signature:
`int gsl_sf_mathieu_ce_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_ce_array(nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_se_array
@doc md"""
    sf_mathieu_se_array(nmin, nmax, qq, zz, work)

C signature:
`int gsl_sf_mathieu_se_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_se_array(nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_Mc_e
@doc md"""
    sf_mathieu_Mc_e(kind, order, qq, zz)

C signature:
`int gsl_sf_mathieu_Mc_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Mc_e(kind, order, qq, zz)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_Mc_e(kind, order, qq, zz, result)
    return result
end

export sf_mathieu_Ms_e
@doc md"""
    sf_mathieu_Ms_e(kind, order, qq, zz)

C signature:
`int gsl_sf_mathieu_Ms_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Ms_e(kind, order, qq, zz)
    result = gsl_sf_result(0,0)
    output = gsl_sf_mathieu_Ms_e(kind, order, qq, zz, result)
    return result
end

export sf_mathieu_Mc_array
@doc md"""
    sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work)

C signature:
`int gsl_sf_mathieu_Mc_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_Ms_array
@doc md"""
    sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work)

C signature:
`int gsl_sf_mathieu_Ms_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = gsl_sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_pow_int_e
@doc md"""
    sf_pow_int_e(x, n)

C signature:
`int gsl_sf_pow_int_e(double x, int n, gsl_sf_result * result)`
"""
function sf_pow_int_e(x, n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_pow_int_e(x, n, result)
    return result
end

export sf_psi_int_e
@doc md"""
    sf_psi_int_e(n)

C signature:
`int gsl_sf_psi_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_int_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_int_e(n, result)
    return result
end

export sf_psi_e
@doc md"""
    sf_psi_e(x)

C signature:
`int gsl_sf_psi_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_e(x, result)
    return result
end

export sf_psi_1piy_e
@doc md"""
    sf_psi_1piy_e(y)

C signature:
`int gsl_sf_psi_1piy_e(const double y, gsl_sf_result * result)`
"""
function sf_psi_1piy_e(y)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_1piy_e(y, result)
    return result
end

export sf_complex_psi_e
@doc md"""
    sf_complex_psi_e(x, y)

C signature:
`int gsl_sf_complex_psi_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_psi_e(x, y)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = gsl_sf_complex_psi_e(x, y, result_re, result_im)
    return result_re, result_im
end

export sf_psi_1_int_e
@doc md"""
    sf_psi_1_int_e(n)

C signature:
`int gsl_sf_psi_1_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_1_int_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_1_int_e(n, result)
    return result
end

export sf_psi_1_e
@doc md"""
    sf_psi_1_e(x)

C signature:
`int gsl_sf_psi_1_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_1_e(x, result)
    return result
end

export sf_psi_n_e
@doc md"""
    sf_psi_n_e(n, x)

C signature:
`int gsl_sf_psi_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_psi_n_e(n, x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_psi_n_e(n, x, result)
    return result
end

export sf_result_smash_e
@doc md"""
    sf_result_smash_e()

C signature:
`int gsl_sf_result_smash_e(const gsl_sf_result_e10 * re, gsl_sf_result * r)`
"""
function sf_result_smash_e()
    re = gsl_sf_result_e10(0,0,0)
    r = gsl_sf_result(0,0)
    output = gsl_sf_result_smash_e(re, r)
    return re, r
end

export sf_sin_pi_e
@doc md"""
    sf_sin_pi_e(x)

C signature:
`int gsl_sf_sin_pi_e(double x, gsl_sf_result * result)`
"""
function sf_sin_pi_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_sin_pi_e(x, result)
    return result
end

export sf_cos_pi_e
@doc md"""
    sf_cos_pi_e(x)

C signature:
`int gsl_sf_cos_pi_e(double x, gsl_sf_result * result)`
"""
function sf_cos_pi_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_cos_pi_e(x, result)
    return result
end

export sf_synchrotron_1_e
@doc md"""
    sf_synchrotron_1_e(x)

C signature:
`int gsl_sf_synchrotron_1_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_1_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_synchrotron_1_e(x, result)
    return result
end

export sf_synchrotron_2_e
@doc md"""
    sf_synchrotron_2_e(x)

C signature:
`int gsl_sf_synchrotron_2_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_synchrotron_2_e(x, result)
    return result
end

export sf_transport_2_e
@doc md"""
    sf_transport_2_e(x)

C signature:
`int gsl_sf_transport_2_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_2_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_transport_2_e(x, result)
    return result
end

export sf_transport_3_e
@doc md"""
    sf_transport_3_e(x)

C signature:
`int gsl_sf_transport_3_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_3_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_transport_3_e(x, result)
    return result
end

export sf_transport_4_e
@doc md"""
    sf_transport_4_e(x)

C signature:
`int gsl_sf_transport_4_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_4_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_transport_4_e(x, result)
    return result
end

export sf_transport_5_e
@doc md"""
    sf_transport_5_e(x)

C signature:
`int gsl_sf_transport_5_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_5_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_transport_5_e(x, result)
    return result
end

export sf_sin_e
@doc md"""
    sf_sin_e(x)

C signature:
`int gsl_sf_sin_e(double x, gsl_sf_result * result)`
"""
function sf_sin_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_sin_e(x, result)
    return result
end

export sf_cos_e
@doc md"""
    sf_cos_e(x)

C signature:
`int gsl_sf_cos_e(double x, gsl_sf_result * result)`
"""
function sf_cos_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_cos_e(x, result)
    return result
end

export sf_hypot_e
@doc md"""
    sf_hypot_e(x, y)

C signature:
`int gsl_sf_hypot_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_hypot_e(x, y)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hypot_e(x, y, result)
    return result
end

export sf_complex_sin_e
@doc md"""
    sf_complex_sin_e(zr, zi)

C signature:
`int gsl_sf_complex_sin_e(const double zr, const double zi, gsl_sf_result * szr, gsl_sf_result * szi)`
"""
function sf_complex_sin_e(zr, zi)
    szr = gsl_sf_result(0,0)
    szi = gsl_sf_result(0,0)
    output = gsl_sf_complex_sin_e(zr, zi, szr, szi)
    return szr, szi
end

export sf_complex_cos_e
@doc md"""
    sf_complex_cos_e(zr, zi)

C signature:
`int gsl_sf_complex_cos_e(const double zr, const double zi, gsl_sf_result * czr, gsl_sf_result * czi)`
"""
function sf_complex_cos_e(zr, zi)
    czr = gsl_sf_result(0,0)
    czi = gsl_sf_result(0,0)
    output = gsl_sf_complex_cos_e(zr, zi, czr, czi)
    return czr, czi
end

export sf_complex_logsin_e
@doc md"""
    sf_complex_logsin_e(zr, zi)

C signature:
`int gsl_sf_complex_logsin_e(const double zr, const double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`
"""
function sf_complex_logsin_e(zr, zi)
    lszr = gsl_sf_result(0,0)
    lszi = gsl_sf_result(0,0)
    output = gsl_sf_complex_logsin_e(zr, zi, lszr, lszi)
    return lszr, lszi
end

export sf_sinc_e
@doc md"""
    sf_sinc_e(x)

C signature:
`int gsl_sf_sinc_e(double x, gsl_sf_result * result)`
"""
function sf_sinc_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_sinc_e(x, result)
    return result
end

export sf_lnsinh_e
@doc md"""
    sf_lnsinh_e(x)

C signature:
`int gsl_sf_lnsinh_e(const double x, gsl_sf_result * result)`
"""
function sf_lnsinh_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lnsinh_e(x, result)
    return result
end

export sf_lncosh_e
@doc md"""
    sf_lncosh_e(x)

C signature:
`int gsl_sf_lncosh_e(const double x, gsl_sf_result * result)`
"""
function sf_lncosh_e(x)
    result = gsl_sf_result(0,0)
    output = gsl_sf_lncosh_e(x, result)
    return result
end

export sf_polar_to_rect
@doc md"""
    sf_polar_to_rect(r, theta)

C signature:
`int gsl_sf_polar_to_rect(const double r, const double theta, gsl_sf_result * x, gsl_sf_result * y)`
"""
function sf_polar_to_rect(r, theta)
    x = gsl_sf_result(0,0)
    y = gsl_sf_result(0,0)
    output = gsl_sf_polar_to_rect(r, theta, x, y)
    return x, y
end

export sf_rect_to_polar
@doc md"""
    sf_rect_to_polar(x, y)

C signature:
`int gsl_sf_rect_to_polar(const double x, const double y, gsl_sf_result * r, gsl_sf_result * theta)`
"""
function sf_rect_to_polar(x, y)
    r = gsl_sf_result(0,0)
    theta = gsl_sf_result(0,0)
    output = gsl_sf_rect_to_polar(x, y, r, theta)
    return r, theta
end

export sf_sin_err_e
@doc md"""
    sf_sin_err_e(x, dx)

C signature:
`int gsl_sf_sin_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function sf_sin_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = gsl_sf_sin_err_e(x, dx, result)
    return result
end

export sf_cos_err_e
@doc md"""
    sf_cos_err_e(x, dx)

C signature:
`int gsl_sf_cos_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function sf_cos_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = gsl_sf_cos_err_e(x, dx, result)
    return result
end

export sf_angle_restrict_symm_err_e
@doc md"""
    sf_angle_restrict_symm_err_e(theta)

C signature:
`int gsl_sf_angle_restrict_symm_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_symm_err_e(theta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_angle_restrict_symm_err_e(theta, result)
    return result
end

export sf_angle_restrict_pos_err_e
@doc md"""
    sf_angle_restrict_pos_err_e(theta)

C signature:
`int gsl_sf_angle_restrict_pos_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_pos_err_e(theta)
    result = gsl_sf_result(0,0)
    output = gsl_sf_angle_restrict_pos_err_e(theta, result)
    return result
end

export sf_zeta_int_e
@doc md"""
    sf_zeta_int_e(n)

C signature:
`int gsl_sf_zeta_int_e(const int n, gsl_sf_result * result)`
"""
function sf_zeta_int_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_zeta_int_e(n, result)
    return result
end

export sf_zeta_e
@doc md"""
    sf_zeta_e(s)

C signature:
`int gsl_sf_zeta_e(const double s, gsl_sf_result * result)`
"""
function sf_zeta_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_zeta_e(s, result)
    return result
end

export sf_zetam1_e
@doc md"""
    sf_zetam1_e(s)

C signature:
`int gsl_sf_zetam1_e(const double s, gsl_sf_result * result)`
"""
function sf_zetam1_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_zetam1_e(s, result)
    return result
end

export sf_zetam1_int_e
@doc md"""
    sf_zetam1_int_e(s)

C signature:
`int gsl_sf_zetam1_int_e(const int s, gsl_sf_result * result)`
"""
function sf_zetam1_int_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_zetam1_int_e(s, result)
    return result
end

export sf_hzeta_e
@doc md"""
    sf_hzeta_e(s, q)

C signature:
`int gsl_sf_hzeta_e(const double s, const double q, gsl_sf_result * result)`
"""
function sf_hzeta_e(s, q)
    result = gsl_sf_result(0,0)
    output = gsl_sf_hzeta_e(s, q, result)
    return result
end

export sf_eta_int_e
@doc md"""
    sf_eta_int_e(n)

C signature:
`int gsl_sf_eta_int_e(int n, gsl_sf_result * result)`
"""
function sf_eta_int_e(n)
    result = gsl_sf_result(0,0)
    output = gsl_sf_eta_int_e(n, result)
    return result
end

export sf_eta_e
@doc md"""
    sf_eta_e(s)

C signature:
`int gsl_sf_eta_e(const double s, gsl_sf_result * result)`
"""
function sf_eta_e(s)
    result = gsl_sf_result(0,0)
    output = gsl_sf_eta_e(s, result)
    return result
end

export spline_name
@doc md"""
    spline_name(spline)

C signature:
`const char * gsl_spline_name(const gsl_spline * spline)`
"""
function spline_name(spline)
    output = gsl_spline_name(spline)
    output = unsafe_string(output)
    return output
end

export spline2d_name
@doc md"""
    spline2d_name(interp)

C signature:
`const char * gsl_spline2d_name(const gsl_spline2d * interp)`
"""
function spline2d_name(interp)
    output = gsl_spline2d_name(interp)
    output = unsafe_string(output)
    return output
end

export vector_char_const_ptr
@doc md"""
    vector_char_const_ptr(v, i)

C signature:
`const char * gsl_vector_char_const_ptr (const gsl_vector_char * v, const size_t i)`
"""
function vector_char_const_ptr(v, i)
    output = gsl_vector_char_const_ptr(v, i)
    output = unsafe_string(output)
    return output
end

export wavelet_name
@doc md"""
    wavelet_name(w)

C signature:
`const char *gsl_wavelet_name (const gsl_wavelet * w)`
"""
function wavelet_name(w)
    output = gsl_wavelet_name(w)
    output = unsafe_string(output)
    return output
end

