#
# This code is auto generated from the GSL headers, do not edit!
#

const size_t = Csize_t


#### gsl_block_double.h #######################################################


mutable struct gsl_block_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block = gsl_block_struct


#### gsl_block_complex_double.h ###############################################


mutable struct gsl_block_complex_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_complex = gsl_block_complex_struct


#### gsl_vector_double.h ######################################################


mutable struct gsl_vector
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end

mutable struct _gsl_vector_view
    vector::gsl_vector
end
const gsl_vector_view = _gsl_vector_view

mutable struct _gsl_vector_const_view
    vector::gsl_vector
end
const gsl_vector_const_view = _gsl_vector_const_view


#### gsl_vector_complex_double.h ##############################################


mutable struct gsl_vector_complex
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end

mutable struct _gsl_vector_complex_view
    vector::gsl_vector_complex
end
const gsl_vector_complex_view = _gsl_vector_complex_view

mutable struct _gsl_vector_complex_const_view
    vector::gsl_vector_complex
end
const gsl_vector_complex_const_view = _gsl_vector_complex_const_view


#### gsl_matrix_double.h ######################################################


mutable struct gsl_matrix
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end

mutable struct _gsl_matrix_view
    matrix::gsl_matrix
end
const gsl_matrix_view = _gsl_matrix_view

mutable struct _gsl_matrix_const_view
    matrix::gsl_matrix
end
const gsl_matrix_const_view = _gsl_matrix_const_view


#### gsl_eigen.h ##############################################################

const GSL_EIGEN_SORT_VAL_ASC = 0
const GSL_EIGEN_SORT_VAL_DESC = 1
const GSL_EIGEN_SORT_ABS_ASC = 2
const GSL_EIGEN_SORT_ABS_DESC = 3
const gsl_eigen_sort_t = Cint

mutable struct gsl_eigen_symm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
end

mutable struct gsl_eigen_symmv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end

mutable struct gsl_eigen_herm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
end

mutable struct gsl_eigen_hermv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end

mutable struct gsl_eigen_francis_workspace
    size::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    n_evals::Csize_t
    compute_t::Cint
    H::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end

mutable struct gsl_eigen_nonsymm_workspace
    size::Csize_t
    diag::Ptr{gsl_vector}
    tau::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    do_balance::Cint
    n_evals::Csize_t
    francis_workspace_p::Ptr{gsl_eigen_francis_workspace}
end

mutable struct gsl_eigen_nonsymmv_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    nonsymm_workspace_p::Ptr{gsl_eigen_nonsymm_workspace}
end

mutable struct gsl_eigen_gensymm_workspace
    size::Csize_t
    symm_workspace_p::Ptr{gsl_eigen_symm_workspace}
end

mutable struct gsl_eigen_gensymmv_workspace
    size::Csize_t
    symmv_workspace_p::Ptr{gsl_eigen_symmv_workspace}
end

mutable struct gsl_eigen_genherm_workspace
    size::Csize_t
    herm_workspace_p::Ptr{gsl_eigen_herm_workspace}
end

mutable struct gsl_eigen_genhermv_workspace
    size::Csize_t
    hermv_workspace_p::Ptr{gsl_eigen_hermv_workspace}
end

mutable struct gsl_eigen_gen_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    n_evals::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    eshift::Cdouble
    needtop::Cint
    atol::Cdouble
    btol::Cdouble
    ascale::Cdouble
    bscale::Cdouble
    H::Ptr{gsl_matrix}
    R::Ptr{gsl_matrix}
    compute_s::Cint
    compute_t::Cint
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end

mutable struct gsl_eigen_genv_workspace
    size::Csize_t
    work1::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    work4::Ptr{gsl_vector}
    work5::Ptr{gsl_vector}
    work6::Ptr{gsl_vector}
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
    gen_workspace_p::Ptr{gsl_eigen_gen_workspace}
end


#### gsl_matrix_complex_double.h ##############################################


mutable struct gsl_matrix_complex
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end

mutable struct _gsl_matrix_complex_view
    matrix::gsl_matrix_complex
end
const gsl_matrix_complex_view = _gsl_matrix_complex_view

mutable struct _gsl_matrix_complex_const_view
    matrix::gsl_matrix_complex
end
const gsl_matrix_complex_const_view = _gsl_matrix_complex_const_view


#### gsl_complex.h ############################################################

const gsl_complex_packed = Array{Cdouble}
const gsl_complex_packed_float = Array{Cfloat}
const gsl_complex_packed_long_double = Array{Cdouble}
const gsl_const_complex_packed = Array{Cdouble}
const gsl_const_complex_packed_float = Array{Cfloat}
const gsl_const_complex_packed_long_double = Array{Cdouble}
const gsl_complex_packed_array = Array{Cdouble}
const gsl_complex_packed_array_float = Array{Cfloat}
const gsl_complex_packed_array_long_double = Array{Cdouble}
const gsl_const_complex_packed_array = Array{Cdouble}
const gsl_const_complex_packed_array_float = Array{Cfloat}
const gsl_const_complex_packed_array_long_double = Array{Cdouble}
const gsl_complex_packed_ptr = Array{Cdouble}
const gsl_complex_packed_float_ptr = Array{Cfloat}
const gsl_complex_packed_long_double_ptr = Array{Cdouble}
const gsl_const_complex_packed_ptr = Array{Cdouble}
const gsl_const_complex_packed_float_ptr = Array{Cfloat}
const gsl_const_complex_packed_long_double_ptr = Array{Cdouble}

mutable struct gsl_complex_long_double
    dat::NTuple{2, Cdouble}
end

mutable struct gsl_complex
    dat::NTuple{2, Cdouble}
end

mutable struct gsl_complex_float
    dat::NTuple{2, Cfloat}
end


#### gsl_mode.h ###############################################################

const GSL_PREC_DOUBLE = 0
const GSL_PREC_SINGLE = 1
const GSL_PREC_APPROX = 2
const gsl_mode_t = Cuint


#### gsl_math.h ###############################################################

const M_E = 2.71828182845904523536028747135
const M_LOG2E = 1.44269504088896340735992468100
const M_LOG10E = 0.43429448190325182765112891892
const M_SQRT2 = 1.41421356237309504880168872421
const M_SQRT1_2 = 0.70710678118654752440084436210
const M_SQRT3 = 1.73205080756887729352744634151
const M_PI = 3.14159265358979323846264338328
const M_PI_2 = 1.57079632679489661923132169164
const M_PI_4 = 0.78539816339744830961566084582
const M_SQRTPI = 1.77245385090551602729816748334
const M_2_SQRTPI = 1.12837916709551257389615890312
const M_1_PI = 0.31830988618379067153776752675
const M_2_PI = 0.63661977236758134307553505349
const M_LN10 = 2.30258509299404568401799145468
const M_LN2 = 0.69314718055994530941723212146
const M_LNPI = 1.14472988584940017414342735135
const M_EULER = 0.57721566490153286060651209008

mutable struct gsl_function_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function = gsl_function_struct

mutable struct gsl_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function_fdf = gsl_function_fdf_struct

mutable struct gsl_function_vec_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function_vec = gsl_function_vec_struct


#### gsl_movstat.h ############################################################

const GSL_MOVSTAT_END_PADZERO = 0
const GSL_MOVSTAT_END_PADVALUE = 1
const GSL_MOVSTAT_END_TRUNCATE = 2
const gsl_movstat_end_t = Cint

mutable struct gsl_movstat_accum
    size::Ptr{Cvoid}
    init::Ptr{Cvoid}
    insert::Ptr{Cvoid}
    delete::Ptr{Cvoid}
    get::Ptr{Cvoid}
end

mutable struct gsl_movstat_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

mutable struct gsl_movstat_workspace
    H::Csize_t
    J::Csize_t
    K::Csize_t
    work::Ptr{Cdouble}
    state::Ptr{Cvoid}
    state_size::Csize_t
end


#### gsl_blas.h ###############################################################



#### gsl_blas_types.h #########################################################

const CBLAS_INDEX_t = size_t
const CBLAS_ORDER_t = Cint
const CBLAS_TRANSPOSE_t = Cint
const CBLAS_UPLO_t = Cint
const CBLAS_DIAG_t = Cint
const CBLAS_SIDE_t = Cint


#### gsl_block.h ##############################################################



#### gsl_block_char.h #########################################################


mutable struct gsl_block_char_struct
    size::Csize_t
    data::Ptr{Cchar}
end
const gsl_block_char = gsl_block_char_struct


#### gsl_block_complex_float.h ################################################


mutable struct gsl_block_complex_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
const gsl_block_complex_float = gsl_block_complex_float_struct


#### gsl_block_complex_long_double.h ##########################################


mutable struct gsl_block_complex_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_complex_long_double = gsl_block_complex_long_double_struct


#### gsl_block_float.h ########################################################


mutable struct gsl_block_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
const gsl_block_float = gsl_block_float_struct


#### gsl_block_int.h ##########################################################


mutable struct gsl_block_int_struct
    size::Csize_t
    data::Ptr{Cint}
end
const gsl_block_int = gsl_block_int_struct


#### gsl_block_long.h #########################################################


mutable struct gsl_block_long_struct
    size::Csize_t
    data::Ptr{Clong}
end
const gsl_block_long = gsl_block_long_struct


#### gsl_block_long_double.h ##################################################


mutable struct gsl_block_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_long_double = gsl_block_long_double_struct


#### gsl_block_short.h ########################################################


mutable struct gsl_block_short_struct
    size::Csize_t
    data::Ptr{Cshort}
end
const gsl_block_short = gsl_block_short_struct


#### gsl_block_uchar.h ########################################################


mutable struct gsl_block_uchar_struct
    size::Csize_t
    data::Ptr{Cuchar}
end
const gsl_block_uchar = gsl_block_uchar_struct


#### gsl_block_uint.h #########################################################


mutable struct gsl_block_uint_struct
    size::Csize_t
    data::Ptr{Cuint}
end
const gsl_block_uint = gsl_block_uint_struct


#### gsl_block_ulong.h ########################################################


mutable struct gsl_block_ulong_struct
    size::Csize_t
    data::Ptr{Culong}
end
const gsl_block_ulong = gsl_block_ulong_struct


#### gsl_block_ushort.h #######################################################


mutable struct gsl_block_ushort_struct
    size::Csize_t
    data::Ptr{Cushort}
end
const gsl_block_ushort = gsl_block_ushort_struct


#### gsl_bspline.h ############################################################


mutable struct gsl_bspline_workspace
    k::Csize_t
    km1::Csize_t
    l::Csize_t
    nbreak::Csize_t
    n::Csize_t
    knots::Ptr{gsl_vector}
    deltal::Ptr{gsl_vector}
    deltar::Ptr{gsl_vector}
    B::Ptr{gsl_vector}
    A::Ptr{gsl_matrix}
    dB::Ptr{gsl_matrix}
end


#### gsl_cblas.h ##############################################################

const CblasRowMajor = 101
const CblasColMajor = 102
const CBLAS_ORDER = Cint
const CblasNoTrans = 111
const CblasTrans = 112
const CblasConjTrans = 113
const CBLAS_TRANSPOSE = Cint
const CblasUpper = 121
const CblasLower = 122
const CBLAS_UPLO = Cint
const CblasNonUnit = 131
const CblasUnit = 132
const CBLAS_DIAG = Cint
const CblasLeft = 141
const CblasRight = 142
const CBLAS_SIDE = Cint


