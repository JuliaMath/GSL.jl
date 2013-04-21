#Constants

#######################
# 7 Special functions #
#######################

#############
# 7.3 Modes #
#############
export PREC_DOUBLE, PREC_SINGLE, PREC_APPROX
const PREC_DOUBLE=0
const PREC_SINGLE=1
const PREC_APPROX=2
MODE_PREC(mt)=(mt & 7)
const PREC_DEFAULT=0

########################
# C #defined constants #
########################

#gsl_complex.h
REAL(z)    =((z).dat[1])
IMAG(z)    =((z).dat[2])
COMPLEX_P(zp)=((zp)->dat)
COMPLEX_P_REAL(zp) =((zp)->dat[1])
COMPLEX_P_IMAG(zp) =((zp)->dat[2])
COMPLEX_EQ(z1,z2)=(((z1).dat[1] ==(z2).dat[1]) && ((z1).dat[2] ==(z2).dat[2]))
#TODO...
#SET_COMPLEX(zp,x,y) do {(zp)->dat[0]=(x);=(zp)->dat[1]=(y);} while(0)
#SET_REAL(zp,x) do {(zp)->dat[0]=(x);} while(0)
#SET_IMAG(zp,y) do {(zp)->dat[1]=(y);} while(0)
#SET_COMPLEX_PACKED(zp,n,x,y) do {*((zp)+2*(n))=(x); *((zp)+(2*(n)+1))=(y);} while(0)

#gsl_complex_math.h
const COMPLEX_ONE=(complex(1.0,0.0))
const COMPLEX_ZERO=(complex(0.0,0.0))
const COMPLEX_NEGONE=(complex(-1.0,0.0))

#gsl_const_cgs.h
const CGS_SPEED_OF_LIGHT=(2.99792458e10) # cm / s 
const CGS_GRAVITATIONAL_CONSTANT=(6.673e-8) # cm^3 / g s^2 
const CGS_PLANCKS_CONSTANT_H=(6.62606896e-27) # g cm^2 / s 
const CGS_PLANCKS_CONSTANT_HBAR=(1.05457162825e-27) # g cm^2 / s 
const CGS_ASTRONOMICAL_UNIT=(1.49597870691e13) # cm 
const CGS_LIGHT_YEAR=(9.46053620707e17) # cm 
const CGS_PARSEC=(3.08567758135e18) # cm 
const CGS_GRAV_ACCEL=(9.80665e2) # cm / s^2 
const CGS_ELECTRON_VOLT=(1.602176487e-12) # g cm^2 / s^2 
const CGS_MASS_ELECTRON=(9.10938188e-28) # g 
const CGS_MASS_MUON=(1.88353109e-25) # g 
const CGS_MASS_PROTON=(1.67262158e-24) # g 
const CGS_MASS_NEUTRON=(1.67492716e-24) # g 
const CGS_RYDBERG=(2.17987196968e-11) # g cm^2 / s^2 
const CGS_BOLTZMANN=(1.3806504e-16) # g cm^2 / K s^2 
const CGS_MOLAR_GAS=(8.314472e7) # g cm^2 / K mol s^2 
const CGS_STANDARD_GAS_VOLUME=(2.2710981e4) # cm^3 / mol 
const CGS_MINUTE=(6e1) # s 
const CGS_HOUR=(3.6e3) # s 
const CGS_DAY=(8.64e4) # s 
const CGS_WEEK=(6.048e5) # s 
const CGS_INCH=(2.54e0) # cm 
const CGS_FOOT=(3.048e1) # cm 
const CGS_YARD=(9.144e1) # cm 
const CGS_MILE=(1.609344e5) # cm 
const CGS_NAUTICAL_MILE=(1.852e5) # cm 
const CGS_FATHOM=(1.8288e2) # cm 
const CGS_MIL=(2.54e-3) # cm 
const CGS_POINT=(3.52777777778e-2) # cm 
const CGS_TEXPOINT=(3.51459803515e-2) # cm 
const CGS_MICRON=(1e-4) # cm 
const CGS_ANGSTROM=(1e-8) # cm 
const CGS_HECTARE=(1e8) # cm^2 
const CGS_ACRE=(4.04685642241e7) # cm^2 
const CGS_BARN=(1e-24) # cm^2 
const CGS_LITER=(1e3) # cm^3 
const CGS_US_GALLON=(3.78541178402e3) # cm^3 
const CGS_QUART=(9.46352946004e2) # cm^3 
const CGS_PINT=(4.73176473002e2) # cm^3 
const CGS_CUP=(2.36588236501e2) # cm^3 
const CGS_FLUID_OUNCE=(2.95735295626e1) # cm^3 
const CGS_TABLESPOON=(1.47867647813e1) # cm^3 
const CGS_TEASPOON=(4.92892159375e0) # cm^3 
const CGS_CANADIAN_GALLON=(4.54609e3) # cm^3 
const CGS_UK_GALLON=(4.546092e3) # cm^3 
const CGS_MILES_PER_HOUR=(4.4704e1) # cm / s 
const CGS_KILOMETERS_PER_HOUR=(2.77777777778e1) # cm / s 
const CGS_KNOT=(5.14444444444e1) # cm / s 
const CGS_POUND_MASS=(4.5359237e2) # g 
const CGS_OUNCE_MASS=(2.8349523125e1) # g 
const CGS_TON=(9.0718474e5) # g 
const CGS_METRIC_TON=(1e6) # g 
const CGS_UK_TON=(1.0160469088e6) # g 
const CGS_TROY_OUNCE=(3.1103475e1) # g 
const CGS_CARAT=(2e-1) # g 
const CGS_UNIFIED_ATOMIC_MASS=(1.660538782e-24) # g 
const CGS_GRAM_FORCE=(9.80665e2) # cm g / s^2 
const CGS_POUND_FORCE=(4.44822161526e5) # cm g / s^2 
const CGS_KILOPOUND_FORCE=(4.44822161526e8) # cm g / s^2 
const CGS_POUNDAL=(1.38255e4) # cm g / s^2 
const CGS_CALORIE=(4.1868e7) # g cm^2 / s^2 
const CGS_BTU=(1.05505585262e10) # g cm^2 / s^2 
const CGS_THERM=(1.05506e15) # g cm^2 / s^2 
const CGS_HORSEPOWER=(7.457e9) # g cm^2 / s^3 
const CGS_BAR=(1e6) # g / cm s^2 
const CGS_STD_ATMOSPHERE=(1.01325e6) # g / cm s^2 
const CGS_TORR=(1.33322368421e3) # g / cm s^2 
const CGS_METER_OF_MERCURY=(1.33322368421e6) # g / cm s^2 
const CGS_INCH_OF_MERCURY=(3.38638815789e4) # g / cm s^2 
const CGS_INCH_OF_WATER=(2.490889e3) # g / cm s^2 
const CGS_PSI=(6.89475729317e4) # g / cm s^2 
const CGS_POISE=(1e0) # g / cm s 
const CGS_STOKES=(1e0) # cm^2 / s 
const CGS_STILB=(1e0) # cd / cm^2 
const CGS_LUMEN=(1e0) # cd sr 
const CGS_LUX=(1e-4) # cd sr / cm^2 
const CGS_PHOT=(1e0) # cd sr / cm^2 
const CGS_FOOTCANDLE=(1.076e-3) # cd sr / cm^2 
const CGS_LAMBERT=(1e0) # cd sr / cm^2 
const CGS_FOOTLAMBERT=(1.07639104e-3) # cd sr / cm^2 
const CGS_CURIE=(3.7e10) # 1 / s 
const CGS_ROENTGEN=(2.58e-7) # A s / g 
const CGS_RAD=(1e2) # cm^2 / s^2 
const CGS_SOLAR_MASS=(1.98892e33) # g 
const CGS_BOHR_RADIUS=(5.291772083e-9) # cm 
const CGS_NEWTON=(1e5) # cm g / s^2 
const CGS_DYNE=(1e0) # cm g / s^2 
const CGS_JOULE=(1e7) # g cm^2 / s^2 
const CGS_ERG=(1e0) # g cm^2 / s^2 
const CGS_STEFAN_BOLTZMANN_CONSTANT=(5.67040047374e-5) # g / K^4 s^3 
const CGS_THOMSON_CROSS_SECTION=(6.65245893699e-25) # cm^2 

