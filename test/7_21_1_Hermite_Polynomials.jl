using GSL
using Base.Test




t1 = sf_hermite_prob( 5, -4.9345)
t2 = sf_hermite_prob_e( 3, 2.3471)
t3 = sf_hermite_prob_array( 4, 1.7293)
t4 = sf_hermite_prob_series( 3, -2.6410, [1, -3, 4, 2])
t5 = sf_hermite_prob_series_e( 6, 52.1324, [-9, -7, 2, 1, 6, 6, 6])
t6 = sf_hermite_phys( 7, 0.3812)
t7 = sf_hermite_phys_e( 6, 19.2222)
t8 = sf_hermite_phys_array( 3, 3.3333)
t9 = sf_hermite_phys_series( 3, -1.5000, [0.1000, -5.2000, 4.4120, 1.0001])
t10 = sf_hermite_phys_series_e( 3, 0.2211, [-0.1234, 0.1234, -0.1234, 0.1234])



# MAPLE 2016 Code for the verification of the calculated values
#=
restart;
Digits := 16;
t1 := 2.0^(-5/2) * HermiteH( 5, -4.9345/sqrt(2.0));
t2 := 2.0^(-3/2) * HermiteH( 3, 2.3471/sqrt(2.0));
t3 := [ seq( 2.0^(-k/2) * HermiteH( k, 1.7293/sqrt(2.0)), k=0..4)];
a := [1, -3, 4, 2]:
t4 := sum( a[k+1] * 2.0^(-k/2) * HermiteH(k, -2.6410/sqrt(2.0)), k=0..3);
a := [-9, -7, 2, 1, 6, 6, 6]:
t5 := sum( a[k+1] * 2.0^(-k/2) * HermiteH(k, 52.1324/sqrt(2.0)), k=0..6);
t6 := HermiteH( 7, 0.3812);
t7 := HermiteH( 6, 19.2222);
t8 := [ seq( HermiteH( k, 3.3333), k=0..3)];
a := [0.1000, -5.2000, 4.4120, 1.0001]:
t9 := sum( a[k+1]*HermiteH( k, -1.5000), k=0..3);
a := [-0.1234, 0.1234, -0.1234, 0.1234]:
t10 := sum( a[k+1]*HermiteH( k, 0.2211), k=0..3);
=#