#### gsl_cdf.h ################################################################



#### gsl_chebyshev.h ##########################################################


mutable struct gsl_cheb_series_struct
    c::Ptr{Cdouble}
    order::Csize_t
    a::Cdouble
    b::Cdouble
    order_sp::Csize_t
    f::Ptr{Cdouble}
end
const gsl_cheb_series = gsl_cheb_series_struct


#### gsl_check_range.h ########################################################



#### gsl_combination.h ########################################################


mutable struct gsl_combination_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
const gsl_combination = gsl_combination_struct


#### gsl_complex_math.h #######################################################



#### gsl_const.h ##############################################################



#### gsl_const_cgs.h ##########################################################

const GSL_CONST_CGS_SPEED_OF_LIGHT = 2.99792458e10
const GSL_CONST_CGS_GRAVITATIONAL_CONSTANT = 6.673e-8
const GSL_CONST_CGS_PLANCKS_CONSTANT_H = 6.62606896e-27
const GSL_CONST_CGS_PLANCKS_CONSTANT_HBAR = 1.05457162825e-27
const GSL_CONST_CGS_ASTRONOMICAL_UNIT = 1.49597870691e13
const GSL_CONST_CGS_LIGHT_YEAR = 9.46053620707e17
const GSL_CONST_CGS_PARSEC = 3.08567758135e18
const GSL_CONST_CGS_GRAV_ACCEL = 9.80665e2
const GSL_CONST_CGS_ELECTRON_VOLT = 1.602176487e-12
const GSL_CONST_CGS_MASS_ELECTRON = 9.10938188e-28
const GSL_CONST_CGS_MASS_MUON = 1.88353109e-25
const GSL_CONST_CGS_MASS_PROTON = 1.67262158e-24
const GSL_CONST_CGS_MASS_NEUTRON = 1.67492716e-24
const GSL_CONST_CGS_RYDBERG = 2.17987196968e-11
const GSL_CONST_CGS_BOLTZMANN = 1.3806504e-16
const GSL_CONST_CGS_MOLAR_GAS = 8.314472e7
const GSL_CONST_CGS_STANDARD_GAS_VOLUME = 2.2710981e4
const GSL_CONST_CGS_MINUTE = 6e1
const GSL_CONST_CGS_HOUR = 3.6e3
const GSL_CONST_CGS_DAY = 8.64e4
const GSL_CONST_CGS_WEEK = 6.048e5
const GSL_CONST_CGS_INCH = 2.54e0
const GSL_CONST_CGS_FOOT = 3.048e1
const GSL_CONST_CGS_YARD = 9.144e1
const GSL_CONST_CGS_MILE = 1.609344e5
const GSL_CONST_CGS_NAUTICAL_MILE = 1.852e5
const GSL_CONST_CGS_FATHOM = 1.8288e2
const GSL_CONST_CGS_MIL = 2.54e-3
const GSL_CONST_CGS_POINT = 3.52777777778e-2
const GSL_CONST_CGS_TEXPOINT = 3.51459803515e-2
const GSL_CONST_CGS_MICRON = 1e-4
const GSL_CONST_CGS_ANGSTROM = 1e-8
const GSL_CONST_CGS_HECTARE = 1e8
const GSL_CONST_CGS_ACRE = 4.04685642241e7
const GSL_CONST_CGS_BARN = 1e-24
const GSL_CONST_CGS_LITER = 1e3
const GSL_CONST_CGS_US_GALLON = 3.78541178402e3
const GSL_CONST_CGS_QUART = 9.46352946004e2
const GSL_CONST_CGS_PINT = 4.73176473002e2
const GSL_CONST_CGS_CUP = 2.36588236501e2
const GSL_CONST_CGS_FLUID_OUNCE = 2.95735295626e1
const GSL_CONST_CGS_TABLESPOON = 1.47867647813e1
const GSL_CONST_CGS_TEASPOON = 4.92892159375e0
const GSL_CONST_CGS_CANADIAN_GALLON = 4.54609e3
const GSL_CONST_CGS_UK_GALLON = 4.546092e3
const GSL_CONST_CGS_MILES_PER_HOUR = 4.4704e1
const GSL_CONST_CGS_KILOMETERS_PER_HOUR = 2.77777777778e1
const GSL_CONST_CGS_KNOT = 5.14444444444e1
const GSL_CONST_CGS_POUND_MASS = 4.5359237e2
const GSL_CONST_CGS_OUNCE_MASS = 2.8349523125e1
const GSL_CONST_CGS_TON = 9.0718474e5
const GSL_CONST_CGS_METRIC_TON = 1e6
const GSL_CONST_CGS_UK_TON = 1.0160469088e6
const GSL_CONST_CGS_TROY_OUNCE = 3.1103475e1
const GSL_CONST_CGS_CARAT = 2e-1
const GSL_CONST_CGS_UNIFIED_ATOMIC_MASS = 1.660538782e-24
const GSL_CONST_CGS_GRAM_FORCE = 9.80665e2
const GSL_CONST_CGS_POUND_FORCE = 4.44822161526e5
const GSL_CONST_CGS_KILOPOUND_FORCE = 4.44822161526e8
const GSL_CONST_CGS_POUNDAL = 1.38255e4
const GSL_CONST_CGS_CALORIE = 4.1868e7
const GSL_CONST_CGS_BTU = 1.05505585262e10
const GSL_CONST_CGS_THERM = 1.05506e15
const GSL_CONST_CGS_HORSEPOWER = 7.457e9
const GSL_CONST_CGS_BAR = 1e6
const GSL_CONST_CGS_STD_ATMOSPHERE = 1.01325e6
const GSL_CONST_CGS_TORR = 1.33322368421e3
const GSL_CONST_CGS_METER_OF_MERCURY = 1.33322368421e6
const GSL_CONST_CGS_INCH_OF_MERCURY = 3.38638815789e4
const GSL_CONST_CGS_INCH_OF_WATER = 2.490889e3
const GSL_CONST_CGS_PSI = 6.89475729317e4
const GSL_CONST_CGS_POISE = 1e0
const GSL_CONST_CGS_STOKES = 1e0
const GSL_CONST_CGS_STILB = 1e0
const GSL_CONST_CGS_LUMEN = 1e0
const GSL_CONST_CGS_LUX = 1e-4
const GSL_CONST_CGS_PHOT = 1e0
const GSL_CONST_CGS_FOOTCANDLE = 1.076e-3
const GSL_CONST_CGS_LAMBERT = 1e0
const GSL_CONST_CGS_FOOTLAMBERT = 1.07639104e-3
const GSL_CONST_CGS_CURIE = 3.7e10
const GSL_CONST_CGS_ROENTGEN = 2.58e-7
const GSL_CONST_CGS_RAD = 1e2
const GSL_CONST_CGS_SOLAR_MASS = 1.98892e33
const GSL_CONST_CGS_BOHR_RADIUS = 5.291772083e-9
const GSL_CONST_CGS_NEWTON = 1e5
const GSL_CONST_CGS_DYNE = 1e0
const GSL_CONST_CGS_JOULE = 1e7
const GSL_CONST_CGS_ERG = 1e0
const GSL_CONST_CGS_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-5
const GSL_CONST_CGS_THOMSON_CROSS_SECTION = 6.65245893699e-25


#### gsl_const_cgsm.h #########################################################

const GSL_CONST_CGSM_SPEED_OF_LIGHT = 2.99792458e10
const GSL_CONST_CGSM_GRAVITATIONAL_CONSTANT = 6.673e-8
const GSL_CONST_CGSM_PLANCKS_CONSTANT_H = 6.62606896e-27
const GSL_CONST_CGSM_PLANCKS_CONSTANT_HBAR = 1.05457162825e-27
const GSL_CONST_CGSM_ASTRONOMICAL_UNIT = 1.49597870691e13
const GSL_CONST_CGSM_LIGHT_YEAR = 9.46053620707e17
const GSL_CONST_CGSM_PARSEC = 3.08567758135e18
const GSL_CONST_CGSM_GRAV_ACCEL = 9.80665e2
const GSL_CONST_CGSM_ELECTRON_VOLT = 1.602176487e-12
const GSL_CONST_CGSM_MASS_ELECTRON = 9.10938188e-28
const GSL_CONST_CGSM_MASS_MUON = 1.88353109e-25
const GSL_CONST_CGSM_MASS_PROTON = 1.67262158e-24
const GSL_CONST_CGSM_MASS_NEUTRON = 1.67492716e-24
const GSL_CONST_CGSM_RYDBERG = 2.17987196968e-11
const GSL_CONST_CGSM_BOLTZMANN = 1.3806504e-16
const GSL_CONST_CGSM_MOLAR_GAS = 8.314472e7
const GSL_CONST_CGSM_STANDARD_GAS_VOLUME = 2.2710981e4
const GSL_CONST_CGSM_MINUTE = 6e1
const GSL_CONST_CGSM_HOUR = 3.6e3
const GSL_CONST_CGSM_DAY = 8.64e4
const GSL_CONST_CGSM_WEEK = 6.048e5
const GSL_CONST_CGSM_INCH = 2.54e0
const GSL_CONST_CGSM_FOOT = 3.048e1
const GSL_CONST_CGSM_YARD = 9.144e1
const GSL_CONST_CGSM_MILE = 1.609344e5
const GSL_CONST_CGSM_NAUTICAL_MILE = 1.852e5
const GSL_CONST_CGSM_FATHOM = 1.8288e2
const GSL_CONST_CGSM_MIL = 2.54e-3
const GSL_CONST_CGSM_POINT = 3.52777777778e-2
const GSL_CONST_CGSM_TEXPOINT = 3.51459803515e-2
const GSL_CONST_CGSM_MICRON = 1e-4
const GSL_CONST_CGSM_ANGSTROM = 1e-8
const GSL_CONST_CGSM_HECTARE = 1e8
const GSL_CONST_CGSM_ACRE = 4.04685642241e7
const GSL_CONST_CGSM_BARN = 1e-24
const GSL_CONST_CGSM_LITER = 1e3
const GSL_CONST_CGSM_US_GALLON = 3.78541178402e3
const GSL_CONST_CGSM_QUART = 9.46352946004e2
const GSL_CONST_CGSM_PINT = 4.73176473002e2
const GSL_CONST_CGSM_CUP = 2.36588236501e2
const GSL_CONST_CGSM_FLUID_OUNCE = 2.95735295626e1
const GSL_CONST_CGSM_TABLESPOON = 1.47867647813e1
const GSL_CONST_CGSM_TEASPOON = 4.92892159375e0
const GSL_CONST_CGSM_CANADIAN_GALLON = 4.54609e3
const GSL_CONST_CGSM_UK_GALLON = 4.546092e3
const GSL_CONST_CGSM_MILES_PER_HOUR = 4.4704e1
const GSL_CONST_CGSM_KILOMETERS_PER_HOUR = 2.77777777778e1
const GSL_CONST_CGSM_KNOT = 5.14444444444e1
const GSL_CONST_CGSM_POUND_MASS = 4.5359237e2
const GSL_CONST_CGSM_OUNCE_MASS = 2.8349523125e1
const GSL_CONST_CGSM_TON = 9.0718474e5
const GSL_CONST_CGSM_METRIC_TON = 1e6
const GSL_CONST_CGSM_UK_TON = 1.0160469088e6
const GSL_CONST_CGSM_TROY_OUNCE = 3.1103475e1
const GSL_CONST_CGSM_CARAT = 2e-1
const GSL_CONST_CGSM_UNIFIED_ATOMIC_MASS = 1.660538782e-24
const GSL_CONST_CGSM_GRAM_FORCE = 9.80665e2
const GSL_CONST_CGSM_POUND_FORCE = 4.44822161526e5
const GSL_CONST_CGSM_KILOPOUND_FORCE = 4.44822161526e8
const GSL_CONST_CGSM_POUNDAL = 1.38255e4
const GSL_CONST_CGSM_CALORIE = 4.1868e7
const GSL_CONST_CGSM_BTU = 1.05505585262e10
const GSL_CONST_CGSM_THERM = 1.05506e15
const GSL_CONST_CGSM_HORSEPOWER = 7.457e9
const GSL_CONST_CGSM_BAR = 1e6
const GSL_CONST_CGSM_STD_ATMOSPHERE = 1.01325e6
const GSL_CONST_CGSM_TORR = 1.33322368421e3
const GSL_CONST_CGSM_METER_OF_MERCURY = 1.33322368421e6
const GSL_CONST_CGSM_INCH_OF_MERCURY = 3.38638815789e4
const GSL_CONST_CGSM_INCH_OF_WATER = 2.490889e3
const GSL_CONST_CGSM_PSI = 6.89475729317e4
const GSL_CONST_CGSM_POISE = 1e0
const GSL_CONST_CGSM_STOKES = 1e0
const GSL_CONST_CGSM_STILB = 1e0
const GSL_CONST_CGSM_LUMEN = 1e0
const GSL_CONST_CGSM_LUX = 1e-4
const GSL_CONST_CGSM_PHOT = 1e0
const GSL_CONST_CGSM_FOOTCANDLE = 1.076e-3
const GSL_CONST_CGSM_LAMBERT = 1e0
const GSL_CONST_CGSM_FOOTLAMBERT = 1.07639104e-3
const GSL_CONST_CGSM_CURIE = 3.7e10
const GSL_CONST_CGSM_ROENTGEN = 2.58e-8
const GSL_CONST_CGSM_RAD = 1e2
const GSL_CONST_CGSM_SOLAR_MASS = 1.98892e33
const GSL_CONST_CGSM_BOHR_RADIUS = 5.291772083e-9
const GSL_CONST_CGSM_NEWTON = 1e5
const GSL_CONST_CGSM_DYNE = 1e0
const GSL_CONST_CGSM_JOULE = 1e7
const GSL_CONST_CGSM_ERG = 1e0
const GSL_CONST_CGSM_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-5
const GSL_CONST_CGSM_THOMSON_CROSS_SECTION = 6.65245893699e-25
const GSL_CONST_CGSM_BOHR_MAGNETON = 9.27400899e-21
const GSL_CONST_CGSM_NUCLEAR_MAGNETON = 5.05078317e-24
const GSL_CONST_CGSM_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-21
const GSL_CONST_CGSM_PROTON_MAGNETIC_MOMENT = 1.410606633e-23
const GSL_CONST_CGSM_FARADAY = 9.64853429775e3
const GSL_CONST_CGSM_ELECTRON_CHARGE = 1.602176487e-20