#gsl_const_cgsm.h
const CGSM_SPEED_OF_LIGHT=(2.99792458e10) # cm / s 
const CGSM_GRAVITATIONAL_CONSTANT=(6.673e-8) # cm^3 / g s^2 
const CGSM_PLANCKS_CONSTANT_H=(6.62606896e-27) # g cm^2 / s 
const CGSM_PLANCKS_CONSTANT_HBAR=(1.05457162825e-27) # g cm^2 / s 
const CGSM_ASTRONOMICAL_UNIT=(1.49597870691e13) # cm 
const CGSM_LIGHT_YEAR=(9.46053620707e17) # cm 
const CGSM_PARSEC=(3.08567758135e18) # cm 
const CGSM_GRAV_ACCEL=(9.80665e2) # cm / s^2 
const CGSM_ELECTRON_VOLT=(1.602176487e-12) # g cm^2 / s^2 
const CGSM_MASS_ELECTRON=(9.10938188e-28) # g 
const CGSM_MASS_MUON=(1.88353109e-25) # g 
const CGSM_MASS_PROTON=(1.67262158e-24) # g 
const CGSM_MASS_NEUTRON=(1.67492716e-24) # g 
const CGSM_RYDBERG=(2.17987196968e-11) # g cm^2 / s^2 
const CGSM_BOLTZMANN=(1.3806504e-16) # g cm^2 / K s^2 
const CGSM_MOLAR_GAS=(8.314472e7) # g cm^2 / K mol s^2 
const CGSM_STANDARD_GAS_VOLUME=(2.2710981e4) # cm^3 / mol 
const CGSM_MINUTE=(6e1) # s 
const CGSM_HOUR=(3.6e3) # s 
const CGSM_DAY=(8.64e4) # s 
const CGSM_WEEK=(6.048e5) # s 
const CGSM_INCH=(2.54e0) # cm 
const CGSM_FOOT=(3.048e1) # cm 
const CGSM_YARD=(9.144e1) # cm 
const CGSM_MILE=(1.609344e5) # cm 
const CGSM_NAUTICAL_MILE=(1.852e5) # cm 
const CGSM_FATHOM=(1.8288e2) # cm 
const CGSM_MIL=(2.54e-3) # cm 
const CGSM_POINT=(3.52777777778e-2) # cm 
const CGSM_TEXPOINT=(3.51459803515e-2) # cm 
const CGSM_MICRON=(1e-4) # cm 
const CGSM_ANGSTROM=(1e-8) # cm 
const CGSM_HECTARE=(1e8) # cm^2 
const CGSM_ACRE=(4.04685642241e7) # cm^2 
const CGSM_BARN=(1e-24) # cm^2 
const CGSM_LITER=(1e3) # cm^3 
const CGSM_US_GALLON=(3.78541178402e3) # cm^3 
const CGSM_QUART=(9.46352946004e2) # cm^3 
const CGSM_PINT=(4.73176473002e2) # cm^3 
const CGSM_CUP=(2.36588236501e2) # cm^3 
const CGSM_FLUID_OUNCE=(2.95735295626e1) # cm^3 
const CGSM_TABLESPOON=(1.47867647813e1) # cm^3 
const CGSM_TEASPOON=(4.92892159375e0) # cm^3 
const CGSM_CANADIAN_GALLON=(4.54609e3) # cm^3 
const CGSM_UK_GALLON=(4.546092e3) # cm^3 
const CGSM_MILES_PER_HOUR=(4.4704e1) # cm / s 
const CGSM_KILOMETERS_PER_HOUR=(2.77777777778e1) # cm / s 
const CGSM_KNOT=(5.14444444444e1) # cm / s 
const CGSM_POUND_MASS=(4.5359237e2) # g 
const CGSM_OUNCE_MASS=(2.8349523125e1) # g 
const CGSM_TON=(9.0718474e5) # g 
const CGSM_METRIC_TON=(1e6) # g 
const CGSM_UK_TON=(1.0160469088e6) # g 
const CGSM_TROY_OUNCE=(3.1103475e1) # g 
const CGSM_CARAT=(2e-1) # g 
const CGSM_UNIFIED_ATOMIC_MASS=(1.660538782e-24) # g 
const CGSM_GRAM_FORCE=(9.80665e2) # cm g / s^2 
const CGSM_POUND_FORCE=(4.44822161526e5) # cm g / s^2 
const CGSM_KILOPOUND_FORCE=(4.44822161526e8) # cm g / s^2 
const CGSM_POUNDAL=(1.38255e4) # cm g / s^2 
const CGSM_CALORIE=(4.1868e7) # g cm^2 / s^2 
const CGSM_BTU=(1.05505585262e10) # g cm^2 / s^2 
const CGSM_THERM=(1.05506e15) # g cm^2 / s^2 
const CGSM_HORSEPOWER=(7.457e9) # g cm^2 / s^3 
const CGSM_BAR=(1e6) # g / cm s^2 
const CGSM_STD_ATMOSPHERE=(1.01325e6) # g / cm s^2 
const CGSM_TORR=(1.33322368421e3) # g / cm s^2 
const CGSM_METER_OF_MERCURY=(1.33322368421e6) # g / cm s^2 
const CGSM_INCH_OF_MERCURY=(3.38638815789e4) # g / cm s^2 
const CGSM_INCH_OF_WATER=(2.490889e3) # g / cm s^2 
const CGSM_PSI=(6.89475729317e4) # g / cm s^2 
const CGSM_POISE=(1e0) # g / cm s 
const CGSM_STOKES=(1e0) # cm^2 / s 
const CGSM_STILB=(1e0) # cd / cm^2 
const CGSM_LUMEN=(1e0) # cd sr 
const CGSM_LUX=(1e-4) # cd sr / cm^2 
const CGSM_PHOT=(1e0) # cd sr / cm^2 
const CGSM_FOOTCANDLE=(1.076e-3) # cd sr / cm^2 
const CGSM_LAMBERT=(1e0) # cd sr / cm^2 
const CGSM_FOOTLAMBERT=(1.07639104e-3) # cd sr / cm^2 
const CGSM_CURIE=(3.7e10) # 1 / s 
const CGSM_ROENTGEN=(2.58e-8) # abamp s / g 
const CGSM_RAD=(1e2) # cm^2 / s^2 
const CGSM_SOLAR_MASS=(1.98892e33) # g 
const CGSM_BOHR_RADIUS=(5.291772083e-9) # cm 
const CGSM_NEWTON=(1e5) # cm g / s^2 
const CGSM_DYNE=(1e0) # cm g / s^2 
const CGSM_JOULE=(1e7) # g cm^2 / s^2 
const CGSM_ERG=(1e0) # g cm^2 / s^2 
const CGSM_STEFAN_BOLTZMANN_CONSTANT=(5.67040047374e-5) # g / K^4 s^3 
const CGSM_THOMSON_CROSS_SECTION=(6.65245893699e-25) # cm^2 
const CGSM_BOHR_MAGNETON=(9.27400899e-21) # abamp cm^2 
const CGSM_NUCLEAR_MAGNETON=(5.05078317e-24) # abamp cm^2 
const CGSM_ELECTRON_MAGNETIC_MOMENT=(9.28476362e-21) # abamp cm^2 
const CGSM_PROTON_MAGNETIC_MOMENT=(1.410606633e-23) # abamp cm^2 
const CGSM_FARADAY=(9.64853429775e3) # abamp s / mol 
const CGSM_ELECTRON_CHARGE=(1.602176487e-20) # abamp s 

