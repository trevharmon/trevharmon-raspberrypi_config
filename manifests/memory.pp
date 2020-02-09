# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::memory {

  $disable_l2cache = $::raspberrypi_config::disablel2cache ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disablel2cache,
  }

  concat::fragment { "${config_file} Memory":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/memory.epp', {
      'gpu_mem'         => $::raspberrypi_config::pgu_mem,
      'gpu_mem_256'     => $::raspberrypi_config::gpu_mem_256,
      'gpu_mem_512'     => $::raspberrypi_config::gpu_mem_512,
      'gpu_mem_1024'    => $::raspberrypi_config::gpu_mem_1024,
      'disable_l2cache' => $disable_l2cache,
    }),
    order   => '100',
  }

}
