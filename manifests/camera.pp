# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::camera {

  concat::fragment { "${config_file} Camera":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/camera.pp', {
      'disable_camera_led' => $::raspberrypi_config::disable_camera_led,
    }),
    order   => '400',
  }

}
