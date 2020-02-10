# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::overclock {

  $force_turbo = $::raspberrypi_config::force_turbo ? {
    Undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::force_turbo,
  }
  $never_over_voltage = $::raspberrypi_config::never_over_voltage ? {
    Undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::never_over_voltage,
  }
  $disable_auto_turbo = $::raspberrypi_config::disable_auto_turbo ? {
    Undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disable_auto_turbo,
  }

  concat::fragment { "${config_file} Overclock":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/overclock.epp', {
      'arm_freq'             => $::raspberrypi_config::arm_freq,
      'gpu_freq'             => $::raspberrypi_config::gpu_freq,
      'core_freq'            => $::raspberrypi_config::core_freq,
      'h264_freq'            => $::raspberrypi_config::h264_freq,
      'isp_freq'             => $::raspberrypi_config::isp_freq,
      'v3d_freq'             => $::raspberrypi_config::v3d_freq,
      'sdram_freq'           => $::raspberrypi_config::sdram_freq,
      'over_voltage'         => $::raspberrypi_config::over_voltage,
      'over_voltage_sdram'   => $::raspberrypi_config::over_voltage_sdram,
      'over_voltage_sdram_c' => $::raspberrypi_config::over_voltage_sdram_c,
      'over_voltage_sdram_i' => $::raspberrypi_config::over_voltage_sdram_i,
      'over_voltage_sdram_p' => $::raspberrypi_config::over_voltage_sdram_p,
      'force_turbo'          => $force_turbo,
      'initial_turbo'        => $::raspberrypi_config::initial_turbo,
      'arm_freq_min'         => $::raspberrypi_config::arm_freq_min,
      'core_freq_min'        => $::raspberrypi_config::core_freq_min,
      'gpu_freq_min'         => $::raspberrypi_config::gpu_free_min,
      'h264_freq_min'        => $::raspberrypi_config::h264_freq_min,
      'isp_freq_min'         => $::raspberrypi_config::isp_freq_min,
      'v3d_freq_min'         => $::raspberrypi_config::v3d_freq_min,
      'sdram_freq_min'       => $::raspberrypi_config::sdram_freq_min,
      'over_voltage_min'     => $::raspberrypi_config::over_voltage_min,
      'temp_limit'           => $::raspberrypi_config::temp_limit,
      'temp_soft_limit'      => $::raspberrypi_config::temp_soft_limit,
      'never_over_voltage'   => $never_over_voltage,
      'disable_auto_turbo'   => $disable_auto_turbo,
    }),
    order   => '700',
  }

}
