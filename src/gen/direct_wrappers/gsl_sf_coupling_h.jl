#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_coupling.h ########################################################


@doc md"""
    gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result) -> Cint

C signature:
`int gsl_sf_coupling_3j_e(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc, gsl_sf_result * result )`
"""
function gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
    ccall((:gsl_sf_coupling_3j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
end

@doc md"""
    gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc) -> Cdouble

C signature:
`double gsl_sf_coupling_3j(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc )`

GSL documentation:

### `double gsl_sf_coupling_3j (int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc)`

> int gsl\_sf\_coupling\_3j\_e (int two\_ja, int two\_jb, int two\_jc,
> int two\_ma, int two\_mb, int two\_mc, gsl\_sf\_result \* result)

> These routines compute the Wigner 3-j coefficient,
>
> where the arguments are given in half-integer units, $ja$ = two\_ja/2,
> $ma$ = two\_ma/2, etc.

"""
function gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
    ccall((:gsl_sf_coupling_3j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
end

@doc md"""
    gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_6j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_6j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

@doc md"""
    gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_6j(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`

GSL documentation:

### `double gsl_sf_coupling_6j (int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf)`

> int gsl\_sf\_coupling\_6j\_e (int two\_ja, int two\_jb, int two\_jc,
> int two\_jd, int two\_je, int two\_jf, gsl\_sf\_result \* result)

> These routines compute the Wigner 6-j coefficient,
>
> where the arguments are given in half-integer units, $ja$ = two\_ja/2,
> $ma$ = two\_ma/2, etc.

"""
function gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_6j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end

@doc md"""
    gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_RacahW_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_RacahW_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

@doc md"""
    gsl_sf_coupling_RacahW(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_RacahW(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`
"""
function gsl_sf_coupling_RacahW(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_RacahW, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end

@doc md"""
    gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result) -> Cint

C signature:
`int gsl_sf_coupling_9j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji, gsl_sf_result * result )`
"""
function gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
    ccall((:gsl_sf_coupling_9j_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
end

@doc md"""
    gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji) -> Cdouble

C signature:
`double gsl_sf_coupling_9j(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji )`

GSL documentation:

### `double gsl_sf_coupling_9j (int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji)`

> int gsl\_sf\_coupling\_9j\_e (int two\_ja, int two\_jb, int two\_jc,
> int two\_jd, int two\_je, int two\_jf, int two\_jg, int two\_jh, int
> two\_ji, gsl\_sf\_result \* result)

> These routines compute the Wigner 9-j coefficient,
>
> where the arguments are given in half-integer units, $ja$ = two\_ja/2,
> $ma$ = two\_ma/2, etc.

"""
function gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
    ccall((:gsl_sf_coupling_9j, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
end

@doc md"""
    gsl_sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result) -> Cint

C signature:
`int gsl_sf_coupling_6j_INCORRECT_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function gsl_sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    ccall((:gsl_sf_coupling_6j_INCORRECT_e, libgsl), Cint, (Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
end

@doc md"""
    gsl_sf_coupling_6j_INCORRECT(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> Cdouble

C signature:
`double gsl_sf_coupling_6j_INCORRECT(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf )`
"""
function gsl_sf_coupling_6j_INCORRECT(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    ccall((:gsl_sf_coupling_6j_INCORRECT, libgsl), Cdouble, (Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
end