#gsl_const_mks.h
const MKS_SPEED_OF_LIGHT=(2.99792458e8) # m / s 
const MKS_GRAVITATIONAL_CONSTANT=(6.673e-11) # m^3 / kg s^2 
const MKS_PLANCKS_CONSTANT_H=(6.62606896e-34) # kg m^2 / s 
const MKS_PLANCKS_CONSTANT_HBAR=(1.05457162825e-34) # kg m^2 / s 
const MKS_ASTRONOMICAL_UNIT=(1.49597870691e11) # m 
const MKS_LIGHT_YEAR=(9.46053620707e15) # m 
const MKS_PARSEC=(3.08567758135e16) # m 
const MKS_GRAV_ACCEL=(9.80665e0) # m / s^2 
const MKS_ELECTRON_VOLT=(1.602176487e-19) # kg m^2 / s^2 
const MKS_MASS_ELECTRON=(9.10938188e-31) # kg 
const MKS_MASS_MUON=(1.88353109e-28) # kg 
const MKS_MASS_PROTON=(1.67262158e-27) # kg 
const MKS_MASS_NEUTRON=(1.67492716e-27) # kg 
const MKS_RYDBERG=(2.17987196968e-18) # kg m^2 / s^2 
const MKS_BOLTZMANN=(1.3806504e-23) # kg m^2 / K s^2 
const MKS_MOLAR_GAS=(8.314472e0) # kg m^2 / K mol s^2 
const MKS_STANDARD_GAS_VOLUME=(2.2710981e-2) # m^3 / mol 
const MKS_MINUTE=(6e1) # s 
const MKS_HOUR=(3.6e3) # s 
const MKS_DAY=(8.64e4) # s 
const MKS_WEEK=(6.048e5) # s 
const MKS_INCH=(2.54e-2) # m 
const MKS_FOOT=(3.048e-1) # m 
const MKS_YARD=(9.144e-1) # m 
const MKS_MILE=(1.609344e3) # m 
const MKS_NAUTICAL_MILE=(1.852e3) # m 
const MKS_FATHOM=(1.8288e0) # m 
const MKS_MIL=(2.54e-5) # m 
const MKS_POINT=(3.52777777778e-4) # m 
const MKS_TEXPOINT=(3.51459803515e-4) # m 
const MKS_MICRON=(1e-6) # m 
const MKS_ANGSTROM=(1e-10) # m 
const MKS_HECTARE=(1e4) # m^2 
const MKS_ACRE=(4.04685642241e3) # m^2 
const MKS_BARN=(1e-28) # m^2 
const MKS_LITER=(1e-3) # m^3 
const MKS_US_GALLON=(3.78541178402e-3) # m^3 
const MKS_QUART=(9.46352946004e-4) # m^3 
const MKS_PINT=(4.73176473002e-4) # m^3 
const MKS_CUP=(2.36588236501e-4) # m^3 
const MKS_FLUID_OUNCE=(2.95735295626e-5) # m^3 
const MKS_TABLESPOON=(1.47867647813e-5) # m^3 
const MKS_TEASPOON=(4.92892159375e-6) # m^3 
const MKS_CANADIAN_GALLON=(4.54609e-3) # m^3 
const MKS_UK_GALLON=(4.546092e-3) # m^3 
const MKS_MILES_PER_HOUR=(4.4704e-1) # m / s 
const MKS_KILOMETERS_PER_HOUR=(2.77777777778e-1) # m / s 
const MKS_KNOT=(5.14444444444e-1) # m / s 
const MKS_POUND_MASS=(4.5359237e-1) # kg 
const MKS_OUNCE_MASS=(2.8349523125e-2) # kg 
const MKS_TON=(9.0718474e2) # kg 
const MKS_METRIC_TON=(1e3) # kg 
const MKS_UK_TON=(1.0160469088e3) # kg 
const MKS_TROY_OUNCE=(3.1103475e-2) # kg 
const MKS_CARAT=(2e-4) # kg 
const MKS_UNIFIED_ATOMIC_MASS=(1.660538782e-27) # kg 
const MKS_GRAM_FORCE=(9.80665e-3) # kg m / s^2 
const MKS_POUND_FORCE=(4.44822161526e0) # kg m / s^2 
const MKS_KILOPOUND_FORCE=(4.44822161526e3) # kg m / s^2 
const MKS_POUNDAL=(1.38255e-1) # kg m / s^2 
const MKS_CALORIE=(4.1868e0) # kg m^2 / s^2 
const MKS_BTU=(1.05505585262e3) # kg m^2 / s^2 
const MKS_THERM=(1.05506e8) # kg m^2 / s^2 
const MKS_HORSEPOWER=(7.457e2) # kg m^2 / s^3 
const MKS_BAR=(1e5) # kg / m s^2 
const MKS_STD_ATMOSPHERE=(1.01325e5) # kg / m s^2 
const MKS_TORR=(1.33322368421e2) # kg / m s^2 
const MKS_METER_OF_MERCURY=(1.33322368421e5) # kg / m s^2 
const MKS_INCH_OF_MERCURY=(3.38638815789e3) # kg / m s^2 
const MKS_INCH_OF_WATER=(2.490889e2) # kg / m s^2 
const MKS_PSI=(6.89475729317e3) # kg / m s^2 
const MKS_POISE=(1e-1) # kg m^-1 s^-1 
const MKS_STOKES=(1e-4) # m^2 / s 
const MKS_STILB=(1e4) # cd / m^2 
const MKS_LUMEN=(1e0) # cd sr 
const MKS_LUX=(1e0) # cd sr / m^2 
const MKS_PHOT=(1e4) # cd sr / m^2 
const MKS_FOOTCANDLE=(1.076e1) # cd sr / m^2 
const MKS_LAMBERT=(1e4) # cd sr / m^2 
const MKS_FOOTLAMBERT=(1.07639104e1) # cd sr / m^2 
const MKS_CURIE=(3.7e10) # 1 / s 
const MKS_ROENTGEN=(2.58e-4) # A s / kg 
const MKS_RAD=(1e-2) # m^2 / s^2 
const MKS_SOLAR_MASS=(1.98892e30) # kg 
const MKS_BOHR_RADIUS=(5.291772083e-11) # m 
const MKS_NEWTON=(1e0) # kg m / s^2 
const MKS_DYNE=(1e-5) # kg m / s^2 
const MKS_JOULE=(1e0) # kg m^2 / s^2 
const MKS_ERG=(1e-7) # kg m^2 / s^2 
const MKS_STEFAN_BOLTZMANN_CONSTANT=(5.67040047374e-8) # kg / K^4 s^3 
const MKS_THOMSON_CROSS_SECTION=(6.65245893699e-29) # m^2 
const MKS_BOHR_MAGNETON=(9.27400899e-24) # A m^2 
const MKS_NUCLEAR_MAGNETON=(5.05078317e-27) # A m^2 
const MKS_ELECTRON_MAGNETIC_MOMENT=(9.28476362e-24) # A m^2 
const MKS_PROTON_MAGNETIC_MOMENT=(1.410606633e-26) # A m^2 
const MKS_FARADAY=(9.64853429775e4) # A s / mol 
const MKS_ELECTRON_CHARGE=(1.602176487e-19) # A s 
const MKS_VACUUM_PERMITTIVITY=(8.854187817e-12) # A^2 s^4 / kg m^3 
const MKS_VACUUM_PERMEABILITY=(1.25663706144e-6) # kg m / A^2 s^2 
const MKS_DEBYE=(3.33564095198e-30) # A s^2 / m^2 
const MKS_GAUSS=(1e-4) # kg / A s^2 

