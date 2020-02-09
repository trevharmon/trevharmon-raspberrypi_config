# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::generic {

  concat::fragment { "${config_file} Video Generic":
    source  => $::raspberrypi_config/config_file,
    content => epp('raspberrypi_config/video/generic.epp', {
      'hdmi_force_hotplug'       => $::raspberrypi_config::hdmi_force_hotplug,
      'hdmi_ignore_hotplug'      => $::raspberrypi_config::hdmi_ignore_hotplug,
      'disable_overscan'         => $::raspberrypi_config::disable_overscan,
      'overscan_left'            => $::raspberrypi_config::overscan_left,
      'overscan_right'           => $::raspberrypi_config::overscan_right,
      'overscan_top'             => $::raspberrypi_config::overscan_top,
      'overscan_bottom'          => $::raspberrypi_config::overscan_bottom,
      'overscan_scale'           => $::raspberrypi_config::overscan_scale,
      'framebuffer_width'        => $::raspberrypi_config::framebuffer_width,
      'framebuffer_height'       => $::raspberrypi_config::framebuffer_height,
      'max_framebuffer_width'    => $::raspberrypi_config::max_framebuffer_width,
      'max_framebuffer_height'   => $::raspberrypi_config::max_framebuffer_height,
      'framebuffer_depth'        => $::raspberrypi_config::framebuffer_depth,
      'framebuffer_ignore_alpha' => $::raspberrypi_config::framebuffer_ignore_alpha,
      'framebuffer_priority'     => $::raspberrypi_config::framebuffer_priority,
      'test_mode'                => $::raspberrypi_config::test_mode,
      'display_hdmi_rotate'      => $::raspberrypi_config::display_hdmi_rotate,
      'display_lcd_rotate'       => $::raspberrypi_config::display_lcd_rotate,
      'display_rotate'           => $::raspberrypi_config::display_rotate,
      'disable_fw_kms_setup'     => $::raspberrypi_config::disable_fw_kms_setup,
      'dispmanx_offline'         => $::raspberrypi_config::dispmanx_offline,
  }),
    order   => '350',
  }

}
