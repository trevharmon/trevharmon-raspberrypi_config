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

  $gpu_mem      = $::raspberrypi_config::pgu_mem
  $gpu_mem_256  = $::raspberrypi_config::gpu_mem_256
  $gpu_mem_512  = $::raspberrypi_config::gpu_mem_512
  $gpu_mem_1024 = $::raspberrypi_config::gpu_mem_1024
  $memory       = $facts['raspberry_pi_model']['memory']

  if $gpu_mem != undef {
    # Check for overridden values
    if $gpu_mem_256 != undef {
      raspberrypi_config::warning { 'gpu_mem_256 will override gpu_mem': }
    } 
    if $gpu_mem_512 != undef {
      raspberrypi_config::warning { 'gpu_mem_256 will override gpu_mem': }
    } 
    if $gpu_mem_1024 != undef {
      raspberrypi_config::warning { 'gpu_mem_256 will override gpu_mem': }
    }
    # Check for exceeding maximums
    case $memory {
      '256 MB': {
        if $gpu_mem > 192 {
          raspberrypi_config::warning { 'gpu_mem cannont be above 192 for this model': }
        }
      }
      '1 GB': {
        if $gpu_mem > 944 {
          raspberrypi_config::warning { 'gpu_mem cannont be above 944 for this model': }
        }
      }
      default: {
        if $gpu_mem > 1024 {
          raspberrypi_config::warning { 'gpu_mem cannont be above 448 for this model': }
        }
      }
    }
  }
  elsif $gpu_mem_256 != undef and $memory !~ /256/ {
    raspberrypi_config::warning{"Cannot use gpu_mem_256 for a model with memory ${memory}": }
  }
  elsif $gpu_mem_512 != undef and $memory !~ /512/ {
    raspberrypi_config::warning{"Cannot use gpu_mem_512 for a model with memory ${memory}": }
  }
  elsif $gpu_mem_1024 != undef and $memory != '1 GB' {
    raspberrypi_config::warning{"Cannot use gpu_mem_1024 for a model with memory ${memory}": }
  }

  concat::fragment { "${config_file} Memory":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/memory.epp', {
      'gpu_mem'         => $pgu_mem,
      'gpu_mem_256'     => $gpu_mem_256,
      'gpu_mem_512'     => $gpu_mem_512,
      'gpu_mem_1024'    => $gpu_mem_1024,
      'disable_l2cache' => $disable_l2cache,
    }),
    order   => '100',
  }

}