#### gsl_const_mks.h ##########################################################

const GSL_CONST_MKS_SPEED_OF_LIGHT = 2.99792458e8
const GSL_CONST_MKS_GRAVITATIONAL_CONSTANT = 6.673e-11
const GSL_CONST_MKS_PLANCKS_CONSTANT_H = 6.62606896e-34
const GSL_CONST_MKS_PLANCKS_CONSTANT_HBAR = 1.05457162825e-34
const GSL_CONST_MKS_ASTRONOMICAL_UNIT = 1.49597870691e11
const GSL_CONST_MKS_LIGHT_YEAR = 9.46053620707e15
const GSL_CONST_MKS_PARSEC = 3.08567758135e16
const GSL_CONST_MKS_GRAV_ACCEL = 9.80665e0
const GSL_CONST_MKS_ELECTRON_VOLT = 1.602176487e-19
const GSL_CONST_MKS_MASS_ELECTRON = 9.10938188e-31
const GSL_CONST_MKS_MASS_MUON = 1.88353109e-28
const GSL_CONST_MKS_MASS_PROTON = 1.67262158e-27
const GSL_CONST_MKS_MASS_NEUTRON = 1.67492716e-27
const GSL_CONST_MKS_RYDBERG = 2.17987196968e-18
const GSL_CONST_MKS_BOLTZMANN = 1.3806504e-23
const GSL_CONST_MKS_MOLAR_GAS = 8.314472e0
const GSL_CONST_MKS_STANDARD_GAS_VOLUME = 2.2710981e-2
const GSL_CONST_MKS_MINUTE = 6e1
const GSL_CONST_MKS_HOUR = 3.6e3
const GSL_CONST_MKS_DAY = 8.64e4
const GSL_CONST_MKS_WEEK = 6.048e5
const GSL_CONST_MKS_INCH = 2.54e-2
const GSL_CONST_MKS_FOOT = 3.048e-1
const GSL_CONST_MKS_YARD = 9.144e-1
const GSL_CONST_MKS_MILE = 1.609344e3
const GSL_CONST_MKS_NAUTICAL_MILE = 1.852e3
const GSL_CONST_MKS_FATHOM = 1.8288e0
const GSL_CONST_MKS_MIL = 2.54e-5
const GSL_CONST_MKS_POINT = 3.52777777778e-4
const GSL_CONST_MKS_TEXPOINT = 3.51459803515e-4
const GSL_CONST_MKS_MICRON = 1e-6
const GSL_CONST_MKS_ANGSTROM = 1e-10
const GSL_CONST_MKS_HECTARE = 1e4
const GSL_CONST_MKS_ACRE = 4.04685642241e3
const GSL_CONST_MKS_BARN = 1e-28
const GSL_CONST_MKS_LITER = 1e-3
const GSL_CONST_MKS_US_GALLON = 3.78541178402e-3
const GSL_CONST_MKS_QUART = 9.46352946004e-4
const GSL_CONST_MKS_PINT = 4.73176473002e-4
const GSL_CONST_MKS_CUP = 2.36588236501e-4
const GSL_CONST_MKS_FLUID_OUNCE = 2.95735295626e-5
const GSL_CONST_MKS_TABLESPOON = 1.47867647813e-5
const GSL_CONST_MKS_TEASPOON = 4.92892159375e-6
const GSL_CONST_MKS_CANADIAN_GALLON = 4.54609e-3
const GSL_CONST_MKS_UK_GALLON = 4.546092e-3
const GSL_CONST_MKS_MILES_PER_HOUR = 4.4704e-1
const GSL_CONST_MKS_KILOMETERS_PER_HOUR = 2.77777777778e-1
const GSL_CONST_MKS_KNOT = 5.14444444444e-1
const GSL_CONST_MKS_POUND_MASS = 4.5359237e-1
const GSL_CONST_MKS_OUNCE_MASS = 2.8349523125e-2
const GSL_CONST_MKS_TON = 9.0718474e2
const GSL_CONST_MKS_METRIC_TON = 1e3
const GSL_CONST_MKS_UK_TON = 1.0160469088e3
const GSL_CONST_MKS_TROY_OUNCE = 3.1103475e-2
const GSL_CONST_MKS_CARAT = 2e-4
const GSL_CONST_MKS_UNIFIED_ATOMIC_MASS = 1.660538782e-27
const GSL_CONST_MKS_GRAM_FORCE = 9.80665e-3
const GSL_CONST_MKS_POUND_FORCE = 4.44822161526e0
const GSL_CONST_MKS_KILOPOUND_FORCE = 4.44822161526e3
const GSL_CONST_MKS_POUNDAL = 1.38255e-1
const GSL_CONST_MKS_CALORIE = 4.1868e0
const GSL_CONST_MKS_BTU = 1.05505585262e3
const GSL_CONST_MKS_THERM = 1.05506e8
const GSL_CONST_MKS_HORSEPOWER = 7.457e2
const GSL_CONST_MKS_BAR = 1e5
const GSL_CONST_MKS_STD_ATMOSPHERE = 1.01325e5
const GSL_CONST_MKS_TORR = 1.33322368421e2
const GSL_CONST_MKS_METER_OF_MERCURY = 1.33322368421e5
const GSL_CONST_MKS_INCH_OF_MERCURY = 3.38638815789e3
const GSL_CONST_MKS_INCH_OF_WATER = 2.490889e2
const GSL_CONST_MKS_PSI = 6.89475729317e3
const GSL_CONST_MKS_POISE = 1e-1
const GSL_CONST_MKS_STOKES = 1e-4
const GSL_CONST_MKS_STILB = 1e4
const GSL_CONST_MKS_LUMEN = 1e0
const GSL_CONST_MKS_LUX = 1e0
const GSL_CONST_MKS_PHOT = 1e4
const GSL_CONST_MKS_FOOTCANDLE = 1.076e1
const GSL_CONST_MKS_LAMBERT = 1e4
const GSL_CONST_MKS_FOOTLAMBERT = 1.07639104e1
const GSL_CONST_MKS_CURIE = 3.7e10
const GSL_CONST_MKS_ROENTGEN = 2.58e-4
const GSL_CONST_MKS_RAD = 1e-2
const GSL_CONST_MKS_SOLAR_MASS = 1.98892e30
const GSL_CONST_MKS_BOHR_RADIUS = 5.291772083e-11
const GSL_CONST_MKS_NEWTON = 1e0
const GSL_CONST_MKS_DYNE = 1e-5
const GSL_CONST_MKS_JOULE = 1e0
const GSL_CONST_MKS_ERG = 1e-7
const GSL_CONST_MKS_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-8
const GSL_CONST_MKS_THOMSON_CROSS_SECTION = 6.65245893699e-29
const GSL_CONST_MKS_BOHR_MAGNETON = 9.27400899e-24
const GSL_CONST_MKS_NUCLEAR_MAGNETON = 5.05078317e-27
const GSL_CONST_MKS_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-24
const GSL_CONST_MKS_PROTON_MAGNETIC_MOMENT = 1.410606633e-26
const GSL_CONST_MKS_FARADAY = 9.64853429775e4
const GSL_CONST_MKS_ELECTRON_CHARGE = 1.602176487e-19
const GSL_CONST_MKS_VACUUM_PERMITTIVITY = 8.854187817e-12
const GSL_CONST_MKS_VACUUM_PERMEABILITY = 1.25663706144e-6
const GSL_CONST_MKS_DEBYE = 3.33564095198e-30
const GSL_CONST_MKS_GAUSS = 1e-4


#### gsl_const_mksa.h #########################################################

