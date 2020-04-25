note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_STATISTICS_SHORT_FUNCTIONS_API


feature -- Access

	gsl_stats_short_mean (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_mean (data.area.base_address, stride, n)
		end

	gsl_stats_short_variance (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_variance (data.area.base_address, stride, n)
		end

	gsl_stats_short_sd (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_sd (data.area.base_address, stride, n)
		end

	gsl_stats_short_variance_with_fixed_mean (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_variance_with_fixed_mean (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_sd_with_fixed_mean (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_sd_with_fixed_mean (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_tss (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_tss (data.area.base_address, stride, n)
		end

	gsl_stats_short_tss_m (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_tss_m (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_absdev (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_absdev (data.area.base_address, stride, n)
		end

	gsl_stats_short_skew (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_skew (data.area.base_address, stride, n)
		end

	gsl_stats_short_kurtosis (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_kurtosis (data.area.base_address, stride, n)
		end

	gsl_stats_short_lag1_autocorrelation (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_lag1_autocorrelation (data.area.base_address, stride, n)
		end

	gsl_stats_short_covariance (data1: ARRAY [INTEGER]; stride1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_covariance (data1.area.base_address, stride1, data2.area.base_address, stride2, n)
		end

	gsl_stats_short_correlation (data1: ARRAY [INTEGER]; stride1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_correlation (data1.area.base_address, stride1, data2.area.base_address, stride2, n)
		end

	gsl_stats_short_spearman (data1: ARRAY [INTEGER]; stride1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n: INTEGER; work: ARRAY [REAL_64]): REAL_64 
		do
			Result := c_gsl_stats_short_spearman (data1.area.base_address, stride1, data2.area.base_address, stride2, n, work.area.base_address)
		end

	gsl_stats_short_variance_m (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_variance_m (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_sd_m (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_sd_m (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_absdev_m (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_absdev_m (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_skew_m_sd (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64; sd: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_skew_m_sd (data.area.base_address, stride, n, mean, sd)
		end

	gsl_stats_short_kurtosis_m_sd (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64; sd: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_kurtosis_m_sd (data.area.base_address, stride, n, mean, sd)
		end

	gsl_stats_short_lag1_autocorrelation_m (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_lag1_autocorrelation_m (data.area.base_address, stride, n, mean)
		end

	gsl_stats_short_covariance_m (data1: ARRAY [INTEGER]; stride1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n: INTEGER; mean1: REAL_64; mean2: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_covariance_m (data1.area.base_address, stride1, data2.area.base_address, stride2, n, mean1, mean2)
		end

	gsl_stats_short_pvariance (data1: ARRAY [INTEGER]; stride1: INTEGER; n1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n2: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_pvariance (data1.area.base_address, stride1, n1, data2.area.base_address, stride2, n2)
		end

	gsl_stats_short_ttest (data1: ARRAY [INTEGER]; stride1: INTEGER; n1: INTEGER; data2: ARRAY [INTEGER]; stride2: INTEGER; n2: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_ttest (data1.area.base_address, stride1, n1, data2.area.base_address, stride2, n2)
		end

	gsl_stats_short_max (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): INTEGER 
		do
			Result := c_gsl_stats_short_max (data.area.base_address, stride, n)
		end

	gsl_stats_short_min (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): INTEGER 
		do
			Result := c_gsl_stats_short_min (data.area.base_address, stride, n)
		end

	gsl_stats_short_minmax (min: POINTER; max: POINTER; data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER) 
		do
			c_gsl_stats_short_minmax (min, max, data.area.base_address, stride, n)
		end

	gsl_stats_short_max_index (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): INTEGER 
		do
			Result := c_gsl_stats_short_max_index (data.area.base_address, stride, n)
		end

	gsl_stats_short_min_index (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): INTEGER 
		do
			Result := c_gsl_stats_short_min_index (data.area.base_address, stride, n)
		end

	gsl_stats_short_minmax_index (min_index: POINTER; max_index: POINTER; data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER) 
		do
			c_gsl_stats_short_minmax_index (min_index, max_index, data.area.base_address, stride, n)
		end

	gsl_stats_short_select (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; k: INTEGER): INTEGER 
		do
			Result := c_gsl_stats_short_select (data.area.base_address, stride, n, k)
		end

	gsl_stats_short_median_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_median_from_sorted_data (sorted_data.area.base_address, stride, n)
		end

	gsl_stats_short_median (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_median (sorted_data.area.base_address, stride, n)
		end

	gsl_stats_short_quantile_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; f: REAL_64): REAL_64 
		do
			Result := c_gsl_stats_short_quantile_from_sorted_data (sorted_data.area.base_address, stride, n, f)
		end

	gsl_stats_short_trmean_from_sorted_data (trim: REAL_64; sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_trmean_from_sorted_data (trim, sorted_data.area.base_address, stride, n)
		end

	gsl_stats_short_gastwirth_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER): REAL_64 
		do
			Result := c_gsl_stats_short_gastwirth_from_sorted_data (sorted_data.area.base_address, stride, n)
		end

	gsl_stats_short_mad0 (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [REAL_64]): REAL_64 
		do
			Result := c_gsl_stats_short_mad0 (data.area.base_address, stride, n, work.area.base_address)
		end

	gsl_stats_short_mad (data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [REAL_64]): REAL_64 
		do
			Result := c_gsl_stats_short_mad (data.area.base_address, stride, n, work.area.base_address)
		end

	gsl_stats_short_sn0_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [INTEGER]): INTEGER 
		do
			Result := c_gsl_stats_short_sn0_from_sorted_data (sorted_data.area.base_address, stride, n, work.area.base_address)
		end

	gsl_stats_short_sn_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [INTEGER]): REAL_64 
		do
			Result := c_gsl_stats_short_sn_from_sorted_data (sorted_data.area.base_address, stride, n, work.area.base_address)
		end

	gsl_stats_short_qn0_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [INTEGER]; work_int: ARRAY [INTEGER]): INTEGER 
		do
			Result := c_gsl_stats_short_qn0_from_sorted_data (sorted_data.area.base_address, stride, n, work.area.base_address, work_int.area.base_address)
		end

	gsl_stats_short_qn_from_sorted_data (sorted_data: ARRAY [INTEGER]; stride: INTEGER; n: INTEGER; work: ARRAY [INTEGER]; work_int: ARRAY [INTEGER]): REAL_64 
		do
			Result := c_gsl_stats_short_qn_from_sorted_data (sorted_data.area.base_address, stride, n, work.area.base_address, work_int.area.base_address)
		end

feature -- Externals

	c_gsl_stats_short_mean (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_mean ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_variance (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_variance ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_sd (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_sd ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_variance_with_fixed_mean (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_variance_with_fixed_mean ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_sd_with_fixed_mean (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_sd_with_fixed_mean ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_tss (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_tss ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_tss_m (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_tss_m ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_absdev (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_absdev ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_skew (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_skew ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_kurtosis (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_kurtosis ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_lag1_autocorrelation (data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_lag1_autocorrelation ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_covariance (data1: POINTER; stride1: INTEGER; data2: POINTER; stride2: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_covariance ($data1, (size_t const)$stride1, $data2, (size_t const)$stride2, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_correlation (data1: POINTER; stride1: INTEGER; data2: POINTER; stride2: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_correlation ($data1, (size_t const)$stride1, $data2, (size_t const)$stride2, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_spearman (data1: POINTER; stride1: INTEGER; data2: POINTER; stride2: INTEGER; n: INTEGER; work: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_spearman ($data1, (size_t const)$stride1, $data2, (size_t const)$stride2, (size_t const)$n, $work);
			]"
		end

	c_gsl_stats_short_variance_m (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_variance_m ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_sd_m (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_sd_m ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_absdev_m (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_absdev_m ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_skew_m_sd (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64; sd: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_skew_m_sd ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean, (double const)$sd);
			]"
		end

	c_gsl_stats_short_kurtosis_m_sd (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64; sd: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_kurtosis_m_sd ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean, (double const)$sd);
			]"
		end

	c_gsl_stats_short_lag1_autocorrelation_m (data: POINTER; stride: INTEGER; n: INTEGER; mean: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_lag1_autocorrelation_m ($data, (size_t const)$stride, (size_t const)$n, (double const)$mean);
			]"
		end

	c_gsl_stats_short_covariance_m (data1: POINTER; stride1: INTEGER; data2: POINTER; stride2: INTEGER; n: INTEGER; mean1: REAL_64; mean2: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_covariance_m ($data1, (size_t const)$stride1, $data2, (size_t const)$stride2, (size_t const)$n, (double const)$mean1, (double const)$mean2);
			]"
		end

	c_gsl_stats_short_pvariance (data1: POINTER; stride1: INTEGER; n1: INTEGER; data2: POINTER; stride2: INTEGER; n2: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_pvariance ($data1, (size_t const)$stride1, (size_t const)$n1, $data2, (size_t const)$stride2, (size_t const)$n2);
			]"
		end

	c_gsl_stats_short_ttest (data1: POINTER; stride1: INTEGER; n1: INTEGER; data2: POINTER; stride2: INTEGER; n2: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_ttest ($data1, (size_t const)$stride1, (size_t const)$n1, $data2, (size_t const)$stride2, (size_t const)$n2);
			]"
		end

	c_gsl_stats_short_max (data: POINTER; stride: INTEGER; n: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_max ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_min (data: POINTER; stride: INTEGER; n: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_min ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_minmax (min: POINTER; max: POINTER; data: POINTER; stride: INTEGER; n: INTEGER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_stats_short_minmax ((short*)$min, (short*)$max, $data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_max_index (data: POINTER; stride: INTEGER; n: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_max_index ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_min_index (data: POINTER; stride: INTEGER; n: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_min_index ($data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_minmax_index (min_index: POINTER; max_index: POINTER; data: POINTER; stride: INTEGER; n: INTEGER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_stats_short_minmax_index ((size_t*)$min_index, (size_t*)$max_index, $data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_select (data: POINTER; stride: INTEGER; n: INTEGER; k: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_select ($data, (size_t const)$stride, (size_t const)$n, (size_t const)$k);
			]"
		end

	c_gsl_stats_short_median_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_median_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_median (sorted_data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_median ($sorted_data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_quantile_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER; f: REAL_64): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_quantile_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n, (double const)$f);
			]"
		end

	c_gsl_stats_short_trmean_from_sorted_data (trim: REAL_64; sorted_data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_trmean_from_sorted_data ((double const)$trim, $sorted_data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_gastwirth_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_gastwirth_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n);
			]"
		end

	c_gsl_stats_short_mad0 (data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_mad0 ($data, (size_t const)$stride, (size_t const)$n, $work);
			]"
		end

	c_gsl_stats_short_mad (data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_mad ($data, (size_t const)$stride, (size_t const)$n, $work);
			]"
		end

	c_gsl_stats_short_sn0_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_Sn0_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n, $work);
			]"
		end

	c_gsl_stats_short_sn_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_Sn_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n, $work);
			]"
		end

	c_gsl_stats_short_qn0_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER; work_int: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_Qn0_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n, $work, $work_int);
			]"
		end

	c_gsl_stats_short_qn_from_sorted_data (sorted_data: POINTER; stride: INTEGER; n: INTEGER; work: POINTER; work_int: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_stats_short_Qn_from_sorted_data ($sorted_data, (size_t const)$stride, (size_t const)$n, $work, $work_int);
			]"
		end

feature -- Externals Address

end