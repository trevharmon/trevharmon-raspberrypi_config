# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::hdmi1 {

  $port = 1

  if $port > 0 and ($::raspberrypi_config::model_type != 'B' or $::raspberrypi_config::model_version != 4) {
    rapsberrypi_config::waring{ 'Multiple HDMI ports are only available on Pi 4B models': }
  }
  $hdmi_ignore_edid = $::raspberrypi_config::hdmi_ignore_edid_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_9,
  }
  $hdmi_edid_file = $::raspberrypi_config::hdmi_edid_file_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_edid_file_1,
  }
  $hdmi_force_edid_audio = $::raspberrypi_config::hdmi_force_edid_audio_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_edid_audio_1,
  }
  $hdmi_ignore_edid_audio = $::raspberrypi_config::hdmi_ignore_edid_audio_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_audio_1,
  }
  $hdmi_force_edid_3d = $::raspberrypi_config::hdmi_force_edid_3d_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_edid_3d_1,
  }
  $hdmi_ignore_cec_init = $::raspberrypi_config::hdmi_ignore_cec_init_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_init_1,
  }
  $hdmi_ignore_cec = $::raspberrypi_config::hdmi_ignore_cec_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_1,
  }
  $hdmi_blanking = $::raspberrypi_config::hdmi_blanking_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_blanking_1,
  }
  $hdmi_timings_h_sync_polarity = $::raspberrypi_config::hdmi_timings_h_sync_polarity_1 ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::hdmi_timings_h_sync_polarity_1,
  }
  $hdmi_timings_v_sync_polarity = $::raspberrypi_config::hdmi_timings_v_sync_polarity_1 ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::hdmi_timings_v_sync_polarity_1,
  }
  $hdmi_timings_aspect_ratio_1 = $::raspberrypi_config::hdmi_timings_aspect_ration_1 ? {
    undef   => undef,
    '4:3'   => 1,
    '14:9'  => 2,
    '16:9'  => 3,
    '5:4'   => 4,
    '16:10' => 5,
    '15:9'  => 6,
    '21:9'  => 7,
    '64:27' => 8,
    default => $::raspberrypi_config::hdmi_timings_aspect_ratio_1,
  }
  $hdmi_force_mode = $::raspberrypi_config::hdmi_force_mode_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_mode_1,
  }
  $hdmi_enable_4kp60 = $::raspberrypi_config::hdmi_enable_4kp60_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_enable_4kp60_1,
  }
  $hdmi_cvt_framerate_1 = $::raspberrypi_config::hdmi_cvt_framerate_1 ? {
    undef   => undef,
    '4:3'   => 1,
    '14:9'  => 2,
    '16:9'  => 3,
    '5:4'   => 4,
    '16:10' => 5,
    '15:9'  => 6,
    default => $::raspberrypi_config::hdmi_cvt_framerate_1,
  }
  $hdmi_cvt_margins = $::raspberrypi_config::hdmi_cvt_margins_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_margins_1,
  }
  $hdmi_cvt_interface = $::raspberrypi_config::hdmi_cvt_interface_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_interface_1,
  }
  $hdmi_cvt_rb = $::raspberrypi_config::hdmi_cvt_rb_1 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_rb_1,
  }

  if  $::raspberrypi_config::hdmi_timing_h_active_pixels_1 != undef or
      $::raspberrypi_config::hdmi_timing_h_sync_polarity_1 != undef or
      $::raspberrypi_config::hdmi_timing_h_front_porch_1   != undef or
      $::raspberrypi_config::hdmi_timing_h_sync_pulse_1    != undef or
      $::raspberrypi_config::hdmi_timing_h_back_portch_1   != undef or
      $::raspberrypi_config::hdmi_timing_v_active_lines_1  != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_polarity_1 != undef or
      $::raspberrypi_config::hdmi_timing_v_front_porch_1   != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_pulse_1    != undef or
      $::raspberrypi_config::hdmi_timing_v_back_porch_1    != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_offset_a_1 != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_offset_b_1 != undef or
      $::raspberrypi_config::hdmi_timing_pixel_rep_1       != undef or
      $::raspberrypi_config::hdmi_timing_frame_rate_1      != undef or
      $::raspberrypi_config::hdmi_timing_interlaced_1      != undef or
      $::raspberrypi_config::hdmi_timing_pixel_freq_1      != undef or
      $::raspberrypi_config::hdmi_timing_aspect_ratio_1    != undef
  {
    if  $::raspberrypi_config::hdmi_timing_h_active_pixels_1 == undef or
        $::raspberrypi_config::hdmi_timing_h_sync_polarity_1 == undef or
        $::raspberrypi_config::hdmi_timing_h_front_porch_1   == undef or
        $::raspberrypi_config::hdmi_timing_h_sync_pulse_1    == undef or
        $::raspberrypi_config::hdmi_timing_h_back_portch_1   == undef or
        $::raspberrypi_config::hdmi_timing_v_active_lines_1  == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_polarity_1 == undef or
        $::raspberrypi_config::hdmi_timing_v_front_porch_1   == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_pulse_1    == undef or
        $::raspberrypi_config::hdmi_timing_v_back_porch_1    == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_offset_a_1 == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_offset_b_1 == undef or
        $::raspberrypi_config::hdmi_timing_pixel_rep_1       == undef or
        $::raspberrypi_config::hdmi_timing_frame_rate_1      == undef or
        $::raspberrypi_config::hdmi_timing_interlaced_1      == undef or
        $::raspberrypi_config::hdmi_timing_pixel_freq_1      == undef or
        $::raspberrypi_config::hdmi_timing_aspect_ratio_1    == undef
    {
      fail("HDMI:${port} timings must have all items specified if any are specified.")
    }
    else {
      $hdmi_timings = join(
        [
          $::raspberrypi_config::hdmi_timing_h_active_pixels_1,
          $::raspberrypi_config::hdmi_timing_h_sync_polarity_1,
          $::raspberrypi_config::hdmi_timing_h_front_porch_1,
          $::raspberrypi_config::hdmi_timing_h_sync_pulse_1,
          $::raspberrypi_config::hdmi_timing_h_back_portch_1,
          $::raspberrypi_config::hdmi_timing_v_active_lines_1,
          $::raspberrypi_config::hdmi_timing_v_sync_polarity_1,
          $::raspberrypi_config::hdmi_timing_v_front_porch_1,
          $::raspberrypi_config::hdmi_timing_v_sync_pulse_1,
          $::raspberrypi_config::hdmi_timing_v_back_porch_1,
          $::raspberrypi_config::hdmi_timing_v_sync_offset_a_1,
          $::raspberrypi_config::hdmi_timing_v_sync_offset_b_1,
          $::raspberrypi_config::hdmi_timing_pixel_rep_1,
          $::raspberrypi_config::hdmi_timing_frame_rate_1,
          $::raspberrypi_config::hdmi_timing_interlaced_1,
          $::raspberrypi_config::hdmi_timing_pixel_freq_1,
          $::raspberrypi_config::hdmi_timing_aspect_ratio_1,
        ], ' '
      )
    }
  }
  else {
    $hdmi_timings = undef
  }
  if $hdmi_blanking and $::raspberrypi_config::model_version == 4 {
    rapsberrypi_config::waring{ 'The hdmi_blanking_1 feature is not available on Pi 4 models': }
  }
  if $hdmi_enable_4kp60 and ($::raspberrypi_config::model_type != 'B' or $::raspberrypi_config::model_version != 4) {
    rapsberrypi_config::waring{ 'The hdmi_enable_4kp60 feature is only available on Pi 4B models': }
  }

  concat::fragment { "${::raspberrypi_config::config_file} Video HDMI:${port}":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi/video/hdmi.epp', {
      'port'                   => port,
      'hdmi_ignore_edid'       => $hdmi_ignore_edid,
      'hdmi_edid_file'         => $hdmi_edid_file,
      'hdmi_edid_filename'     => $::raspberrypi_config::hdmi_edid_filename_1,
      'hdmi_force_edid_audio'  => $hdmi_force_edid_audio,
      'hdmi_ignore_edid_audio' => $hdmi_ignore_edid_audio,
      'hdmi_force_edid_3d'     => $hdmi_force_edid_3d,
      'hdmi_ignore_cec_init'   => $hdmi_ignore_cec_init,
      'hdmi_ignore_cec'        => $hdmi_ignore_cec,
      'cec_osd_name'           => $::raspberrypi_config::cec_osd_name_1,
      'hdmi_pixel_encoding'    => $::raspberrypi_config::hdmi_pixel_encoding_1,
      'hdmi_blanking'          => $hdmi_blanking,
      'hdmi_drive'             => $::raspberrypi_config::hdmi_drive_1,
      'config_hdmi_boost'      => $::raspberrypi_config::config_hdmi_boost_1,
      'hdmi_group'             => $::raspberrypi_config::hdmi_group_1,
      'hdmi_mode'              => $::raspberrypi_config::hdmi_mode_1,
      'hdmi_timings'           => $hdmi_timings,
      'hdmi_force_mode'        => $hdmi_force_mode,
      'edid_content_type'      => $::raspberrypi_config::hdmi_content_type_1,
      'hdmi_enable_4kp60'      => $hdmi_enable_4kp60,
      'hdmi_cvt_width'         => $::raspberrypi_config::hdmi_cvt_width_1,
      'hdmi_cvt_height'        => $::raspberrypi_config::hdmi_cvt_height_1,
      'hdmi_cvt_framerate'     => $::raspberrypi_config::hdmi_cvt_framerate_1,
      'hdmi_cvt_aspect'        => $::raspberrypi_config::hdmi_cvt_aspect_1,
      'hdmi_cvt_margins'       => $hdmi_cvt_margins,
      'hdmi_cvt_interface'     => $hdmi_cvt_interface,
      'hdmi_cvt_rb'            => $hdmi_cvt_rb,
    }),
    order   => "31${port}",
  }

}
