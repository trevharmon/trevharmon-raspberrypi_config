# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::camera {

  $disable_camera_led = $::raspberrypi_config::disable_camera_led ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disable_camera_led,
  }

  concat::fragment { "${config_file} Camera":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/camera.pp', {
      'disable_camera_led' => $disable_camera_led,
    }),
    order   => '400',
  }

}
