
#Automatically generated list of dummy opaque pointer types
type enumgsl_integration_qawo_enum; end
type gsl_bspline_deriv_workspace; end
type gsl_bspline_workspace; end
type gsl_comparison_fn_t; end
type gsl_complex_packed_ptr; end
type gsl_dht; end
type gsl_integration_cquad_workspace; end
type gsl_integration_glfixed_table; end
type gsl_integration_qawo_table; end
type gsl_integration_qaws_table; end
type gsl_integration_workspace; end
type gsl_interp; end
type gsl_interp_accel; end
type gsl_interp_type; end
type gsl_min_fminimizer; end
type gsl_min_fminimizer_type; end
typealias gsl_mode_t Cint
type gsl_monte_miser_params; end
type gsl_monte_miser_state; end
type gsl_monte_plain_state; end
type gsl_monte_vegas_params; end
type gsl_monte_vegas_state; end
type gsl_multifit_fdfsolver; end
type gsl_multifit_fdfsolver_type; end
type gsl_multifit_fsolver; end
type gsl_multifit_fsolver_type; end
type gsl_multifit_linear_workspace; end
type gsl_multimin_fdfminimizer; end
type gsl_multimin_fdfminimizer_type; end
type gsl_multimin_fminimizer; end
type gsl_multimin_fminimizer_type; end
type gsl_multiroot_fdfsolver; end
type gsl_multiroot_fdfsolver_type; end
type gsl_multiroot_fsolver; end
type gsl_multiroot_fsolver_type; end
type gsl_ntuple_select_fn; end
type gsl_ntuple_value_fn; end
type gsl_odeiv2_control; end
type gsl_odeiv2_control_type; end
type gsl_odeiv2_driver; end
type gsl_odeiv2_evolve; end
type gsl_odeiv2_step; end
type gsl_odeiv2_step_type; end
type gsl_poly_complex_workspace; end
type gsl_qrng; end
type gsl_qrng_type; end
type gsl_ran_discrete_t; end
type gsl_rng; end
type gsl_rng_type; end
type gsl_root_fdfsolver; end
type gsl_root_fdfsolver_type; end
type gsl_root_fsolver; end
type gsl_root_fsolver_type; end
type gsl_sf_mathieu_workspace; end
type gsl_siman_copy_ruct_t; end
type gsl_spline; end
type gsl_sum_levin_u_workspace; end
type gsl_sum_levin_utrunc_workspace; end
type gsl_wavelet; end
type gsl_wavelet_direction; end
type gsl_wavelet_type; end
type gsl_wavelet_workspace; end

#Automatically generated include list
#
# NOTE: This file has now been hand-edited to begin the process of
#       moving away from having separate underscore and non-underscore
#       versions of various source files both being loaded.  With Julia
#       v0.5, the approach of using method redefinition will not be viable.
#       Longer term, all of the GSL wrappers might be recreated using Clang.jl