# gsl_const_mksa.h
const MKSA_SPEED_OF_LIGHT=(2.99792458e8) # m / s 
const MKSA_GRAVITATIONAL_CONSTANT=(6.673e-11) # m^3 / kg s^2 
const MKSA_PLANCKS_CONSTANT_H=(6.62606896e-34) # kg m^2 / s 
const MKSA_PLANCKS_CONSTANT_HBAR=(1.05457162825e-34) # kg m^2 / s 
const MKSA_ASTRONOMICAL_UNIT=(1.49597870691e11) # m 
const MKSA_LIGHT_YEAR=(9.46053620707e15) # m 
const MKSA_PARSEC=(3.08567758135e16) # m 
const MKSA_GRAV_ACCEL=(9.80665e0) # m / s^2 
const MKSA_ELECTRON_VOLT=(1.602176487e-19) # kg m^2 / s^2 
const MKSA_MASS_ELECTRON=(9.10938188e-31) # kg 
const MKSA_MASS_MUON=(1.88353109e-28) # kg 
const MKSA_MASS_PROTON=(1.67262158e-27) # kg 
const MKSA_MASS_NEUTRON=(1.67492716e-27) # kg 
const MKSA_RYDBERG=(2.17987196968e-18) # kg m^2 / s^2 
const MKSA_BOLTZMANN=(1.3806504e-23) # kg m^2 / K s^2 
const MKSA_MOLAR_GAS=(8.314472e0) # kg m^2 / K mol s^2 
const MKSA_STANDARD_GAS_VOLUME=(2.2710981e-2) # m^3 / mol 
const MKSA_MINUTE=(6e1) # s 
const MKSA_HOUR=(3.6e3) # s 
const MKSA_DAY=(8.64e4) # s 
const MKSA_WEEK=(6.048e5) # s 
const MKSA_INCH=(2.54e-2) # m 
const MKSA_FOOT=(3.048e-1) # m 
const MKSA_YARD=(9.144e-1) # m 
const MKSA_MILE=(1.609344e3) # m 
const MKSA_NAUTICAL_MILE=(1.852e3) # m 
const MKSA_FATHOM=(1.8288e0) # m 
const MKSA_MIL=(2.54e-5) # m 
const MKSA_POINT=(3.52777777778e-4) # m 
const MKSA_TEXPOINT=(3.51459803515e-4) # m 
const MKSA_MICRON=(1e-6) # m 
const MKSA_ANGSTROM=(1e-10) # m 
const MKSA_HECTARE=(1e4) # m^2 
const MKSA_ACRE=(4.04685642241e3) # m^2 
const MKSA_BARN=(1e-28) # m^2 
const MKSA_LITER=(1e-3) # m^3 
const MKSA_US_GALLON=(3.78541178402e-3) # m^3 
const MKSA_QUART=(9.46352946004e-4) # m^3 
const MKSA_PINT=(4.73176473002e-4) # m^3 
const MKSA_CUP=(2.36588236501e-4) # m^3 
const MKSA_FLUID_OUNCE=(2.95735295626e-5) # m^3 
const MKSA_TABLESPOON=(1.47867647813e-5) # m^3 
const MKSA_TEASPOON=(4.92892159375e-6) # m^3 
const MKSA_CANADIAN_GALLON=(4.54609e-3) # m^3 
const MKSA_UK_GALLON=(4.546092e-3) # m^3 
const MKSA_MILES_PER_HOUR=(4.4704e-1) # m / s 
const MKSA_KILOMETERS_PER_HOUR=(2.77777777778e-1) # m / s 
const MKSA_KNOT=(5.14444444444e-1) # m / s 
const MKSA_POUND_MASS=(4.5359237e-1) # kg 
const MKSA_OUNCE_MASS=(2.8349523125e-2) # kg 
const MKSA_TON=(9.0718474e2) # kg 
const MKSA_METRIC_TON=(1e3) # kg 
const MKSA_UK_TON=(1.0160469088e3) # kg 
const MKSA_TROY_OUNCE=(3.1103475e-2) # kg 
const MKSA_CARAT=(2e-4) # kg 
const MKSA_UNIFIED_ATOMIC_MASS=(1.660538782e-27) # kg 
const MKSA_GRAM_FORCE=(9.80665e-3) # kg m / s^2 
const MKSA_POUND_FORCE=(4.44822161526e0) # kg m / s^2 
const MKSA_KILOPOUND_FORCE=(4.44822161526e3) # kg m / s^2 
const MKSA_POUNDAL=(1.38255e-1) # kg m / s^2 
const MKSA_CALORIE=(4.1868e0) # kg m^2 / s^2 
const MKSA_BTU=(1.05505585262e3) # kg m^2 / s^2 
const MKSA_THERM=(1.05506e8) # kg m^2 / s^2 
const MKSA_HORSEPOWER=(7.457e2) # kg m^2 / s^3 
const MKSA_BAR=(1e5) # kg / m s^2 
const MKSA_STD_ATMOSPHERE=(1.01325e5) # kg / m s^2 
const MKSA_TORR=(1.33322368421e2) # kg / m s^2 
const MKSA_METER_OF_MERCURY=(1.33322368421e5) # kg / m s^2 
const MKSA_INCH_OF_MERCURY=(3.38638815789e3) # kg / m s^2 
const MKSA_INCH_OF_WATER=(2.490889e2) # kg / m s^2 
const MKSA_PSI=(6.89475729317e3) # kg / m s^2 
const MKSA_POISE=(1e-1) # kg m^-1 s^-1 
const MKSA_STOKES=(1e-4) # m^2 / s 
const MKSA_STILB=(1e4) # cd / m^2 
const MKSA_LUMEN=(1e0) # cd sr 
const MKSA_LUX=(1e0) # cd sr / m^2 
const MKSA_PHOT=(1e4) # cd sr / m^2 
const MKSA_FOOTCANDLE=(1.076e1) # cd sr / m^2 
const MKSA_LAMBERT=(1e4) # cd sr / m^2 
const MKSA_FOOTLAMBERT=(1.07639104e1) # cd sr / m^2 
const MKSA_CURIE=(3.7e10) # 1 / s 
const MKSA_ROENTGEN=(2.58e-4) # A s / kg 
const MKSA_RAD=(1e-2) # m^2 / s^2 
const MKSA_SOLAR_MASS=(1.98892e30) # kg 
const MKSA_BOHR_RADIUS=(5.291772083e-11) # m 
const MKSA_NEWTON=(1e0) # kg m / s^2 
const MKSA_DYNE=(1e-5) # kg m / s^2 
const MKSA_JOULE=(1e0) # kg m^2 / s^2 
const MKSA_ERG=(1e-7) # kg m^2 / s^2 
const MKSA_STEFAN_BOLTZMANN_CONSTANT=(5.67040047374e-8) # kg / K^4 s^3 
const MKSA_THOMSON_CROSS_SECTION=(6.65245893699e-29) # m^2 
const MKSA_BOHR_MAGNETON=(9.27400899e-24) # A m^2 
const MKSA_NUCLEAR_MAGNETON=(5.05078317e-27) # A m^2 
const MKSA_ELECTRON_MAGNETIC_MOMENT=(9.28476362e-24) # A m^2 
const MKSA_PROTON_MAGNETIC_MOMENT=(1.410606633e-26) # A m^2 
const MKSA_FARADAY=(9.64853429775e4) # A s / mol 
const MKSA_ELECTRON_CHARGE=(1.602176487e-19) # A s 
const MKSA_VACUUM_PERMITTIVITY=(8.854187817e-12) # A^2 s^4 / kg m^3 
const MKSA_VACUUM_PERMEABILITY=(1.25663706144e-6) # kg m / A^2 s^2 
const MKSA_DEBYE=(3.33564095198e-30) # A s^2 / m^2 
const MKSA_GAUSS=(1e-4) # kg / A s^2 