const GSL_CONST_MKSA_SPEED_OF_LIGHT = 2.99792458e8
const GSL_CONST_MKSA_GRAVITATIONAL_CONSTANT = 6.673e-11
const GSL_CONST_MKSA_PLANCKS_CONSTANT_H = 6.62606896e-34
const GSL_CONST_MKSA_PLANCKS_CONSTANT_HBAR = 1.05457162825e-34
const GSL_CONST_MKSA_ASTRONOMICAL_UNIT = 1.49597870691e11
const GSL_CONST_MKSA_LIGHT_YEAR = 9.46053620707e15
const GSL_CONST_MKSA_PARSEC = 3.08567758135e16
const GSL_CONST_MKSA_GRAV_ACCEL = 9.80665e0
const GSL_CONST_MKSA_ELECTRON_VOLT = 1.602176487e-19
const GSL_CONST_MKSA_MASS_ELECTRON = 9.10938188e-31
const GSL_CONST_MKSA_MASS_MUON = 1.88353109e-28
const GSL_CONST_MKSA_MASS_PROTON = 1.67262158e-27
const GSL_CONST_MKSA_MASS_NEUTRON = 1.67492716e-27
const GSL_CONST_MKSA_RYDBERG = 2.17987196968e-18
const GSL_CONST_MKSA_BOLTZMANN = 1.3806504e-23
const GSL_CONST_MKSA_MOLAR_GAS = 8.314472e0
const GSL_CONST_MKSA_STANDARD_GAS_VOLUME = 2.2710981e-2
const GSL_CONST_MKSA_MINUTE = 6e1
const GSL_CONST_MKSA_HOUR = 3.6e3
const GSL_CONST_MKSA_DAY = 8.64e4
const GSL_CONST_MKSA_WEEK = 6.048e5
const GSL_CONST_MKSA_INCH = 2.54e-2
const GSL_CONST_MKSA_FOOT = 3.048e-1
const GSL_CONST_MKSA_YARD = 9.144e-1
const GSL_CONST_MKSA_MILE = 1.609344e3
const GSL_CONST_MKSA_NAUTICAL_MILE = 1.852e3
const GSL_CONST_MKSA_FATHOM = 1.8288e0
const GSL_CONST_MKSA_MIL = 2.54e-5
const GSL_CONST_MKSA_POINT = 3.52777777778e-4
const GSL_CONST_MKSA_TEXPOINT = 3.51459803515e-4
const GSL_CONST_MKSA_MICRON = 1e-6
const GSL_CONST_MKSA_ANGSTROM = 1e-10
const GSL_CONST_MKSA_HECTARE = 1e4
const GSL_CONST_MKSA_ACRE = 4.04685642241e3
const GSL_CONST_MKSA_BARN = 1e-28
const GSL_CONST_MKSA_LITER = 1e-3
const GSL_CONST_MKSA_US_GALLON = 3.78541178402e-3
const GSL_CONST_MKSA_QUART = 9.46352946004e-4
const GSL_CONST_MKSA_PINT = 4.73176473002e-4
const GSL_CONST_MKSA_CUP = 2.36588236501e-4
const GSL_CONST_MKSA_FLUID_OUNCE = 2.95735295626e-5
const GSL_CONST_MKSA_TABLESPOON = 1.47867647813e-5
const GSL_CONST_MKSA_TEASPOON = 4.92892159375e-6
const GSL_CONST_MKSA_CANADIAN_GALLON = 4.54609e-3
const GSL_CONST_MKSA_UK_GALLON = 4.546092e-3
const GSL_CONST_MKSA_MILES_PER_HOUR = 4.4704e-1
const GSL_CONST_MKSA_KILOMETERS_PER_HOUR = 2.77777777778e-1
const GSL_CONST_MKSA_KNOT = 5.14444444444e-1
const GSL_CONST_MKSA_POUND_MASS = 4.5359237e-1
const GSL_CONST_MKSA_OUNCE_MASS = 2.8349523125e-2
const GSL_CONST_MKSA_TON = 9.0718474e2
const GSL_CONST_MKSA_METRIC_TON = 1e3
const GSL_CONST_MKSA_UK_TON = 1.0160469088e3
const GSL_CONST_MKSA_TROY_OUNCE = 3.1103475e-2
const GSL_CONST_MKSA_CARAT = 2e-4
const GSL_CONST_MKSA_UNIFIED_ATOMIC_MASS = 1.660538782e-27
const GSL_CONST_MKSA_GRAM_FORCE = 9.80665e-3
const GSL_CONST_MKSA_POUND_FORCE = 4.44822161526e0
const GSL_CONST_MKSA_KILOPOUND_FORCE = 4.44822161526e3
const GSL_CONST_MKSA_POUNDAL = 1.38255e-1
const GSL_CONST_MKSA_CALORIE = 4.1868e0
const GSL_CONST_MKSA_BTU = 1.05505585262e3
const GSL_CONST_MKSA_THERM = 1.05506e8
const GSL_CONST_MKSA_HORSEPOWER = 7.457e2
const GSL_CONST_MKSA_BAR = 1e5
const GSL_CONST_MKSA_STD_ATMOSPHERE = 1.01325e5
const GSL_CONST_MKSA_TORR = 1.33322368421e2
const GSL_CONST_MKSA_METER_OF_MERCURY = 1.33322368421e5
const GSL_CONST_MKSA_INCH_OF_MERCURY = 3.38638815789e3
const GSL_CONST_MKSA_INCH_OF_WATER = 2.490889e2
const GSL_CONST_MKSA_PSI = 6.89475729317e3
const GSL_CONST_MKSA_POISE = 1e-1
const GSL_CONST_MKSA_STOKES = 1e-4
const GSL_CONST_MKSA_STILB = 1e4
const GSL_CONST_MKSA_LUMEN = 1e0
const GSL_CONST_MKSA_LUX = 1e0
const GSL_CONST_MKSA_PHOT = 1e4
const GSL_CONST_MKSA_FOOTCANDLE = 1.076e1
const GSL_CONST_MKSA_LAMBERT = 1e4
const GSL_CONST_MKSA_FOOTLAMBERT = 1.07639104e1
const GSL_CONST_MKSA_CURIE = 3.7e10
const GSL_CONST_MKSA_ROENTGEN = 2.58e-4
const GSL_CONST_MKSA_RAD = 1e-2
const GSL_CONST_MKSA_SOLAR_MASS = 1.98892e30
const GSL_CONST_MKSA_BOHR_RADIUS = 5.291772083e-11
const GSL_CONST_MKSA_NEWTON = 1e0
const GSL_CONST_MKSA_DYNE = 1e-5
const GSL_CONST_MKSA_JOULE = 1e0
const GSL_CONST_MKSA_ERG = 1e-7
const GSL_CONST_MKSA_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-8
const GSL_CONST_MKSA_THOMSON_CROSS_SECTION = 6.65245893699e-29
const GSL_CONST_MKSA_BOHR_MAGNETON = 9.27400899e-24
const GSL_CONST_MKSA_NUCLEAR_MAGNETON = 5.05078317e-27
const GSL_CONST_MKSA_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-24
const GSL_CONST_MKSA_PROTON_MAGNETIC_MOMENT = 1.410606633e-26
const GSL_CONST_MKSA_FARADAY = 9.64853429775e4
const GSL_CONST_MKSA_ELECTRON_CHARGE = 1.602176487e-19
const GSL_CONST_MKSA_VACUUM_PERMITTIVITY = 8.854187817e-12
const GSL_CONST_MKSA_VACUUM_PERMEABILITY = 1.25663706144e-6
const GSL_CONST_MKSA_DEBYE = 3.33564095198e-30
const GSL_CONST_MKSA_GAUSS = 1e-4


#### gsl_const_num.h ##########################################################

const GSL_CONST_NUM_FINE_STRUCTURE = 7.297352533e-3
const GSL_CONST_NUM_AVOGADRO = 6.02214199e23
const GSL_CONST_NUM_YOTTA = 1e24
const GSL_CONST_NUM_ZETTA = 1e21
const GSL_CONST_NUM_EXA = 1e18
const GSL_CONST_NUM_PETA = 1e15
const GSL_CONST_NUM_TERA = 1e12
const GSL_CONST_NUM_GIGA = 1e9
const GSL_CONST_NUM_MEGA = 1e6
const GSL_CONST_NUM_KILO = 1e3
const GSL_CONST_NUM_MILLI = 1e-3
const GSL_CONST_NUM_MICRO = 1e-6
const GSL_CONST_NUM_NANO = 1e-9
const GSL_CONST_NUM_PICO = 1e-12
const GSL_CONST_NUM_FEMTO = 1e-15
const GSL_CONST_NUM_ATTO = 1e-18
const GSL_CONST_NUM_ZEPTO = 1e-21
const GSL_CONST_NUM_YOCTO = 1e-24


#### gsl_deriv.h ##############################################################



#### gsl_dft_complex.h ########################################################



#### gsl_dft_complex_float.h ##################################################



#### gsl_dht.h ################################################################


mutable struct gsl_dht_struct
    size::Csize_t
    nu::Cdouble
    xmax::Cdouble
    kmax::Cdouble
    j::Ptr{Cdouble}
    Jjj::Ptr{Cdouble}
    J2::Ptr{Cdouble}
end
const gsl_dht = gsl_dht_struct


#### gsl_diff.h ###############################################################



#### gsl_errno.h ##############################################################

const GSL_SUCCESS = 0
const GSL_FAILURE = -1
const GSL_CONTINUE = -2
const GSL_EDOM = 1
const GSL_ERANGE = 2
const GSL_EFAULT = 3
const GSL_EINVAL = 4
const GSL_EFAILED = 5
const GSL_EFACTOR = 6
const GSL_ESANITY = 7
const GSL_ENOMEM = 8
const GSL_EBADFUNC = 9
const GSL_ERUNAWAY = 10
const GSL_EMAXITER = 11
const GSL_EZERODIV = 12
const GSL_EBADTOL = 13
const GSL_ETOL = 14
const GSL_EUNDRFLW = 15
const GSL_EOVRFLW = 16
const GSL_ELOSS = 17
const GSL_EROUND = 18
const GSL_EBADLEN = 19
const GSL_ENOTSQR = 20
const GSL_ESING = 21
const GSL_EDIVERGE = 22
const GSL_EUNSUP = 23
const GSL_EUNIMPL = 24
const GSL_ECACHE = 25
const GSL_ETABLE = 26
const GSL_ENOPROG = 27
const GSL_ENOPROGJ = 28
const GSL_ETOLF = 29
const GSL_ETOLX = 30
const GSL_ETOLG = 31
const GSL_EOF = 32
const gsl_error_handler_t = Ptr{Cvoid}
const gsl_stream_handler_t = Ptr{Cvoid}


#### gsl_fft.h ################################################################

const gsl_fft_forward = -1
const gsl_fft_backward = +1
const gsl_fft_direction = Cint


#### gsl_fft_complex.h ########################################################


mutable struct gsl_fft_complex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end

mutable struct gsl_fft_complex_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end


#### gsl_fft_complex_float.h ##################################################


mutable struct gsl_fft_complex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end

mutable struct gsl_fft_complex_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end


#### gsl_fft_halfcomplex.h ####################################################


mutable struct gsl_fft_halfcomplex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end


#### gsl_fft_halfcomplex_float.h ##############################################


mutable struct gsl_fft_halfcomplex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end


#### gsl_fft_real.h ###########################################################


mutable struct gsl_fft_real_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end

mutable struct gsl_fft_real_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end


#### gsl_fft_real_float.h #####################################################


mutable struct gsl_fft_real_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end

mutable struct gsl_fft_real_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end


#### gsl_filter.h #############################################################

const GSL_FILTER_END_PADZERO = GSL_MOVSTAT_END_PADZERO
const GSL_FILTER_END_PADVALUE = GSL_MOVSTAT_END_PADVALUE
const GSL_FILTER_END_TRUNCATE = GSL_MOVSTAT_END_TRUNCATE
const gsl_filter_end_t = Cint
const GSL_FILTER_SCALE_MAD = 0
const GSL_FILTER_SCALE_IQR = 1
const GSL_FILTER_SCALE_SN = 2
const GSL_FILTER_SCALE_QN = 3
const gsl_filter_scale_t = Cint

