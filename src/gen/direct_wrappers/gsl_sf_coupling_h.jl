#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_coupling.h ########################################################


"""
    gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result) -> Cint

C signature:
`int gsl_sf_coupling_3j_e(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc, gsl_sf_result * result )`
"""
function gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
    ccall((:gsl_sf_coupling_3j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
end

"""
    gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc) -> Cdouble

C signature:
`double gsl_sf_coupling_3j(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc )`
"""
function gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
    ccall((:gsl_sf_coupling_3j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
end

"""
    gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_6j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_6j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

"""
    gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_6j(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`
"""
function gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_6j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end

"""
    gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_RacahW_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_RacahW_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

"""
    gsl_sf_coupling_RacahW(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_RacahW(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`
"""
function gsl_sf_coupling_RacahW(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_RacahW, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end

"""
    gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result) -> Cint

C signature:
`int gsl_sf_coupling_9j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji, gsl_sf_result * result )`
"""
function gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
    ccall((:gsl_sf_coupling_9j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
end

"""
    gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji) -> Cdouble

C signature:
`double gsl_sf_coupling_9j(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji )`
"""
function gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
    ccall((:gsl_sf_coupling_9j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
end

"""
    gsl_sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_6j_INCORRECT_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_6j_INCORRECT_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

"""
    gsl_sf_coupling_6j_INCORRECT(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_6j_INCORRECT(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`
"""
function gsl_sf_coupling_6j_INCORRECT(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_6j_INCORRECT, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end