#gsl_const_num.h
const NUM_FINE_STRUCTURE=(7.297352533e-3) # 1 
const NUM_AVOGADRO=(6.02214199e23) # 1 / mol 
const NUM_YOTTA=(1e24) # 1 
const NUM_ZETTA=(1e21) # 1 
const NUM_EXA=(1e18) # 1 
const NUM_PETA=(1e15) # 1 
const NUM_TERA=(1e12) # 1 
const NUM_GIGA=(1e9) # 1 
const NUM_MEGA=(1e6) # 1 
const NUM_KILO=(1e3) # 1 
const NUM_MILLI=(1e-3) # 1 
const NUM_MICRO=(1e-6) # 1 
const NUM_NANO=(1e-9) # 1 
const NUM_PICO=(1e-12) # 1 
const NUM_FEMTO=(1e-15) # 1 
const NUM_ATTO=(1e-18) # 1 
const NUM_ZEPTO=(1e-21) # 1 
const NUM_YOCTO=(1e-24) # 1 

#gsl_errno
#TODO...

#gsl_inline.h
RANGE_COND(x)=(x)

#gsl_machine.h
const DBL_EPSILON       = 2.2204460492503131e-16
const SQRT_DBL_EPSILON  = 1.4901161193847656e-08
const ROOT3_DBL_EPSILON = 6.0554544523933429e-06
const ROOT4_DBL_EPSILON = 1.2207031250000000e-04
const ROOT5_DBL_EPSILON = 7.4009597974140505e-04
const ROOT6_DBL_EPSILON = 2.4607833005759251e-03
const LOG_DBL_EPSILON  =(-3.6043653389117154e+01)
const DBL_MIN       = 2.2250738585072014e-308
const SQRT_DBL_MIN  = 1.4916681462400413e-154
const ROOT3_DBL_MIN = 2.8126442852362996e-103
const ROOT4_DBL_MIN = 1.2213386697554620e-77
const ROOT5_DBL_MIN = 2.9476022969691763e-62
const ROOT6_DBL_MIN = 5.3034368905798218e-52
const LOG_DBL_MIN  =(-7.0839641853226408e+02)
const DBL_MAX       = 1.7976931348623157e+308
const SQRT_DBL_MAX  = 1.3407807929942596e+154
const ROOT3_DBL_MAX = 5.6438030941222897e+102
const ROOT4_DBL_MAX = 1.1579208923731620e+77
const ROOT5_DBL_MAX = 4.4765466227572707e+61
const ROOT6_DBL_MAX = 2.3756689782295612e+51
const LOG_DBL_MAX   = 7.0978271289338397e+02
const FLT_EPSILON       = 1.1920928955078125e-07
const SQRT_FLT_EPSILON  = 3.4526698300124393e-04
const ROOT3_FLT_EPSILON = 4.9215666011518501e-03
const ROOT4_FLT_EPSILON = 1.8581361171917516e-02
const ROOT5_FLT_EPSILON = 4.1234622211652937e-02
const ROOT6_FLT_EPSILON = 7.0153878019335827e-02
const LOG_FLT_EPSILON  =(-1.5942385152878742e+01)
const FLT_MIN       = 1.1754943508222875e-38
const SQRT_FLT_MIN  = 1.0842021724855044e-19
const ROOT3_FLT_MIN = 2.2737367544323241e-13
const ROOT4_FLT_MIN = 3.2927225399135965e-10
const ROOT5_FLT_MIN = 2.5944428542140822e-08
const ROOT6_FLT_MIN = 4.7683715820312542e-07
const LOG_FLT_MIN  =(-8.7336544750553102e+01)
const FLT_MAX       = 3.4028234663852886e+38
const SQRT_FLT_MAX  = 1.8446743523953730e+19
const ROOT3_FLT_MAX = 6.9814635196223242e+12
const ROOT4_FLT_MAX = 4.2949672319999986e+09
const ROOT5_FLT_MAX = 5.0859007855960041e+07
const ROOT6_FLT_MAX = 2.6422459233807749e+06
const LOG_FLT_MAX   = 8.8722839052068352e+01
const SFLT_EPSILON       = 4.8828125000000000e-04
const SQRT_SFLT_EPSILON  = 2.2097086912079612e-02
const ROOT3_SFLT_EPSILON = 7.8745065618429588e-02
const ROOT4_SFLT_EPSILON = 1.4865088937534013e-01
const ROOT5_SFLT_EPSILON = 2.1763764082403100e-01
const ROOT6_SFLT_EPSILON = 2.8061551207734325e-01
const LOG_SFLT_EPSILON  =(-7.6246189861593985e+00)
const MACH_EPS  =eps(Float64)
const SQRT_MACH_EPS      = 3.2e-08
const ROOT3_MACH_EPS     = 1.0e-05
const ROOT4_MACH_EPS     = 0.000178
const ROOT5_MACH_EPS     = 0.00100
const ROOT6_MACH_EPS     = 0.00316
const LOG_MACH_EPS      =(-34.54)