mutable struct gsl_filter_gaussian_workspace
    K::Csize_t
    kernel::Ptr{Cdouble}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

mutable struct gsl_filter_median_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

mutable struct gsl_filter_rmedian_workspace
    H::Csize_t
    K::Csize_t
    state::Ptr{Cvoid}
    window::Ptr{Cdouble}
    minmaxacc::Ptr{gsl_movstat_accum}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

mutable struct gsl_filter_impulse_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end


#### gsl_fit.h ################################################################



#### gsl_heapsort.h ###########################################################

const gsl_comparison_fn_t = Ptr{Cvoid}


#### gsl_histogram.h ##########################################################


mutable struct gsl_histogram
    n::Csize_t
    range::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end

mutable struct gsl_histogram_pdf
    n::Csize_t
    range::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


#### gsl_histogram2d.h ########################################################


mutable struct gsl_histogram2d
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end

mutable struct gsl_histogram2d_pdf
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


#### gsl_ieee_utils.h #########################################################

const GSL_IEEE_TYPE_NAN = 1
const GSL_IEEE_TYPE_INF = 2
const GSL_IEEE_TYPE_NORMAL = 3
const GSL_IEEE_TYPE_DENORMAL = 4
const GSL_IEEE_TYPE_ZERO = 5
const GSL_IEEE_SINGLE_PRECISION = 1
const GSL_IEEE_DOUBLE_PRECISION = 2
const GSL_IEEE_EXTENDED_PRECISION = 3
const GSL_IEEE_ROUND_TO_NEAREST = 1
const GSL_IEEE_ROUND_DOWN = 2
const GSL_IEEE_ROUND_UP = 3
const GSL_IEEE_ROUND_TO_ZERO = 4
const GSL_IEEE_MASK_INVALID = 1
const GSL_IEEE_MASK_DENORMALIZED = 2
const GSL_IEEE_MASK_DIVISION_BY_ZERO = 4
const GSL_IEEE_MASK_OVERFLOW = 8
const GSL_IEEE_MASK_UNDERFLOW = 16
const GSL_IEEE_MASK_ALL = 31
const GSL_IEEE_TRAP_INEXACT = 32

mutable struct gsl_ieee_float_rep
    sign::Cint
    mantissa::NTuple{24, Cchar}
    exponent::Cint
    type::Cint
end

mutable struct gsl_ieee_double_rep
    sign::Cint
    mantissa::NTuple{53, Cchar}
    exponent::Cint
    type::Cint
end


#### gsl_inline.h #############################################################



#### gsl_integration.h ########################################################

const GSL_INTEG_COSINE = 0
const GSL_INTEG_SINE = 1
const GSL_INTEG_GAUSS15 = 1
const GSL_INTEG_GAUSS21 = 2
const GSL_INTEG_GAUSS31 = 3
const GSL_INTEG_GAUSS41 = 4
const GSL_INTEG_GAUSS51 = 5
const GSL_INTEG_GAUSS61 = 6
const gsl_integration_rule = Ptr{Cvoid}

mutable struct gsl_integration_workspace
    limit::Csize_t
    size::Csize_t
    nrmax::Csize_t
    i::Csize_t
    maximum_level::Csize_t
    alist::Ptr{Cdouble}
    blist::Ptr{Cdouble}
    rlist::Ptr{Cdouble}
    elist::Ptr{Cdouble}
    order::Ptr{Csize_t}
    level::Ptr{Csize_t}
end

mutable struct gsl_integration_qaws_table
    alpha::Cdouble
    beta::Cdouble
    mu::Cint
    nu::Cint
    ri::NTuple{25, Cdouble}
    rj::NTuple{25, Cdouble}
    rg::NTuple{25, Cdouble}
    rh::NTuple{25, Cdouble}
end

mutable struct gsl_integration_qawo_table
    n::Csize_t
    omega::Cdouble
    L::Cdouble
    par::Cdouble
    sine::Cint
    chebmo::Ptr{Cdouble}
end

mutable struct gsl_integration_glfixed_table
    n::Csize_t
    x::Ptr{Cdouble}
    w::Ptr{Cdouble}
    precomputed::Cint
end

mutable struct gsl_integration_cquad_ival
    a::Cdouble
    b::Cdouble
    c::NTuple{64, Cdouble}
    fx::NTuple{33, Cdouble}
    igral::Cdouble
    err::Cdouble
    depth::Cint
    rdepth::Cint
    ndiv::Cint
end

mutable struct gsl_integration_cquad_workspace
    size::Csize_t
    ivals::Ptr{gsl_integration_cquad_ival}
    heap::Ptr{Csize_t}
end

mutable struct gsl_integration_romberg_workspace
    n::Csize_t
    work1::Ptr{Cdouble}
    work2::Ptr{Cdouble}
end

mutable struct gsl_integration_fixed_params
    alpha::Cdouble
    beta::Cdouble
    a::Cdouble
    b::Cdouble
    zemu::Cdouble
    shft::Cdouble
    slp::Cdouble
    al::Cdouble
    be::Cdouble
end

mutable struct gsl_integration_fixed_type
    check::Ptr{Cvoid}
    init::Ptr{Cvoid}
end

mutable struct gsl_integration_fixed_workspace
    n::Csize_t
    weights::Ptr{Cdouble}
    x::Ptr{Cdouble}
    diag::Ptr{Cdouble}
    subdiag::Ptr{Cdouble}
    type::Ptr{gsl_integration_fixed_type}
end


#### gsl_interp.h #############################################################


mutable struct gsl_interp_accel
    cache::Csize_t
    miss_count::Csize_t
    hit_count::Csize_t
end

mutable struct gsl_interp_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv::Ptr{Cvoid}
    eval_deriv2::Ptr{Cvoid}
    eval_integ::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_interp
    type::Ptr{gsl_interp_type}
    xmin::Cdouble
    xmax::Cdouble
    size::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_interp2d.h ###########################################################


mutable struct gsl_interp2d_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv_x::Ptr{Cvoid}
    eval_deriv_y::Ptr{Cvoid}
    eval_deriv_xx::Ptr{Cvoid}
    eval_deriv_xy::Ptr{Cvoid}
    eval_deriv_yy::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_interp2d
    type::Ptr{gsl_interp2d_type}
    xmin::Cdouble
    xmax::Cdouble
    ymin::Cdouble
    ymax::Cdouble
    xsize::Csize_t
    ysize::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_linalg.h #############################################################

const GSL_LINALG_MOD_NONE = 0
const GSL_LINALG_MOD_TRANSPOSE = 1
const GSL_LINALG_MOD_CONJUGATE = 2
const gsl_linalg_matrix_mod_t = Cint


#### gsl_machine.h ############################################################

const GSL_DBL_EPSILON = 2.2204460492503131e-16
const GSL_SQRT_DBL_EPSILON = 1.4901161193847656e-08
const GSL_ROOT3_DBL_EPSILON = 6.0554544523933429e-06
const GSL_ROOT4_DBL_EPSILON = 1.2207031250000000e-04
const GSL_ROOT5_DBL_EPSILON = 7.4009597974140505e-04
const GSL_ROOT6_DBL_EPSILON = 2.4607833005759251e-03
const GSL_DBL_MIN = 2.2250738585072014e-308
const GSL_SQRT_DBL_MIN = 1.4916681462400413e-154
const GSL_ROOT3_DBL_MIN = 2.8126442852362996e-103
const GSL_ROOT4_DBL_MIN = 1.2213386697554620e-77
const GSL_ROOT5_DBL_MIN = 2.9476022969691763e-62
const GSL_ROOT6_DBL_MIN = 5.3034368905798218e-52
const GSL_DBL_MAX = 1.7976931348623157e+308
const GSL_SQRT_DBL_MAX = 1.3407807929942596e+154
const GSL_ROOT3_DBL_MAX = 5.6438030941222897e+102
const GSL_ROOT4_DBL_MAX = 1.1579208923731620e+77
const GSL_ROOT5_DBL_MAX = 4.4765466227572707e+61
const GSL_ROOT6_DBL_MAX = 2.3756689782295612e+51
const GSL_LOG_DBL_MAX = 7.0978271289338397e+02
const GSL_FLT_EPSILON = 1.1920928955078125e-07
const GSL_SQRT_FLT_EPSILON = 3.4526698300124393e-04
const GSL_ROOT3_FLT_EPSILON = 4.9215666011518501e-03
const GSL_ROOT4_FLT_EPSILON = 1.8581361171917516e-02
const GSL_ROOT5_FLT_EPSILON = 4.1234622211652937e-02
const GSL_ROOT6_FLT_EPSILON = 7.0153878019335827e-02
const GSL_FLT_MIN = 1.1754943508222875e-38
const GSL_SQRT_FLT_MIN = 1.0842021724855044e-19
const GSL_ROOT3_FLT_MIN = 2.2737367544323241e-13
const GSL_ROOT4_FLT_MIN = 3.2927225399135965e-10
const GSL_ROOT5_FLT_MIN = 2.5944428542140822e-08
const GSL_ROOT6_FLT_MIN = 4.7683715820312542e-07
const GSL_FLT_MAX = 3.4028234663852886e+38
const GSL_SQRT_FLT_MAX = 1.8446743523953730e+19
const GSL_ROOT3_FLT_MAX = 6.9814635196223242e+12
const GSL_ROOT4_FLT_MAX = 4.2949672319999986e+09
const GSL_ROOT5_FLT_MAX = 5.0859007855960041e+07
const GSL_ROOT6_FLT_MAX = 2.6422459233807749e+06
const GSL_LOG_FLT_MAX = 8.8722839052068352e+01
const GSL_SFLT_EPSILON = 4.8828125000000000e-04
const GSL_SQRT_SFLT_EPSILON = 2.2097086912079612e-02
const GSL_ROOT3_SFLT_EPSILON = 7.8745065618429588e-02
const GSL_ROOT4_SFLT_EPSILON = 1.4865088937534013e-01
const GSL_ROOT5_SFLT_EPSILON = 2.1763764082403100e-01
const GSL_ROOT6_SFLT_EPSILON = 2.8061551207734325e-01
const GSL_SQRT_MACH_EPS = 3.2e-08
const GSL_ROOT3_MACH_EPS = 1.0e-05
const GSL_ROOT4_MACH_EPS = 0.000178
const GSL_ROOT5_MACH_EPS = 0.00100
const GSL_ROOT6_MACH_EPS = 0.00316


#### gsl_matrix.h #############################################################



#### gsl_matrix_char.h ########################################################


mutable struct gsl_matrix_char
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end

mutable struct _gsl_matrix_char_view
    matrix::gsl_matrix_char
end
const gsl_matrix_char_view = _gsl_matrix_char_view

mutable struct _gsl_matrix_char_const_view
    matrix::gsl_matrix_char
end
const gsl_matrix_char_const_view = _gsl_matrix_char_const_view


#### gsl_matrix_complex_float.h ###############################################


mutable struct gsl_matrix_complex_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end

mutable struct _gsl_matrix_complex_float_view
    matrix::gsl_matrix_complex_float
end
const gsl_matrix_complex_float_view = _gsl_matrix_complex_float_view

mutable struct _gsl_matrix_complex_float_const_view
    matrix::gsl_matrix_complex_float
end
const gsl_matrix_complex_float_const_view = _gsl_matrix_complex_float_const_view


#### gsl_matrix_complex_long_double.h #########################################


