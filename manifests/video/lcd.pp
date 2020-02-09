# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::lcd {

  concat::fragment { "${config_file} Video LCD":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/video/lcd.epp', {
      'ignore_lcd'                  => $::raspberrypi_config::ignore_lcd,
      'display_default_lcd'         => $::raspberrypi_config::display_default_lcd,
      'lcd_frames'                  => $::raspberrypi_config::lcd_frame,
      'lcd_rotate'                  => $::raspberrypi_config::lcd_rotate,
      'disable_touchscreen'         => $::raspberrypi_config::disable_touchscreen,
      'enable_dpi_lcd'              => $::raspberrypi_config::enable_dpi_lcd,
      'dpi_group'                   => $::raspberrypi_config::dpi_group,
      'dpi_mode'                    => $::raspberrypi_config::dpi_mode,
      'dpi_timings_h_active_pixels' => $::raspberrypi_config::dpi_timings_h_active_pixels,
      'dpi_timings_h_sync_polarity' => $::raspberrypi_config::dpi_timings_h_sync_polarity,
      'dpi_timings_h_front_porch'   => $::raspberrypi_config::dpi_timings_h_front_porch,
      'dpi_timings_h_sync_pulse'    => $::raspberrypi_config::dpi_timings_h_sync_pulse,
      'dpi_timings_h_back_porch'    => $::raspberrypi_config::dpi_timings_h_back_porch,
      'dpi_timings_v_active_lines'  => $::raspberrypi_config::dpi_timings_v_active_lines,
      'dpi_timings_v_sync_polarity' => $::raspberrypi_config::dpi_timings_v_sync_polarity,
      'dpi_timings_v_front_porch'   => $::raspberrypi_config::dpi_timings_v_front_porch,
      'dpi_timings_v_sync_pulse'    => $::raspberrypi_config::dpi_timings_sync_pulse,
      'dpi_timings_v_back_porch'    => $::raspberrypi_config::dpi_timings_v_back_porch,
      'dpi_timings_v_sync_offset_a' => $::raspberrypi_config::dpi_timings_v_sync_offset_a,
      'dpi_timings_v_sync_offset_b' => $::raspberrypi_config::dpi_timings_v_sync_offset_b,
      'dpi_timings_pixel_rep'       => $::raspberrypi_config::dpi_timings_pixel_rep,
      'dpi_timings_frame_rate'      => $::raspberrypi_config::dpi_timings_frame_rate,
      'dpi_timings_interlaced'      => $::raspberrypi_config::dpi_timings_interlaced,
      'dpi_timings_pixel_freq'      => $::raspberrypi_config::dpi_timings_pixel_freq,
      'dpi_timings_aspect_ratio'    => $::raspberrypi_config::dpi_timings_aspect_ratio,
    }),
    order   => '340',
  }

}