#gsl_math.h
const M_E       = 2.71828182845904523536028747135      # e 
const M_LOG2E   = 1.44269504088896340735992468100      # log_2=(e) 
const M_LOG10E  = 0.43429448190325182765112891892      # log_10=(e) 
const M_SQRT2   = 1.41421356237309504880168872421      # sqrt(2) 
const M_SQRT1_2 = 0.70710678118654752440084436210      # sqrt(1/2) 
const M_SQRT3   = 1.73205080756887729352744634151      # sqrt(3) 
const M_PI      = 3.14159265358979323846264338328      # pi 
const M_PI_2    = 1.57079632679489661923132169164      # pi/2 
const M_PI_4    = 0.78539816339744830961566084582     # pi/4 
const M_SQRTPI  = 1.77245385090551602729816748334      # sqrt(pi) 
const M_2_SQRTPI= 1.12837916709551257389615890312      # 2/sqrt(pi) 
const M_1_PI    = 0.31830988618379067153776752675      # 1/pi 
const M_2_PI    = 0.63661977236758134307553505349      # 2/pi 
const M_LN10    = 2.30258509299404568401799145468      # ln(10) 
const M_LN2     = 0.69314718055994530941723212146      # ln(2) 
const M_LNPI    = 1.14472988584940017414342735135      # ln(pi) 
const M_EULER   = 0.57721566490153286060651209008      # Euler constant 

