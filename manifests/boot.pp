# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::boot {

  concat::fragment { "${config_file} Boot":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/boot.epp', {
      'start_file'               => $::raspberrypi_config::start_file,
      'fixup_file'               => $::raspberrypi_config::fixup_file,
      'start_x'                  => $::raspberrypi_config::start_x,
      'start_debug'              => $::raspberrypi_config::start_debug,
      'disable_commandline_tags' => $::raspberrypi_config::disable_commandline_tags,
      'cmdline'                  => $::raspberrypi_config::cmdline,
      'kernel'                   => $::raspberrypi_config::kernel,
      'arm_64bit'                => $::raspberrypi_config::arm_64bit,
      'arm_control'              => $::raspberrypi_config::arm_control,
      'kernel_address'           => $::raspberrypi_config::kernel_address,
      'kernel_old'               => $::raspberrypi_config::kernel_old,
      'ramfsfile'                => $::raspberrypi_config::ramfsfile,
      'ramfsaddr'                => $::raspberrypi_config::ramfsaddr,
      'initramfs_file'           => $::raspberrypi_config::initramfs_file,
      'initramfs_addr'           => $::raspberrypi_config::initramfs_addr,
      'init_uart_baud'           => $::raspberrypi_config::init_uart_baud,
      'init_uart_clock'          => $::raspberrypi_config::init_uart_clock,
      'bootcode_delay'           => $::raspberrypi_config::bootcode_delay,
      'boot_delay'               => $::raspberrypi_config::boot_delay,
      'boot_delay_ms'            => $::raspberrypi_config::boot_delay_ms,
      'disable_splash'           => $::raspberrypi_config::disable_splash,
      'enable_gic'               => $::raspberrypi_config::enable_gic,
    }),
    order   => '500',
  }

}
