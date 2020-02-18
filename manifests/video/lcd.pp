# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::lcd {

  $ignore_lcd = $::raspberrypi_config::ignore_lcd ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::ignore_lcd,
  }
  $display_default_lcd = $::raspberrypi_config::display_default_lcd ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::display_default_lcd,
  }
  $disable_touchscreen = $::raspberrypi_config::disable_touchscreen ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::disable_touchscreen,
  }
  $enable_dpi_lcd = $::raspberrypi_config::enable_dpi_lcd ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::enable_dpi_lcd,
  }
  $dpi_timings_h_sync_polarity = $::raspberrypi_config::dpi_timings_h_sync_polarity ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::dpi_timings_h_sync_polarity,
  }
  $dpi_timings_v_sync_polarity = $::raspberrypi_config::dpi_timings_v_sync_polarity ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::dpi_timings_v_sync_polarity,
  }
  $dpi_timings_aspect_ratio = $::raspberrypi_config::dpi_timings_aspect_ratio ? {
    undef   => undef,
    '4:3'   => 1,
    '14:9'  => 2,
    '16:9'  => 3,
    '5:4'   => 4,
    '16:10' => 5,
    '15:9'  => 6,
    '21:9'  => 7,
    '64:27' => 8,
    default => $::raspberrypi_config::dpi_timings_aspect_ratio,
  }

  if  $::rasberrypi_config::dpi_timings_h_active_pixels != undef or
      $::rasberrypi_config::dpi_timings_h_sync_polarity != undef or
      $::rasberrypi_config::dpi_timings_h_front_porch   != undef or
      $::rasberrypi_config::dpi_timings_h_sync_pulse    != undef or
      $::rasberrypi_config::dpi_timings_h_back_porch    != undef or
      $::rasberrypi_config::dpi_timings_v_active_lines  != undef or
      $::rasberrypi_config::dpi_timings_v_sync_polarity != undef or
      $::rasberrypi_config::dpi_timings_v_front_porch   != undef or
      $::rasberrypi_config::dpi_timings_v_sync_pulse    != undef or
      $::rasberrypi_config::dpi_timings_v_back_porch    != undef or
      $::rasberrypi_config::dpi_timings_v_sync_offset_a != undef or
      $::rasberrypi_config::dpi_timings_v_sync_offset_b != undef or
      $::rasberrypi_config::dpi_timings_pixel_rep       != undef or
      $::rasberrypi_config::dpi_timings_frame_rate      != undef or
      $::rasberrypi_config::dpi_timings_interlaced      != undef or
      $::rasberrypi_config::dpi_timings_pixel_freq      != undef or
      $::rasberrypi_config::dpi_timings_aspect_ratio    != undef
  {
    if  $::rasberrypi_config::dpi_timings_h_active_pixels == undef or
        $::rasberrypi_config::dpi_timings_h_sync_polarity == undef or
        $::rasberrypi_config::dpi_timings_h_front_porch   == undef or
        $::rasberrypi_config::dpi_timings_h_sync_pulse    == undef or
        $::rasberrypi_config::dpi_timings_h_back_porch    == undef or
        $::rasberrypi_config::dpi_timings_v_active_lines  == undef or
        $::rasberrypi_config::dpi_timings_v_sync_polarity == undef or
        $::rasberrypi_config::dpi_timings_v_front_porch   == undef or
        $::rasberrypi_config::dpi_timings_v_sync_pulse    == undef or
        $::rasberrypi_config::dpi_timings_v_back_porch    == undef or
        $::rasberrypi_config::dpi_timings_v_sync_offset_a == undef or
        $::rasberrypi_config::dpi_timings_v_sync_offset_b == undef or
        $::rasberrypi_config::dpi_timings_pixel_rep       == undef or
        $::rasberrypi_config::dpi_timings_frame_rate      == undef or
        $::rasberrypi_config::dpi_timings_interlaced      == undef or
        $::rasberrypi_config::dpi_timings_pixel_freq      == undef or
        $::rasberrypi_config::dpi_timings_aspect_ratio    == undef
    {
      fail('LCD DPI timings must have all items specified if any are specified.')
    }
    else {
      $dpi_timings = join(
        [
          $::rasberrypi_config::dpi_timings_h_active_pixels,
          $::rasberrypi_config::dpi_timings_h_sync_polarity,
          $::rasberrypi_config::dpi_timings_h_front_porch,
          $::rasberrypi_config::dpi_timings_h_sync_pulse,
          $::rasberrypi_config::dpi_timings_h_back_porch,
          $::rasberrypi_config::dpi_timings_v_active_lines,
          $::rasberrypi_config::dpi_timings_v_sync_polarity,
          $::rasberrypi_config::dpi_timings_v_front_porch,
          $::rasberrypi_config::dpi_timings_v_sync_pulse,
          $::rasberrypi_config::dpi_timings_v_back_porch,
          $::rasberrypi_config::dpi_timings_v_sync_offset_a,
          $::rasberrypi_config::dpi_timings_v_sync_offset_b,
          $::rasberrypi_config::dpi_timings_pixel_rep,
          $::rasberrypi_config::dpi_timings_frame_rate,
          $::rasberrypi_config::dpi_timings_interlaced,
          $::rasberrypi_config::dpi_timings_pixel_freq,
          $::rasberrypi_config::dpi_timings_aspect_ratio,
        ], ' '
      )
    }
  }
  else {
     $dpi_timings = undef
  }

  concat::fragment { "${::raspberrypi_config::config_file} Video LCD":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/video/lcd.epp', {
      'ignore_lcd'          => $::raspberrypi_config::ignore_lcd,
      'display_default_lcd' => $::raspberrypi_config::display_default_lcd,
      'lcd_frames'          => $::raspberrypi_config::lcd_frame,
      'lcd_rotate'          => $::raspberrypi_config::lcd_rotate,
      'disable_touchscreen' => $::raspberrypi_config::disable_touchscreen,
      'enable_dpi_lcd'      => $::raspberrypi_config::enable_dpi_lcd,
      'dpi_group'           => $::raspberrypi_config::dpi_group,
      'dpi_mode'            => $::raspberrypi_config::dpi_mode,
      'dpi_timings'         => $dpi_timings,
    }),
    order   => '340',
  }

}