mutable struct gsl_matrix_complex_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end

mutable struct _gsl_matrix_complex_long_double_view
    matrix::gsl_matrix_complex_long_double
end
const gsl_matrix_complex_long_double_view = _gsl_matrix_complex_long_double_view

mutable struct _gsl_matrix_complex_long_double_const_view
    matrix::gsl_matrix_complex_long_double
end
const gsl_matrix_complex_long_double_const_view = _gsl_matrix_complex_long_double_const_view


#### gsl_matrix_float.h #######################################################


mutable struct gsl_matrix_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end

mutable struct _gsl_matrix_float_view
    matrix::gsl_matrix_float
end
const gsl_matrix_float_view = _gsl_matrix_float_view

mutable struct _gsl_matrix_float_const_view
    matrix::gsl_matrix_float
end
const gsl_matrix_float_const_view = _gsl_matrix_float_const_view


#### gsl_matrix_int.h #########################################################


mutable struct gsl_matrix_int
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end

mutable struct _gsl_matrix_int_view
    matrix::gsl_matrix_int
end
const gsl_matrix_int_view = _gsl_matrix_int_view

mutable struct _gsl_matrix_int_const_view
    matrix::gsl_matrix_int
end
const gsl_matrix_int_const_view = _gsl_matrix_int_const_view


#### gsl_matrix_long.h ########################################################


mutable struct gsl_matrix_long
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end

mutable struct _gsl_matrix_long_view
    matrix::gsl_matrix_long
end
const gsl_matrix_long_view = _gsl_matrix_long_view

mutable struct _gsl_matrix_long_const_view
    matrix::gsl_matrix_long
end
const gsl_matrix_long_const_view = _gsl_matrix_long_const_view


#### gsl_matrix_long_double.h #################################################


mutable struct gsl_matrix_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end

mutable struct _gsl_matrix_long_double_view
    matrix::gsl_matrix_long_double
end
const gsl_matrix_long_double_view = _gsl_matrix_long_double_view

mutable struct _gsl_matrix_long_double_const_view
    matrix::gsl_matrix_long_double
end
const gsl_matrix_long_double_const_view = _gsl_matrix_long_double_const_view


#### gsl_matrix_short.h #######################################################


mutable struct gsl_matrix_short
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end

mutable struct _gsl_matrix_short_view
    matrix::gsl_matrix_short
end
const gsl_matrix_short_view = _gsl_matrix_short_view

mutable struct _gsl_matrix_short_const_view
    matrix::gsl_matrix_short
end
const gsl_matrix_short_const_view = _gsl_matrix_short_const_view


#### gsl_matrix_uchar.h #######################################################


mutable struct gsl_matrix_uchar
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end

mutable struct _gsl_matrix_uchar_view
    matrix::gsl_matrix_uchar
end
const gsl_matrix_uchar_view = _gsl_matrix_uchar_view

mutable struct _gsl_matrix_uchar_const_view
    matrix::gsl_matrix_uchar
end
const gsl_matrix_uchar_const_view = _gsl_matrix_uchar_const_view


#### gsl_matrix_uint.h ########################################################


mutable struct gsl_matrix_uint
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end

mutable struct _gsl_matrix_uint_view
    matrix::gsl_matrix_uint
end
const gsl_matrix_uint_view = _gsl_matrix_uint_view

mutable struct _gsl_matrix_uint_const_view
    matrix::gsl_matrix_uint
end
const gsl_matrix_uint_const_view = _gsl_matrix_uint_const_view


#### gsl_matrix_ulong.h #######################################################


mutable struct gsl_matrix_ulong
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end

mutable struct _gsl_matrix_ulong_view
    matrix::gsl_matrix_ulong
end
const gsl_matrix_ulong_view = _gsl_matrix_ulong_view

mutable struct _gsl_matrix_ulong_const_view
    matrix::gsl_matrix_ulong
end
const gsl_matrix_ulong_const_view = _gsl_matrix_ulong_const_view


#### gsl_matrix_ushort.h ######################################################


mutable struct gsl_matrix_ushort
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end

mutable struct _gsl_matrix_ushort_view
    matrix::gsl_matrix_ushort
end
const gsl_matrix_ushort_view = _gsl_matrix_ushort_view

mutable struct _gsl_matrix_ushort_const_view
    matrix::gsl_matrix_ushort
end
const gsl_matrix_ushort_const_view = _gsl_matrix_ushort_const_view


#### gsl_message.h ############################################################

const GSL_MESSAGE_MASK = 0


#### gsl_min.h ################################################################

const gsl_min_bracketing_function = Ptr{Cvoid}

mutable struct gsl_min_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

mutable struct gsl_min_fminimizer
    type::Ptr{gsl_min_fminimizer_type}
    function_::Ptr{gsl_function}
    x_minimum::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    f_minimum::Cdouble
    f_lower::Cdouble
    f_upper::Cdouble
    state::Ptr{Cvoid}
end


#### gsl_minmax.h #############################################################



#### gsl_monte.h ##############################################################


mutable struct gsl_monte_function_struct
    f::Ptr{Cvoid}
    dim::Csize_t
    params::Ptr{Cvoid}
end
const gsl_monte_function = gsl_monte_function_struct


#### gsl_monte_miser.h ########################################################


mutable struct gsl_monte_miser_state
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    dither::Cdouble
    estimate_frac::Cdouble
    alpha::Cdouble
    dim::Csize_t
    estimate_style::Cint
    depth::Cint
    verbose::Cint
    x::Ptr{Cdouble}
    xmid::Ptr{Cdouble}
    sigma_l::Ptr{Cdouble}
    sigma_r::Ptr{Cdouble}
    fmax_l::Ptr{Cdouble}
    fmax_r::Ptr{Cdouble}
    fmin_l::Ptr{Cdouble}
    fmin_r::Ptr{Cdouble}
    fsum_l::Ptr{Cdouble}
    fsum_r::Ptr{Cdouble}
    fsum2_l::Ptr{Cdouble}
    fsum2_r::Ptr{Cdouble}
    hits_l::Ptr{Csize_t}
    hits_r::Ptr{Csize_t}
end

mutable struct gsl_monte_miser_params
    estimate_frac::Cdouble
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    alpha::Cdouble
    dither::Cdouble
end


#### gsl_monte_plain.h ########################################################


mutable struct gsl_monte_plain_state
    dim::Csize_t
    x::Ptr{Cdouble}
end


#### gsl_monte_vegas.h ########################################################

const GSL_VEGAS_MODE_IMPORTANCE = 1
const GSL_VEGAS_MODE_IMPORTANCE_ONLY = 0
const GSL_VEGAS_MODE_STRATIFIED = -1

mutable struct gsl_monte_vegas_state
    dim::Csize_t
    bins_max::Csize_t
    bins::Cuint
    boxes::Cuint
    xi::Ptr{Cdouble}
    xin::Ptr{Cdouble}
    delx::Ptr{Cdouble}
    weight::Ptr{Cdouble}
    vol::Cdouble
    x::Ptr{Cdouble}
    bin::Ptr{Cint}
    box::Ptr{Cint}
    d::Ptr{Cdouble}
    alpha::Cdouble
    mode::Cint
    verbose::Cint
    iterations::Cuint
    stage::Cint
    jac::Cdouble
    wtd_int_sum::Cdouble
    sum_wgts::Cdouble
    chi_sum::Cdouble
    chisq::Cdouble
    result::Cdouble
    sigma::Cdouble
    it_start::Cuint
    it_num::Cuint
    samples::Cuint
    calls_per_box::Cuint
    ostream::Ptr{Cvoid}
end

mutable struct gsl_monte_vegas_params
    alpha::Cdouble
    iterations::Csize_t
    stage::Cint
    mode::Cint
    verbose::Cint
    ostream::Ptr{Cvoid}
end


#### gsl_multifit.h ###########################################################


mutable struct gsl_multifit_linear_workspace
    nmax::Csize_t
    pmax::Csize_t
    n::Csize_t
    p::Csize_t
    A::Ptr{gsl_matrix}
    Q::Ptr{gsl_matrix}
    QSI::Ptr{gsl_matrix}
    S::Ptr{gsl_vector}
    t::Ptr{gsl_vector}
    xt::Ptr{gsl_vector}
    D::Ptr{gsl_vector}
    rcond::Cdouble
end

mutable struct gsl_multifit_robust_type
    name::Ptr{Cchar}
    wfun::Ptr{Cvoid}
    psi_deriv::Ptr{Cvoid}
    tuning_default::Cdouble
end

mutable struct gsl_multifit_robust_stats
    sigma_ols::Cdouble
    sigma_mad::Cdouble
    sigma_rob::Cdouble
    sigma::Cdouble
    Rsq::Cdouble
    adj_Rsq::Cdouble
    rmse::Cdouble
    sse::Cdouble
    dof::Csize_t
    numit::Csize_t
    weights::Ptr{gsl_vector}
    r::Ptr{gsl_vector}
end

mutable struct gsl_multifit_robust_workspace
    n::Csize_t
    p::Csize_t
    numit::Csize_t
    maxiter::Csize_t
    type::Ptr{gsl_multifit_robust_type}
    tune::Cdouble
    r::Ptr{gsl_vector}
    weights::Ptr{gsl_vector}
    c_prev::Ptr{gsl_vector}
    resfac::Ptr{gsl_vector}
    psi::Ptr{gsl_vector}
    dpsi::Ptr{gsl_vector}
    QSI::Ptr{gsl_matrix}
    D::Ptr{gsl_vector}
    workn::Ptr{gsl_vector}
    stats::gsl_multifit_robust_stats
    multifit_p::Ptr{gsl_multifit_linear_workspace}
end


#### gsl_multifit_nlin.h ######################################################


mutable struct gsl_multifit_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multifit_function = gsl_multifit_function_struct