include("../src/_22_1_The_histogram_struct.jl")
include("../src/_5_1_Representation_of_complex_numbers.jl")
include("../src/_22_13_The_2D_histogram_struct.jl")
include("../src/_3_3_Error_Handlers.jl")
include("../src/_22_21_Resampling_from_2D_histograms.jl")
include("../src/_8_2_Blocks.jl")
include("../src/_25_2_Simulated_Annealing_functions.jl")
include("35_3_Providing_the_function_to_solve.jl")
include("../src/_24_1_Interface.jl")
include("33_4_Providing_the_function_to_solve.jl")
include("../src/_11_1_The_Multiset_struct.jl")
include("../src/_8_4_Matrices.jl")
include("../src/_10_1_The_Combination_struct.jl")
include("../src/_38_3_Providing_the_Function_to_be_Minimized.jl")
include("../src/_7_2_The_gsl_sf_result_struct.jl")
include("../src/_8_3_Vectors.jl")
include("../src/_36_4_Providing_a_function_to_minimize.jl")
include("../src/_29_1_Definitions.jl")
include("../src/_9_1_The_Permutation_struct.jl")
include("../src/_26_1_Defining_the_ODE_System.jl")
include("../src/_23_1_The_ntuple_struct.jl")
include("../src/_22_10_The_histogram_probability_distribution_struct.jl")
include("../src/_22_14_2D_Histogram_allocation.jl")
include("../src/_22_19_2D_Histogram_Operations.jl")
include("../src/_22_18_2D_Histogram_Statistics.jl")
include("../src/_7_8_1_3-j_Symbols.jl")
include("../src/_7_8_2_6-j_Symbols.jl")
include("../src/_7_8_3_9-j_Symbols.jl")
include("../src/_21_2_Absolute_deviation.jl")
include("../src/_30_2_Acceleration_functions_without_error_estimation.jl")
include("../src/_30_1_Acceleration_functions.jl")
include("../src/_10_3_Accessing_combination_elements.jl")
include("../src/_11_3_Accessing_multiset_elements.jl")
include("../src/_9_3_Accessing_permutation_elements.jl")
include("../src/_26_3_Adaptive_Step-size_Control.jl")
include("../src/_7_4_1_Airy_Functions.jl")
include("../src/_7_26_3_Angular_Mathieu_Functions.jl")
include("../src/_9_6_Applying_Permutations.jl")
include("../src/_4_8_Approximate_Comparison_of_Floating_Point_Numbers.jl")
include("../src/_7_17_6_Arctangent_Integral.jl")
include("../src/_7_24_2_Associated_Legendre_Polynomials_and_Spherical_Harmonics.jl")
include("../src/_21_4_Autocorrelation.jl")
include("../src/_29_3_Auxiliary_Functions.jl")
include("../src/_19_3_Auxiliary_quasi-random_number_generator_functions.jl")
include("../src/_18_5_Auxiliary_random_number_generator_functions.jl")
include("../src/_7_19_5_Beta_Functions.jl")
include("../src/_8_2_1_Block_allocation.jl")
include("../src/_7_13_5_Carlson_Forms.jl")
include("../src/_29_4_Chebyshev_Series_Evaluation.jl")
include("../src/_7_31_1_Circular_Trigonometric_Functions.jl")
include("../src/_7_6_Clausen_Functions.jl")
include("../src/_23_6_Closing_an_ntuple_file.jl")
include("../src/_10_2_Combination_allocation.jl")
include("../src/_10_5_Combination_functions.jl")
include("../src/_10_4_Combination_properties.jl")
include("../src/_7_15_2_Complementary_Error_Function.jl")
include("../src/_7_18_1_Complete_Fermi-Dirac_Integrals.jl")
include("../src/_7_11_2_Complex_Argument.jl")
include("../src/_38_8_Computing_the_covariance_matrix_of_best_fit_parameters.jl")
include("../src/_7_24_3_Conical_Functions.jl")
include("../src/_39_3_Constructing_the_knots_vector.jl")
include("../src/_7_31_4_Conversion_Functions.jl")
include("../src/_22_15_Copying_2D_Histograms.jl")
include("../src/_22_3_Copying_Histograms.jl")
include("../src/_18_7_Copying_random_number_generator_state.jl")
include("../src/_21_6_Correlation.jl")
include("../src/_7_7_3_Coulomb_Wave_Function_Normalization_Constant.jl")
include("../src/_7_7_2_Coulomb_Wave_Functions.jl")
include("../src/_21_5_Covariance.jl")
include("../src/_17_11_CQUAD_doubly-adaptive_integration.jl")
include("../src/_29_2_Creation_and_Calculation_of_Chebyshev_Series.jl")
include("../src/_6_4_Cubic_Equations.jl")
include("../src/_7_9_Dawson_Function.jl")
include("../src/_7_10_Debye_Functions.jl")
include("../src/_29_5_Derivatives_and_Integrals.jl")
include("../src/_7_4_2_Derivatives_of_Airy_Functions.jl")
include("../src/_7_28_1_Digamma_Function.jl")
include("../src/_32_2_Functions.jl")
include("../src/_6_2_Divided_Difference_Representation_of_Polynomials.jl")
include("../src/_26_5_Driver.jl")
include("../src/_31_3_1_Wavelet_transforms_in_one_dimension.jl")
include("../src/_31_3_2_Wavelet_transforms_in_two_dimension.jl")
include("../src/_31_2_Initialization.jl")
include("../src/_7_17_2_Ei(x).jl")
include("../src/_7_17_4_Ei_3(x).jl")
include("../src/_4_3_Elementary_Functions.jl")
include("../src/_7_12_Elementary_Operations.jl")
include("../src/_7_14_Elliptic_Functions_(Jacobi).jl")
include("../src/_3_2_Error_Codes.jl")
include("../src/_7_15_1_Error_Function.jl")
include("../src/_7_32_4_Eta_Function.jl")
include("../src/_39_5_Evaluation_of_B-spline_derivatives.jl")
include("../src/_39_4_Evaluation_of_B-splines.jl")
include("../src/_27_5_Evaluation_of_Interpolating_Functions.jl")
include("../src/_26_4_Evolution.jl")
include("../src/_7_16_1_Exponential_Function.jl")
include("../src/_7_17_1_Exponential_Integral.jl")
include("../src/_7_16_3_Exponentiation_With_Error_Estimate.jl")
include("../src/_7_19_2_Factorials.jl")
include("../src/_17_12_Gauss-Legendre_integration.jl")
include("../src/_7_19_1_Gamma_Functions.jl")
include("../src/_7_20_Gegenbauer_Functions.jl")
include("../src/_20_28_General_Discrete_Distributions.jl")
include("../src/_6_5_General_Polynomial_Equations.jl")
include("../src/_21_3_Higher_moments_(skewness_and_kurtosis).jl")
include("../src/_27_6_Higher-level_Interface.jl")
include("../src/_22_2_Histogram_allocation.jl")
include("../src/_22_7_Histogram_Operations.jl")
include("../src/_22_6_Histogram_Statistics.jl")
include("../src/_23_7_Histogramming_ntuple_values.jl")
include("../src/_7_32_3_Hurwitz_Zeta_Function.jl")
include("../src/_7_17_3_Hyperbolic_Integrals.jl")
include("../src/_7_31_3_Hyperbolic_Trigonometric_Functions.jl")
include("../src/_7_21_Hypergeometric_Functions.jl")
include("../src/_7_19_6_Incomplete_Beta_Function.jl")
include("../src/_7_18_2_Incomplete_Fermi-Dirac_Integrals.jl")
include("../src/_7_19_4_Incomplete_Gamma_Functions.jl")
include("../src/_27_4_Index_Look-up_and_Acceleration.jl")
include("../src/_4_2_Infinities_and_Not-a-number.jl")
include("../src/_39_2_Initializing_the_B-splines_solver.jl")
include("../src/_34_3_Initializing_the_Minimizer.jl")
include("../src/_36_3_Initializing_the_Multidimensional_Minimizer.jl")
include("35_2_Initializing_the_Solver.jl")
include("../src/_38_2_Initializing_the_Solver.jl")
include("33_3_Initializing_the_Solver.jl")
include("../src/_27_2_Interpolation_Functions.jl")
include("../src/_27_3_Interpolation_Types.jl")
include("../src/_7_5_10_Irregular_Bessel_FunctionsFractional_Order.jl")
include("../src/_7_5_2_Irregular_Cylindrical_Bessel_Functions.jl")
include("../src/_7_5_12_Irregular_Modified_Bessel_FunctionsFractional_Order.jl")
include("../src/_7_5_4_Irregular_Modified_Cylindrical_Bessel_Functions.jl")
include("../src/_7_5_8_Irregular_Modified_Spherical_Bessel_Functions.jl")
include("../src/_7_5_6_Irregular_Spherical_Bessel_Functions.jl")
include("../src/_38_4_Iteration.jl")
include("35_4_Iteration.jl")
include("../src/_7_22_Laguerre_Functions.jl")
include("../src/_7_23_Lambert_W_Functions.jl")
include("../src/_7_13_3_Legendre_Form_of_Complete_Elliptic_Integrals.jl")
include("../src/_7_13_4_Legendre_Form_of_Incomplete_Elliptic_Integrals.jl")
include("../src/_7_24_1_Legendre_Polynomials.jl")
include("../src/_37_3_Linear_fitting_without_a_constant_term.jl")
include("../src/_37_2_Linear_regression.jl")
include("../src/_7_15_3_Log_Complementary_Error_Function.jl")
include("../src/_7_25_Logarithm_and_Related_Functions.jl")
include("../src/_7_26_2_Mathieu_Function_Characteristic_Values.jl")
include("../src/_7_26_1_Mathieu_Function_Workspace.jl")
include("../src/_4_7_Maximum_and_Minimum_functions.jl")
include("../src/_21_8_Maximum_and_Minimum_values.jl")
include("../src/_21_1_Mean,_Standard_Deviation_and_Variance.jl")
include("../src/_21_9_Median_and_Percentiles.jl")
include("../src/_34_5_Iteration.jl")
include("../src/_34_6_Stopping_Parameters.jl")
include("../src/_24_3_MISER.jl")
include("../src/_37_4_Multi-parameter_fitting.jl")
include("../src/_36_5_Iteration.jl")
include("../src/_36_6_Stopping_Criteria.jl")
include("../src/_11_2_Multiset_allocation.jl")
include("../src/_11_5_Multiset_functions.jl")
include("../src/_11_4_Multiset_properties.jl")
include("../src/_7_7_1_Normalized_Hydrogenic_Bound_States.jl")
include("../src/_28_1_Functions.jl")
include("../src/_39_6_Greville_abscissae.jl")
include("../src/_9_2_Permutation_allocation.jl")
include("../src/_9_5_Permutation_functions.jl")
include("../src/_9_4_Permutation_properties.jl")
include("../src/_9_8_Permutations_in_cyclic_form.jl")
include("../src/_24_2_PLAIN_Monte_Carlo.jl")
include("../src/_7_19_3_Pochhammer_Symbol.jl")
include("../src/_7_28_3_Polygamma_Function.jl")
include("../src/_6_1_Polynomial_Evaluation.jl")
include("../src/_7_27_Power_Function.jl")
include("../src/_7_15_4_Probability_functions.jl")
include("../src/_17_3_QAG_adaptive_integration.jl")
include("../src/_17_6_QAGI_adaptive_integration_on_infinite_intervals.jl")
include("../src/_17_5_QAGP_adaptive_integration_with_known_singular_points.jl")
include("../src/_17_4_QAGS_adaptive_integration_with_singularities.jl")
include("../src/_17_7_QAWC_adaptive_integration_for_Cauchy_principal_values.jl")
include("../src/_17_10_QAWF_adaptive_integration_for_Fourier_integrals.jl")
include("../src/_17_9_QAWO_adaptive_integration_for_oscillatory_functions.jl")
include("../src/_17_8_QAWS_adaptive_integration_for_singular_functions.jl")
include("../src/_17_2_QNG_non-adaptive_Gauss-Kronrod_integration.jl")
include("../src/_6_3_Quadratic_Equations.jl")
include("../src/_19_1_Quasi-random_number_generator_initialization.jl")
include("../src/_7_24_4_Radial_Functions_for_Hyperbolic_Space.jl")
include("../src/_7_26_4_Radial_Mathieu_Functions.jl")
include("../src/_18_6_Random_number_environment_variables.jl")
include("../src/_18_3_Random_number_generator_initialization.jl")
include("../src/_22_20_Reading_and_writing_2D_histograms.jl")
include("../src/_8_2_2_Reading_and_writing_blocks.jl")
include("../src/_10_6_Reading_and_writing_combinations.jl")
include("../src/_22_8_Reading_and_writing_histograms.jl")
include("../src/_11_6_Reading_and_writing_multisets.jl")
include("../src/_9_7_Reading_and_writing_permutations.jl")
include("../src/_18_8_Reading_and_writing_random_number_generator_state.jl")
include("../src/_23_5_Reading_ntuples.jl")
include("../src/_7_11_1_Real_Argument.jl")
include("../src/_7_5_9_Regular_Bessel_FunctionFractional_Order.jl")
include("../src/_7_5_1_Regular_Cylindrical_Bessel_Functions.jl")
include("../src/_7_5_11_Regular_Modified_Bessel_FunctionsFractional_Order.jl")
include("../src/_7_5_3_Regular_Modified_Cylindrical_Bessel_Functions.jl")
include("../src/_7_5_7_Regular_Modified_Spherical_Bessel_Functions.jl")
include("../src/_7_5_5_Regular_Spherical_Bessel_Functions.jl")
include("../src/_7_16_2_Relative_Exponential_Functions.jl")
include("../src/_41_1_Representation_of_floating_point_numbers.jl")
include("../src/_7_31_5_Restriction_Functions.jl")
include("../src/_7_32_2_Riemann_Zeta_Function_Minus_One.jl")
include("../src/_7_32_1_Riemann_Zeta_Function.jl")
include("33_6_Iteration.jl")
include("../src/_19_2_Sampling_from_a_quasi-random_number_generator.jl")
include("../src/_18_4_Sampling_from_a_random_number_generator.jl")
include("../src/_19_4_Saving_and_resorting_quasi-random_number_generator_state.jl")
include("../src/_38_5_Search_Stopping_Parameters.jl")
include("35_5_Search_Stopping_Parameters.jl")
include("33_7_Search_Stopping_Parameters.jl")
include("../src/_22_17_Searching_2D_histogram_ranges.jl")
include("../src/_22_5_Searching_histogram_ranges.jl")
include("../src/_41_2_Setting_up_your_IEEE_environment.jl")
include("../src/_20_38_Shuffling_and_Sampling.jl")
include("../src/_4_4_Small_integer_powers.jl")
include("../src/_12_1_Sorting_objects.jl")
include("../src/_20_23_Spherical_Vector_Distributions.jl")
include("../src/_26_2_Stepping_Functions.jl")
include("../src/_7_29_Synchrotron_Functions.jl")
include("../src/_20_30_The_Bernoulli_Distribution.jl")
include("../src/_20_20_The_Beta_Distribution.jl")
include("../src/_20_31_The_Binomial_Distribution.jl")
include("../src/_20_4_The_Bivariate_Gaussian_Distribution.jl")
include("../src/_20_8_The_Cauchy_Distribution.jl")
include("../src/_20_17_The_Chi-squared_Distribution.jl")
include("../src/_20_27_The_Dirichlet_Distribution.jl")
include("../src/_20_5_The_Exponential_Distribution.jl")
include("../src/_20_7_The_Exponential_Power_Distribution.jl")
include("../src/_20_18_The_F-distribution.jl")
include("../src/_20_15_The_Flat_(Uniform)_Distribution.jl")
include("../src/_20_14_The_Gamma_Distribution.jl")
include("../src/_20_2_The_Gaussian_Distribution.jl")
include("../src/_20_3_The_Gaussian_Tail_Distribution.jl")
include("../src/_20_35_The_Geometric_Distribution.jl")
include("../src/_20_36_The_Hypergeometric_Distribution.jl")
include("../src/_20_11_The_Landau_Distribution.jl")
include("../src/_20_6_The_Laplace_Distribution.jl")
include("../src/_20_12_The_Levy_alpha-Stable_Distributions.jl")
include("../src/_20_13_The_Levy_skew_alpha-Stable_Distribution.jl")
include("../src/_20_37_The_Logarithmic_Distribution.jl")
include("../src/_20_21_The_Logistic_Distribution.jl")
include("../src/_20_16_The_Lognormal_Distribution.jl")
include("../src/_20_32_The_Multinomial_Distribution.jl")
include("../src/_20_33_The_Negative_Binomial_Distribution.jl")
include("../src/_20_22_The_Pareto_Distribution.jl")
include("../src/_20_34_The_Pascal_Distribution.jl")
include("../src/_20_29_The_Poisson_Distribution.jl")
include("../src/_20_9_The_Rayleigh_Distribution.jl")
include("../src/_20_10_The_Rayleigh_Tail_Distribution.jl")
include("../src/_20_19_The_t-distribution.jl")
include("../src/_20_25_The_Type-1_Gumbel_Distribution.jl")
include("../src/_20_26_The_Type-2_Gumbel_Distribution.jl")
include("../src/_20_24_The_Weibull_Distribution.jl")
include("../src/_7_30_Transport_Functions.jl")
include("../src/_7_28_2_Trigamma_Function.jl")
include("../src/_7_31_2_Trigonometric_Functions_for_Complex_Arguments.jl")
include("../src/_7_31_6_Trigonometric_Functions_With_Error_Estimates.jl")
include("../src/_7_17_5_Trigonometric_Integrals.jl")
include("../src/_22_16_Updating_and_accessing_2D_histogram_elements.jl")
include("../src/_22_4_Updating_and_accessing_histogram_elements.jl")
include("../src/_24_4_VEGAS.jl")
include("../src/_21_7_Weighted_Samples.jl")
include("../src/_23_4_Writing_ntuples.jl")
include("../src/_7_4_3_Zeros_of_Airy_Functions.jl")
include("../src/_7_4_4_Zeros_of_Derivatives_of_Airy_Functions.jl")
include("../src/_7_5_13_Zeros_of_Regular_Bessel_Functions.jl")

