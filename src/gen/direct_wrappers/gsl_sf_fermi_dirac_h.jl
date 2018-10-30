#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_fermi_dirac.h #####################################################


"""
    gsl_sf_fermi_dirac_m1_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_m1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_m1_e(x, result)
    ccall((:gsl_sf_fermi_dirac_m1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_m1(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_m1(const double x)`
"""
function gsl_sf_fermi_dirac_m1(x)
    ccall((:gsl_sf_fermi_dirac_m1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_0_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_0_e(x, result)
    ccall((:gsl_sf_fermi_dirac_0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_0(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_0(const double x)`
"""
function gsl_sf_fermi_dirac_0(x)
    ccall((:gsl_sf_fermi_dirac_0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_1_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_1_e(x, result)
    ccall((:gsl_sf_fermi_dirac_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_1(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_1(const double x)`
"""
function gsl_sf_fermi_dirac_1(x)
    ccall((:gsl_sf_fermi_dirac_1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_2_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_2_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_2_e(x, result)
    ccall((:gsl_sf_fermi_dirac_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_2(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_2(const double x)`
"""
function gsl_sf_fermi_dirac_2(x)
    ccall((:gsl_sf_fermi_dirac_2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_int_e(j, x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_int_e(const int j, const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_int_e(j, x, result)
    ccall((:gsl_sf_fermi_dirac_int_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), j, x, result)
end

"""
    gsl_sf_fermi_dirac_int(j, x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_int(const int j, const double x)`
"""
function gsl_sf_fermi_dirac_int(j, x)
    ccall((:gsl_sf_fermi_dirac_int, libgsl), Cdouble, (Cint, Cdouble), j, x)
end

"""
    gsl_sf_fermi_dirac_mhalf_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_mhalf_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_mhalf_e(x, result)
    ccall((:gsl_sf_fermi_dirac_mhalf_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_mhalf(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_mhalf(const double x)`
"""
function gsl_sf_fermi_dirac_mhalf(x)
    ccall((:gsl_sf_fermi_dirac_mhalf, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_half_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_half_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_half_e(x, result)
    ccall((:gsl_sf_fermi_dirac_half_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_half(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_half(const double x)`
"""
function gsl_sf_fermi_dirac_half(x)
    ccall((:gsl_sf_fermi_dirac_half, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_3half_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_3half_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_3half_e(x, result)
    ccall((:gsl_sf_fermi_dirac_3half_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_fermi_dirac_3half(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_3half(const double x)`
"""
function gsl_sf_fermi_dirac_3half(x)
    ccall((:gsl_sf_fermi_dirac_3half, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_fermi_dirac_inc_0_e(x, b, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_inc_0_e(const double x, const double b, gsl_sf_result * result)`
"""
function gsl_sf_fermi_dirac_inc_0_e(x, b, result)
    ccall((:gsl_sf_fermi_dirac_inc_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, b, result)
end

"""
    gsl_sf_fermi_dirac_inc_0(x, b) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_inc_0(const double x, const double b)`
"""
function gsl_sf_fermi_dirac_inc_0(x, b)
    ccall((:gsl_sf_fermi_dirac_inc_0, libgsl), Cdouble, (Cdouble, Cdouble), x, b)
end