mutable struct gsl_multifit_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multifit_fsolver
    type::Ptr{gsl_multifit_fsolver_type}
    function_::Ptr{gsl_multifit_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end

mutable struct gsl_multifit_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
end
const gsl_multifit_function_fdf = gsl_multifit_function_fdf_struct

mutable struct gsl_multifit_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    gradient::Ptr{Cvoid}
    jac::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multifit_fdfsolver
    type::Ptr{gsl_multifit_fdfsolver_type}
    fdf::Ptr{gsl_multifit_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    state::Ptr{Cvoid}
end

mutable struct gsl_multifit_fdfridge
    n::Csize_t
    p::Csize_t
    lambda::Cdouble
    L_diag::Ptr{gsl_vector}
    L::Ptr{gsl_matrix}
    f::Ptr{gsl_vector}
    wts::Ptr{gsl_vector}
    s::Ptr{gsl_multifit_fdfsolver}
    fdf::Ptr{gsl_multifit_function_fdf}
    fdftik::gsl_multifit_function_fdf
end


#### gsl_multifit_nlinear.h ###################################################

const GSL_MULTIFIT_NLINEAR_FWDIFF = 0
const GSL_MULTIFIT_NLINEAR_CTRDIFF = 1
const gsl_multifit_nlinear_fdtype = Cint

mutable struct gsl_multifit_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
    nevalfvv::Csize_t
end

mutable struct gsl_multifit_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multifit_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end

mutable struct gsl_multifit_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multifit_nlinear_parameters
    trs::Ptr{gsl_multifit_nlinear_trs}
    scale::Ptr{gsl_multifit_nlinear_scale}
    solver::Ptr{gsl_multifit_nlinear_solver}
    fdtype::gsl_multifit_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
end

mutable struct gsl_multifit_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multifit_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multifit_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    avratio::Ptr{Cdouble}
end

mutable struct gsl_multifit_nlinear_workspace
    type::Ptr{gsl_multifit_nlinear_type}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    params::gsl_multifit_nlinear_parameters
    state::Ptr{Cvoid}
end


#### gsl_multilarge.h #########################################################


mutable struct gsl_multilarge_linear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    accumulate::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    lcurve::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multilarge_linear_workspace
    type::Ptr{gsl_multilarge_linear_type}
    state::Ptr{Cvoid}
    p::Csize_t
end


#### gsl_multilarge_nlinear.h #################################################

const GSL_MULTILARGE_NLINEAR_FWDIFF = 0
const GSL_MULTILARGE_NLINEAR_CTRDIFF = 1
const gsl_multilarge_nlinear_fdtype = Cint

mutable struct gsl_multilarge_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldfu::Csize_t
    nevaldf2::Csize_t
    nevalfvv::Csize_t
end

mutable struct gsl_multilarge_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multilarge_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end

mutable struct gsl_multilarge_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multilarge_nlinear_parameters
    trs::Ptr{gsl_multilarge_nlinear_trs}
    scale::Ptr{gsl_multilarge_nlinear_scale}
    solver::Ptr{gsl_multilarge_nlinear_solver}
    fdtype::gsl_multilarge_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
    max_iter::Csize_t
    tol::Cdouble
end

mutable struct gsl_multilarge_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multilarge_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multilarge_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    avratio::Ptr{Cdouble}
end

mutable struct gsl_multilarge_nlinear_workspace
    type::Ptr{gsl_multilarge_nlinear_type}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    n::Csize_t
    p::Csize_t
    niter::Csize_t
    params::gsl_multilarge_nlinear_parameters
    state::Ptr{Cvoid}
end


#### gsl_multimin.h ###########################################################


mutable struct gsl_multimin_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multimin_function = gsl_multimin_function_struct

mutable struct gsl_multimin_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multimin_function_fdf = gsl_multimin_function_fdf_struct

mutable struct gsl_multimin_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multimin_fminimizer
    type::Ptr{gsl_multimin_fminimizer_type}
    f::Ptr{gsl_multimin_function}
    fval::Cdouble
    x::Ptr{gsl_vector}
    size::Cdouble
    state::Ptr{Cvoid}
end

mutable struct gsl_multimin_fdfminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    restart::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multimin_fdfminimizer
    type::Ptr{gsl_multimin_fdfminimizer_type}
    fdf::Ptr{gsl_multimin_function_fdf}
    f::Cdouble
    x::Ptr{gsl_vector}
    gradient::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end


#### gsl_multiroots.h #########################################################


mutable struct gsl_multiroot_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multiroot_function = gsl_multiroot_function_struct

mutable struct gsl_multiroot_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multiroot_fsolver
    type::Ptr{gsl_multiroot_fsolver_type}
    function_::Ptr{gsl_multiroot_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end

mutable struct gsl_multiroot_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multiroot_function_fdf = gsl_multiroot_function_fdf_struct

mutable struct gsl_multiroot_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_multiroot_fdfsolver
    type::Ptr{gsl_multiroot_fdfsolver_type}
    fdf::Ptr{gsl_multiroot_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end


#### gsl_multiset.h ###########################################################


mutable struct gsl_multiset_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
const gsl_multiset = gsl_multiset_struct


#### gsl_nan.h ################################################################



#### gsl_ntuple.h #############################################################


mutable struct gsl_ntuple
    file::Ptr{Cvoid}
    ntuple_data::Ptr{Cvoid}
    size::Csize_t
end

mutable struct gsl_ntuple_select_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

mutable struct gsl_ntuple_value_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end


#### gsl_odeiv.h ##############################################################

const GSL_ODEIV_HADJ_INC = 1
const GSL_ODEIV_HADJ_NIL = 0

mutable struct gsl_odeiv_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end

mutable struct gsl_odeiv_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_odeiv_step
    type::Ptr{gsl_odeiv_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end

mutable struct gsl_odeiv_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_odeiv_control
    type::Ptr{gsl_odeiv_control_type}
    state::Ptr{Cvoid}
end

mutable struct gsl_odeiv_evolve
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
end


#### gsl_odeiv2.h #############################################################

const GSL_ODEIV_HADJ_INC = 1
const GSL_ODEIV_HADJ_NIL = 0

mutable struct gsl_odeiv2_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end

mutable struct gsl_odeiv2_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_odeiv2_step_struct
    type::Ptr{gsl_odeiv2_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end
const gsl_odeiv2_step = gsl_odeiv2_step_struct

mutable struct gsl_odeiv2_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    errlevel::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

mutable struct gsl_odeiv2_control_struct
    type::Ptr{gsl_odeiv2_control_type}
    state::Ptr{Cvoid}
end
const gsl_odeiv2_control = gsl_odeiv2_control_struct

mutable struct gsl_odeiv2_evolve_struct
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
    driver::Ptr{Cvoid}
end
const gsl_odeiv2_evolve = gsl_odeiv2_evolve_struct

mutable struct gsl_odeiv2_driver_struct
    sys::Ptr{gsl_odeiv2_system}
    s::Ptr{gsl_odeiv2_step}
    c::Ptr{gsl_odeiv2_control}
    e::Ptr{gsl_odeiv2_evolve}
    h::Cdouble
    hmin::Cdouble
    hmax::Cdouble
    n::Culong
    nmax::Culong
end
const gsl_odeiv2_driver = gsl_odeiv2_driver_struct


#### gsl_permutation.h ########################################################


mutable struct gsl_permutation_struct
    size::Csize_t
    data::Ptr{Csize_t}
end
const gsl_permutation = gsl_permutation_struct


#### gsl_permute.h ############################################################



#### gsl_permute_char.h #######################################################



#### gsl_permute_complex_double.h #############################################



#### gsl_permute_complex_float.h ##############################################



#### gsl_permute_complex_long_double.h ########################################



#### gsl_permute_double.h #####################################################



#### gsl_permute_float.h ######################################################



#### gsl_permute_int.h ########################################################



#### gsl_permute_long.h #######################################################



#### gsl_permute_long_double.h ################################################



#### gsl_permute_matrix.h #####################################################



#### gsl_permute_matrix_char.h ################################################



#### gsl_permute_matrix_complex_double.h ######################################



#### gsl_permute_matrix_complex_float.h #######################################



#### gsl_permute_matrix_complex_long_double.h #################################



#### gsl_permute_matrix_double.h ##############################################



#### gsl_permute_matrix_float.h ###############################################



#### gsl_permute_matrix_int.h #################################################



#### gsl_permute_matrix_long.h ################################################



#### gsl_permute_matrix_long_double.h #########################################



#### gsl_permute_matrix_short.h ###############################################



#### gsl_permute_matrix_uchar.h ###############################################



#### gsl_permute_matrix_uint.h ################################################



#### gsl_permute_matrix_ulong.h ###############################################



#### gsl_permute_matrix_ushort.h ##############################################



#### gsl_permute_short.h ######################################################



#### gsl_permute_uchar.h ######################################################



#### gsl_permute_uint.h #######################################################



#### gsl_permute_ulong.h ######################################################



#### gsl_permute_ushort.h #####################################################



#### gsl_permute_vector.h #####################################################



#### gsl_permute_vector_char.h ################################################



#### gsl_permute_vector_complex_double.h ######################################



#### gsl_permute_vector_complex_float.h #######################################



#### gsl_permute_vector_complex_long_double.h #################################



#### gsl_permute_vector_double.h ##############################################



#### gsl_permute_vector_float.h ###############################################



#### gsl_permute_vector_int.h #################################################



#### gsl_permute_vector_long.h ################################################



#### gsl_permute_vector_long_double.h #########################################



#### gsl_permute_vector_short.h ###############################################



#### gsl_permute_vector_uchar.h ###############################################



#### gsl_permute_vector_uint.h ################################################



#### gsl_permute_vector_ulong.h ###############################################



#### gsl_permute_vector_ushort.h ##############################################



#### gsl_poly.h ###############################################################


mutable struct gsl_poly_complex_workspace
    nc::Csize_t
    matrix::Ptr{Cdouble}
end


#### gsl_pow_int.h ############################################################



#### gsl_precision.h ##########################################################

const _GSL_PREC_T_NUM = 3
const gsl_prec_t = Cuint


#### gsl_qrng.h ###############################################################


mutable struct gsl_qrng_type
    name::Ptr{Cchar}
    max_dimension::Cuint
    state_size::Ptr{Cvoid}
    init_state::Ptr{Cvoid}
    get::Ptr{Cvoid}
end

mutable struct gsl_qrng
    type::Ptr{gsl_qrng_type}
    dimension::Cuint
    state_size::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_randist.h ############################################################


mutable struct gsl_ran_discrete_t
    K::Csize_t
    A::Ptr{Csize_t}
    F::Ptr{Cdouble}
end


#### gsl_rng.h ################################################################


mutable struct gsl_rng_type
    name::Ptr{Cchar}
    max::Culong
    min::Culong
    size::Csize_t
    set::Ptr{Cvoid}
    get::Ptr{Cvoid}
    get_double::Ptr{Cvoid}
end

mutable struct gsl_rng
    type::Ptr{gsl_rng_type}
    state::Ptr{Cvoid}
end


#### gsl_roots.h ##############################################################


mutable struct gsl_root_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

mutable struct gsl_root_fsolver
    type::Ptr{gsl_root_fsolver_type}
    function_::Ptr{gsl_function}
    root::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    state::Ptr{Cvoid}
end

mutable struct gsl_root_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

mutable struct gsl_root_fdfsolver
    type::Ptr{gsl_root_fdfsolver_type}
    fdf::Ptr{gsl_function_fdf}
    root::Cdouble
    state::Ptr{Cvoid}
end


#### gsl_rstat.h ##############################################################


mutable struct gsl_rstat_quantile_workspace
    p::Cdouble
    q::NTuple{5, Cdouble}
    npos::NTuple{5, Cint}
    np::NTuple{5, Cdouble}
    dnp::NTuple{5, Cdouble}
    n::Csize_t
end

mutable struct gsl_rstat_workspace
    min::Cdouble
    max::Cdouble
    mean::Cdouble
    M2::Cdouble
    M3::Cdouble
    M4::Cdouble
    n::Csize_t
    median_workspace_p::Ptr{gsl_rstat_quantile_workspace}
end


#### gsl_sf.h #################################################################



#### gsl_sf_airy.h ############################################################



#### gsl_sf_bessel.h ##########################################################



#### gsl_sf_clausen.h #########################################################



#### gsl_sf_coulomb.h #########################################################



#### gsl_sf_coupling.h ########################################################



#### gsl_sf_dawson.h ##########################################################



#### gsl_sf_debye.h ###########################################################



#### gsl_sf_dilog.h ###########################################################



#### gsl_sf_elementary.h ######################################################



#### gsl_sf_ellint.h ##########################################################



#### gsl_sf_elljac.h ##########################################################



#### gsl_sf_erf.h #############################################################



#### gsl_sf_exp.h #############################################################



#### gsl_sf_expint.h ##########################################################



#### gsl_sf_fermi_dirac.h #####################################################



#### gsl_sf_gamma.h ###########################################################

const GSL_SF_GAMMA_XMAX = 171.0
const GSL_SF_FACT_NMAX = 170
const GSL_SF_DOUBLEFACT_NMAX = 297


#### gsl_sf_gegenbauer.h ######################################################



#### gsl_sf_hermite.h #########################################################



#### gsl_sf_hyperg.h ##########################################################



#### gsl_sf_laguerre.h ########################################################



#### gsl_sf_lambert.h #########################################################



#### gsl_sf_legendre.h ########################################################

const GSL_SF_LEGENDRE_SCHMIDT = 0
const GSL_SF_LEGENDRE_SPHARM = 1
const GSL_SF_LEGENDRE_FULL = 2
const GSL_SF_LEGENDRE_NONE = 3
const gsl_sf_legendre_t = Cint


#### gsl_sf_log.h #############################################################



#### gsl_sf_mathieu.h #########################################################

const GSL_SF_MATHIEU_COEFF = 100

mutable struct gsl_sf_mathieu_workspace
    size::Csize_t
    even_order::Csize_t
    odd_order::Csize_t
    extra_values::Cint
    qa::Cdouble
    qb::Cdouble
    aa::Ptr{Cdouble}
    bb::Ptr{Cdouble}
    dd::Ptr{Cdouble}
    ee::Ptr{Cdouble}
    tt::Ptr{Cdouble}
    e2::Ptr{Cdouble}
    zz::Ptr{Cdouble}
    eval::Ptr{gsl_vector}
    evec::Ptr{gsl_matrix}
    wmat::Ptr{gsl_eigen_symmv_workspace}
end


#### gsl_sf_pow_int.h #########################################################



#### gsl_sf_psi.h #############################################################



#### gsl_sf_result.h ##########################################################


mutable struct gsl_sf_result_struct
    val::Cdouble
    err::Cdouble
end
const gsl_sf_result = gsl_sf_result_struct

mutable struct gsl_sf_result_e10_struct
    val::Cdouble
    err::Cdouble
    e10::Cint
end
const gsl_sf_result_e10 = gsl_sf_result_e10_struct


#### gsl_sf_sincos_pi.h #######################################################



#### gsl_sf_synchrotron.h #####################################################



#### gsl_sf_transport.h #######################################################



#### gsl_sf_trig.h ############################################################



#### gsl_sf_zeta.h ############################################################



#### gsl_siman.h ##############################################################

const gsl_siman_Efunc_t = Ptr{Cvoid}
const gsl_siman_step_t = Ptr{Cvoid}
const gsl_siman_metric_t = Ptr{Cvoid}
const gsl_siman_print_t = Ptr{Cvoid}
const gsl_siman_copy_t = Ptr{Cvoid}
const gsl_siman_copy_construct_t = Ptr{Cvoid}
const gsl_siman_destroy_t = Ptr{Cvoid}

mutable struct gsl_siman_params_t
    n_tries::Cint
    iters_fixed_T::Cint
    step_size::Cdouble
    k::Cdouble
    t_initial::Cdouble
    mu_t::Cdouble
    t_min::Cdouble
end


#### gsl_sort.h ###############################################################



#### gsl_sort_char.h ##########################################################



#### gsl_sort_double.h ########################################################



#### gsl_sort_float.h #########################################################



#### gsl_sort_int.h ###########################################################



#### gsl_sort_long.h ##########################################################



#### gsl_sort_long_double.h ###################################################



#### gsl_sort_short.h #########################################################



#### gsl_sort_uchar.h #########################################################



#### gsl_sort_uint.h ##########################################################



#### gsl_sort_ulong.h #########################################################



#### gsl_sort_ushort.h ########################################################



#### gsl_sort_vector.h ########################################################



#### gsl_sort_vector_char.h ###################################################



#### gsl_sort_vector_double.h #################################################



#### gsl_sort_vector_float.h ##################################################



#### gsl_sort_vector_int.h ####################################################



#### gsl_sort_vector_long.h ###################################################



#### gsl_sort_vector_long_double.h ############################################



#### gsl_sort_vector_short.h ##################################################



#### gsl_sort_vector_uchar.h ##################################################



#### gsl_sort_vector_uint.h ###################################################



#### gsl_sort_vector_ulong.h ##################################################



#### gsl_sort_vector_ushort.h #################################################



#### gsl_specfunc.h ###########################################################



#### gsl_spline.h #############################################################


mutable struct gsl_spline
    interp::Ptr{gsl_interp}
    x::Ptr{Cdouble}
    y::Ptr{Cdouble}
    size::Csize_t
end


#### gsl_spline2d.h ###########################################################


mutable struct gsl_spline2d
    interp_object::gsl_interp2d
    xarr::Ptr{Cdouble}
    yarr::Ptr{Cdouble}
    zarr::Ptr{Cdouble}
end


#### gsl_statistics.h #########################################################



#### gsl_statistics_char.h ####################################################



#### gsl_statistics_double.h ##################################################



#### gsl_statistics_float.h ###################################################



#### gsl_statistics_int.h #####################################################



#### gsl_statistics_long.h ####################################################



#### gsl_statistics_long_double.h #############################################



#### gsl_statistics_short.h ###################################################



#### gsl_statistics_uchar.h ###################################################



#### gsl_statistics_uint.h ####################################################



#### gsl_statistics_ulong.h ###################################################



#### gsl_statistics_ushort.h ##################################################



#### gsl_sum.h ################################################################


mutable struct gsl_sum_levin_u_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dq_num::Ptr{Cdouble}
    dq_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end

mutable struct gsl_sum_levin_utrunc_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end


#### gsl_sys.h ################################################################



#### gsl_test.h ###############################################################



#### gsl_types.h ##############################################################



#### gsl_vector.h #############################################################



#### gsl_vector_char.h ########################################################


mutable struct gsl_vector_char
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end

mutable struct _gsl_vector_char_view
    vector::gsl_vector_char
end
const gsl_vector_char_view = _gsl_vector_char_view

mutable struct _gsl_vector_char_const_view
    vector::gsl_vector_char
end
const gsl_vector_char_const_view = _gsl_vector_char_const_view


#### gsl_vector_complex.h #####################################################



#### gsl_vector_complex_float.h ###############################################


mutable struct gsl_vector_complex_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end

mutable struct _gsl_vector_complex_float_view
    vector::gsl_vector_complex_float
end
const gsl_vector_complex_float_view = _gsl_vector_complex_float_view

mutable struct _gsl_vector_complex_float_const_view
    vector::gsl_vector_complex_float
end
const gsl_vector_complex_float_const_view = _gsl_vector_complex_float_const_view


#### gsl_vector_complex_long_double.h #########################################


mutable struct gsl_vector_complex_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end

mutable struct _gsl_vector_complex_long_double_view
    vector::gsl_vector_complex_long_double
end
const gsl_vector_complex_long_double_view = _gsl_vector_complex_long_double_view

mutable struct _gsl_vector_complex_long_double_const_view
    vector::gsl_vector_complex_long_double
end
const gsl_vector_complex_long_double_const_view = _gsl_vector_complex_long_double_const_view


#### gsl_vector_float.h #######################################################


mutable struct gsl_vector_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end

mutable struct _gsl_vector_float_view
    vector::gsl_vector_float
end
const gsl_vector_float_view = _gsl_vector_float_view

mutable struct _gsl_vector_float_const_view
    vector::gsl_vector_float
end
const gsl_vector_float_const_view = _gsl_vector_float_const_view


#### gsl_vector_int.h #########################################################


mutable struct gsl_vector_int
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end

mutable struct _gsl_vector_int_view
    vector::gsl_vector_int
end
const gsl_vector_int_view = _gsl_vector_int_view

mutable struct _gsl_vector_int_const_view
    vector::gsl_vector_int
end
const gsl_vector_int_const_view = _gsl_vector_int_const_view


#### gsl_vector_long.h ########################################################


mutable struct gsl_vector_long
    size::Csize_t
    stride::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end

mutable struct _gsl_vector_long_view
    vector::gsl_vector_long
end
const gsl_vector_long_view = _gsl_vector_long_view

mutable struct _gsl_vector_long_const_view
    vector::gsl_vector_long
end
const gsl_vector_long_const_view = _gsl_vector_long_const_view


#### gsl_vector_long_double.h #################################################


mutable struct gsl_vector_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end

mutable struct _gsl_vector_long_double_view
    vector::gsl_vector_long_double
end
const gsl_vector_long_double_view = _gsl_vector_long_double_view

mutable struct _gsl_vector_long_double_const_view
    vector::gsl_vector_long_double
end
const gsl_vector_long_double_const_view = _gsl_vector_long_double_const_view


#### gsl_vector_short.h #######################################################


mutable struct gsl_vector_short
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end

mutable struct _gsl_vector_short_view
    vector::gsl_vector_short
end
const gsl_vector_short_view = _gsl_vector_short_view

mutable struct _gsl_vector_short_const_view
    vector::gsl_vector_short
end
const gsl_vector_short_const_view = _gsl_vector_short_const_view


#### gsl_vector_uchar.h #######################################################


mutable struct gsl_vector_uchar
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end

mutable struct _gsl_vector_uchar_view
    vector::gsl_vector_uchar
end
const gsl_vector_uchar_view = _gsl_vector_uchar_view

mutable struct _gsl_vector_uchar_const_view
    vector::gsl_vector_uchar
end
const gsl_vector_uchar_const_view = _gsl_vector_uchar_const_view


#### gsl_vector_uint.h ########################################################


mutable struct gsl_vector_uint
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end

mutable struct _gsl_vector_uint_view
    vector::gsl_vector_uint
end
const gsl_vector_uint_view = _gsl_vector_uint_view

mutable struct _gsl_vector_uint_const_view
    vector::gsl_vector_uint
end
const gsl_vector_uint_const_view = _gsl_vector_uint_const_view


#### gsl_vector_ulong.h #######################################################


mutable struct gsl_vector_ulong
    size::Csize_t
    stride::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end

mutable struct _gsl_vector_ulong_view
    vector::gsl_vector_ulong
end
const gsl_vector_ulong_view = _gsl_vector_ulong_view

mutable struct _gsl_vector_ulong_const_view
    vector::gsl_vector_ulong
end
const gsl_vector_ulong_const_view = _gsl_vector_ulong_const_view


#### gsl_vector_ushort.h ######################################################


mutable struct gsl_vector_ushort
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end

mutable struct _gsl_vector_ushort_view
    vector::gsl_vector_ushort
end
const gsl_vector_ushort_view = _gsl_vector_ushort_view

mutable struct _gsl_vector_ushort_const_view
    vector::gsl_vector_ushort
end
const gsl_vector_ushort_const_view = _gsl_vector_ushort_const_view


#### gsl_version.h ############################################################

const GSL_MAJOR_VERSION = 2
const GSL_MINOR_VERSION = 5


#### gsl_wavelet.h ############################################################

const gsl_wavelet_forward = 1
const gsl_wavelet_backward = -1
const gsl_wavelet_direction = Cint

mutable struct gsl_wavelet_type
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
end

mutable struct gsl_wavelet
    type::Ptr{gsl_wavelet_type}
    h1::Ptr{Cdouble}
    g1::Ptr{Cdouble}
    h2::Ptr{Cdouble}
    g2::Ptr{Cdouble}
    nc::Csize_t
    offset::Csize_t
end

mutable struct gsl_wavelet_workspace
    scratch::Ptr{Cdouble}
    n::Csize_t
end


#### gsl_wavelet2d.h ##########################################################


