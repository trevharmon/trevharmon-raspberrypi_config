# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::boot {

  $start_x = $::raspberrypi_config::start_x ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::start_x,
  }
  $start_debug = $::raspberrypi_config::start_debug ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::start_debug,
  }
  $disable_commandline_tags = $::raspberrypi_config::disable_commandline_tags ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disable_commandline_tags,
  }
  $arm_64bit = $::raspberrypi_config::arm_64bit ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::arm_64bit,
  }
  $arm_control = $::raspberrypi_config::arm_control ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::arm_control,
  }
  $kernel_old = $::raspberrypi_config::kernel_old ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::kernel_old,
  }

  $ramfsfile = $::raspberrypi_config::ramfsfile ? {
    String  => [$::raspberrypi_config::ramfsfile],
    Array   => $::raspberrypi_config::ramfsfile,
    default => undef,
  }

  $disable_splash = $::raspberrypi_config::disable_splash ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disable_splash,
  }
  $enable_gic = $::raspberrypi_config::enable_gic ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::enable_gic,
  }

  concat::fragment { "${config_file} Boot":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/boot.epp', {
      'start_file'               => $::raspberrypi_config::start_file,
      'fixup_file'               => $::raspberrypi_config::fixup_file,
      'start_x'                  => $start_x,
      'start_debug'              => $start_debug,
      'disable_commandline_tags' => $disable_commandline_tags,
      'cmdline'                  => $::raspberrypi_config::cmdline,
      'kernel'                   => $::raspberrypi_config::kernel,
      'arm_64bit'                => $arm_64bit,
      'arm_control'              => $arm_control,
      'kernel_address'           => $::raspberrypi_config::kernel_address,
      'kernel_old'               => $kernel_old,
      'ramfsfile'                => $ramfsfile,
      'ramfsaddr'                => $::raspberrypi_config::ramfsaddr,
      'initramfs_file'           => $::raspberrypi_config::initramfs_file,
      'initramfs_addr'           => $::raspberrypi_config::initramfs_addr,
      'init_uart_baud'           => $::raspberrypi_config::init_uart_baud,
      'init_uart_clock'          => $::raspberrypi_config::init_uart_clock,
      'bootcode_delay'           => $::raspberrypi_config::bootcode_delay,
      'boot_delay'               => $::raspberrypi_config::boot_delay,
      'boot_delay_ms'            => $::raspberrypi_config::boot_delay_ms,
      'disable_splash'           => $disable_splash,
      'enable_gic'               => $enable_gic,
    }),
    order   => '500',
  }

}
