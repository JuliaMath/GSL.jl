#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_mathieu.h #########################################################


"""
    gsl_sf_mathieu_a_array(order_min, order_max, qq, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_a_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_a_array(order_min, order_max, qq, work, result_array)
    ccall((:gsl_sf_mathieu_a_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), order_min, order_max, qq, work, result_array)
end

"""
    gsl_sf_mathieu_b_array(order_min, order_max, qq, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_b_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_b_array(order_min, order_max, qq, work, result_array)
    ccall((:gsl_sf_mathieu_b_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), order_min, order_max, qq, work, result_array)
end

"""
    gsl_sf_mathieu_a_e(order, qq, result) -> Cint

C signature:
`int gsl_sf_mathieu_a_e(int order, double qq, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_a_e(order, qq, result)
    ccall((:gsl_sf_mathieu_a_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), order, qq, result)
end

"""
    gsl_sf_mathieu_a(order, qq) -> Cdouble

C signature:
`double gsl_sf_mathieu_a(int order, double qq)`
"""
function gsl_sf_mathieu_a(order, qq)
    ccall((:gsl_sf_mathieu_a, libgsl), Cdouble, (Cint, Cdouble), order, qq)
end

"""
    gsl_sf_mathieu_b_e(order, qq, result) -> Cint

C signature:
`int gsl_sf_mathieu_b_e(int order, double qq, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_b_e(order, qq, result)
    ccall((:gsl_sf_mathieu_b_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), order, qq, result)
end

"""
    gsl_sf_mathieu_b(order, qq) -> Cdouble

C signature:
`double gsl_sf_mathieu_b(int order, double qq)`
"""
function gsl_sf_mathieu_b(order, qq)
    ccall((:gsl_sf_mathieu_b, libgsl), Cdouble, (Cint, Cdouble), order, qq)
end

"""
    gsl_sf_mathieu_a_coeff(order, qq, aa, coeff) -> Cint

C signature:
`int gsl_sf_mathieu_a_coeff(int order, double qq, double aa, double coeff[])`
"""
function gsl_sf_mathieu_a_coeff(order, qq, aa, coeff)
    ccall((:gsl_sf_mathieu_a_coeff, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), order, qq, aa, coeff)
end

"""
    gsl_sf_mathieu_b_coeff(order, qq, aa, coeff) -> Cint

C signature:
`int gsl_sf_mathieu_b_coeff(int order, double qq, double aa, double coeff[])`
"""
function gsl_sf_mathieu_b_coeff(order, qq, aa, coeff)
    ccall((:gsl_sf_mathieu_b_coeff, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), order, qq, aa, coeff)
end

"""
    gsl_sf_mathieu_alloc(nn, qq) -> Ptr{gsl_sf_mathieu_workspace}

C signature:
`gsl_sf_mathieu_workspace *gsl_sf_mathieu_alloc(const size_t nn, const double qq)`
"""
function gsl_sf_mathieu_alloc(nn, qq)
    ccall((:gsl_sf_mathieu_alloc, libgsl), Ptr{gsl_sf_mathieu_workspace}, (Csize_t, Cdouble), nn, qq)
end

"""
    gsl_sf_mathieu_free(workspace) -> Cvoid

C signature:
`void gsl_sf_mathieu_free(gsl_sf_mathieu_workspace *workspace)`
"""
function gsl_sf_mathieu_free(workspace)
    ccall((:gsl_sf_mathieu_free, libgsl), Cvoid, (Ptr{gsl_sf_mathieu_workspace},), workspace)
end

"""
    gsl_sf_mathieu_ce_e(order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_ce_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_ce_e(order, qq, zz, result)
    ccall((:gsl_sf_mathieu_ce_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), order, qq, zz, result)
end

"""
    gsl_sf_mathieu_ce(order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_ce(int order, double qq, double zz)`
"""
function gsl_sf_mathieu_ce(order, qq, zz)
    ccall((:gsl_sf_mathieu_ce, libgsl), Cdouble, (Cint, Cdouble, Cdouble), order, qq, zz)
end

"""
    gsl_sf_mathieu_se_e(order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_se_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_se_e(order, qq, zz, result)
    ccall((:gsl_sf_mathieu_se_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), order, qq, zz, result)
end

"""
    gsl_sf_mathieu_se(order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_se(int order, double qq, double zz)`
"""
function gsl_sf_mathieu_se(order, qq, zz)
    ccall((:gsl_sf_mathieu_se, libgsl), Cdouble, (Cint, Cdouble, Cdouble), order, qq, zz)
end

"""
    gsl_sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_ce_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_ce_array, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), nmin, nmax, qq, zz, work, result_array)
end

"""
    gsl_sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_se_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_se_array, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), nmin, nmax, qq, zz, work, result_array)
end

"""
    gsl_sf_mathieu_Mc_e(kind, order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_Mc_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_Mc_e(kind, order, qq, zz, result)
    ccall((:gsl_sf_mathieu_Mc_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), kind, order, qq, zz, result)
end

"""
    gsl_sf_mathieu_Mc(kind, order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_Mc(int kind, int order, double qq, double zz)`
"""
function gsl_sf_mathieu_Mc(kind, order, qq, zz)
    ccall((:gsl_sf_mathieu_Mc, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), kind, order, qq, zz)
end

"""
    gsl_sf_mathieu_Ms_e(kind, order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_Ms_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function gsl_sf_mathieu_Ms_e(kind, order, qq, zz, result)
    ccall((:gsl_sf_mathieu_Ms_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), kind, order, qq, zz, result)
end

"""
    gsl_sf_mathieu_Ms(kind, order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_Ms(int kind, int order, double qq, double zz)`
"""
function gsl_sf_mathieu_Ms(kind, order, qq, zz)
    ccall((:gsl_sf_mathieu_Ms, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), kind, order, qq, zz)
end

"""
    gsl_sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_Mc_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_Mc_array, libgsl), Cint, (Cint, Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), kind, nmin, nmax, qq, zz, work, result_array)
end

"""
    gsl_sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_Ms_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function gsl_sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_Ms_array, libgsl), Cint, (Cint, Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), kind, nmin, nmax, qq, zz, work, result_array)
end