IS_ODD(n) =((n) &= 1)
IS_EVEN(n)=(!(GSL_IS_ODD(n)))
SIGN(x)   =((x) >= 0.0 ? 1 : -1)
IS_REAL(x)=(finite(x))
FN_EVAL(F,x)=(*((F)->_function))(x,(F)->params)
FN_FDF_EVAL_F(FDF,x)=(*((FDF)->f))(x,(FDF)->params)
FN_FDF_EVAL_DF(FDF,x)=(*((FDF)->df))(x,(FDF)->params)
FN_FDF_EVAL_F_DF(FDF,x,y,dy)=(*((FDF)->fdf))(x,(FDF)->params,(y),(dy))
FN_VEC_EVAL(F,x,y)=(*((F)->_function))(x,y,(F)->params)

#gsl_message.h
const MESSAGE_MASK= 0xffffffff # default all messages allowed 
#TODO ...

#gsl_minmax.h
MAX(a,b)       =max(a,b)
MIN(a,b)       =min(a,b) 
MAX_INT(a,b)   =max(a,b)
MIN_INT(a,b)   =min(a,b)
MAX_DBL(a,b)   =max(a,b)
MIN_DBL(a,b)   =min(a,b)
MAX_LDBL(a,b)  =max(a,b)
MIN_LDBL(a,b)  =min(a,b)

#gsl_monte.h
MONTE_FN_EVAL(F,x)=(*((F)->f))(x,(F)->dim,(F)->params)

#gsl_multifit_nlin.h
MULTIFIT_FN_EVAL(F,x,y)=(*((F)->f))(x,(F)->params,(y))
MULTIFIT_FN_EVAL_F(F,x,y)=((*((F)->f))(x,(F)->params,(y)))
MULTIFIT_FN_EVAL_DF(F,x,dy)=((*((F)->df))(x,(F)->params,(dy)))
MULTIFIT_FN_EVAL_F_DF(F,x,y,dy)=((*((F)->fdf))(x,(F)->params,(y),(dy)))

#gsl_multimin.h
MULTIMIN_FN_EVAL(F,x)=(*((F)->f))(x,(F)->params)
MULTIMIN_FN_EVAL_F(F,x)=(*((F)->f))(x,(F)->params)
MULTIMIN_FN_EVAL_DF(F,x,g)=(*((F)->df))(x,(F)->params,(g))
MULTIMIN_FN_EVAL_F_DF(F,x,y,g)=(*((F)->fdf))(x,(F)->params,(y),(g))

#gsl_multiroots.h
MULTIROOT_FN_EVAL(F,x,y)=(*((F)->f))(x,(F)->params,(y))
MULTIROOT_FN_EVAL_F(F,x,y)=((*((F)->f))(x,(F)->params,(y)))
MULTIROOT_FN_EVAL_DF(F,x,dy)=((*((F)->df))(x,(F)->params,(dy)))
MULTIROOT_FN_EVAL_F_DF(F,x,y,dy)=((*((F)->fdf))(x,(F)->params,(y),(dy)))

#gsl_nan.h
POSZERO=(+0.0)
NEGZERO=(-0.0)

#gsl_odeiv.h
ODEIV_FN_EVAL(S,t,y,f) =(*((S)->_function))(t,y,f,(S)->params)
ODEIV_JA_EVAL(S,t,y,dfdy,dfdt) =(*((S)->jacobian))(t,y,dfdy,dfdt,(S)->params)
const ODEIV_HADJ_INC  = 1  # step was increased 
const ODEIV_HADJ_NIL  = 0  # step unchanged     
const ODEIV_HADJ_DEC=(-1) # step decreased     

#gsl_precision.h
const GSL_PREC_T_NUM= 3

#gsl_sf_gamma.h
const SF_GAMMA_XMAX = 171.0
const SF_FACT_NMAX= 170
const SF_DOUBLEFACT_NMAX= 297

#gsl_sf_mathieu.h
const SF_MATHIEU_COEFF= 100

#gsl_sf_result.h
#TODO... SF_RESULT_SET

#gsl_vector_complex.h
GSL_VECTOR_REAL(z, i) =((z)->data[2*(i)*(z)->stride])
GSL_VECTOR_IMAG(z, i) =((z)->data[2*(i)*(z)->stride += 1])
VECTOR_COMPLEX(zv, i)=(GSL_COMPLEX_AT((zv),(i)))
#TODO turn these into Julia references
#COMPLEX_AT(zv,i)=((complex*)&((zv)->data[2*(i)*(zv)->stride]))
#COMPLEX_FLOAT_AT(zv,i)=((complex_float*)&((zv)->data[2*(i)*(zv)->stride]))
#COMPLEX_LONG_DOUBLE_AT(zv,i)=((complex_long_double*)&((zv)->data[2*(i)*(zv)->stride]))

