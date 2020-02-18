# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::hdmi0 {

  $port = 0

  if $port > 0 and ($::raspberrypi_config::model_type != 'B' or $::raspberrypi_config::model_version != 4) {
    rapsberrypi_config::waring{ 'Multiple HDMI ports are only available on Pi 4B models': }
  }
  $hdmi_ignore_edid = $::raspberrypi_config::hdmi_ignore_edid_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_9,
  }
  $hdmi_edid_file = $::raspberrypi_config::hdmi_edid_file_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_edid_file_0,
  }
  $hdmi_force_edid_audio = $::raspberrypi_config::hdmi_force_edid_audio_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_edid_audio_0,
  }
  $hdmi_ignore_edid_audio = $::raspberrypi_config::hdmi_ignore_edid_audio_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_audio_0,
  }
  $hdmi_force_edid_3d = $::raspberrypi_config::hdmi_force_edid_3d_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_edid_3d_0,
  }
  $hdmi_ignore_cec_init = $::raspberrypi_config::hdmi_ignore_cec_init_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_init_0,
  }
  $hdmi_ignore_cec = $::raspberrypi_config::hdmi_ignore_cec_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_0,
  }
  $hdmi_blanking = $::raspberrypi_config::hdmi_blanking_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_blanking_0,
  }
  $hdmi_timings_h_sync_polarity = $::raspberrypi_config::hdmi_timings_h_sync_polarity_0 ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::hdmi_timings_h_sync_polarity_0,
  }
  $hdmi_timings_v_sync_polarity = $::raspberrypi_config::hdmi_timings_v_sync_polarity_0 ? {
    undef   => undef,
    false   => 0,
    true    => 1,
    default => $::raspberrypi_config::hdmi_timings_v_sync_polarity_0,
  }
  $hdmi_timings_aspect_ratio_0 = $::raspberrypi_config::hdmi_timings_aspect_ration_0 ? {
    undef   => undef,
    '4:3'   => 1,
    '14:9'  => 2,
    '16:9'  => 3,
    '5:4'   => 4,
    '16:10' => 5,
    '15:9'  => 6,
    '21:9'  => 7,
    '64:27' => 8,
    default => $::raspberrypi_config::hdmi_timings_aspect_ratio_0,
  }
  $hdmi_force_mode = $::raspberrypi_config::hdmi_force_mode_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_force_mode_0,
  }
  $hdmi_enable_4kp60 = $::raspberrypi_config::hdmi_enable_4kp60_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_enable_4kp60_0,
  }
  $hdmi_cvt_framerate_0 = $::raspberrypi_config::hdmi_cvt_framerate_0 ? {
    undef   => undef,
    '4:3'   => 1,
    '14:9'  => 2,
    '16:9'  => 3,
    '5:4'   => 4,
    '16:10' => 5,
    '15:9'  => 6,
    default => $::raspberrypi_config::hdmi_cvt_framerate_0,
  }
  $hdmi_cvt_margins = $::raspberrypi_config::hdmi_cvt_margins_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_margins_0,
  }
  $hdmi_cvt_interface = $::raspberrypi_config::hdmi_cvt_interface_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_interface_0,
  }
  $hdmi_cvt_rb = $::raspberrypi_config::hdmi_cvt_rb_0 ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::hdmi_cvt_rb_0,
  }

  if  $::raspberrypi_config::hdmi_timing_h_active_pixels_0 != undef or
      $::raspberrypi_config::hdmi_timing_h_sync_polarity_0 != undef or
      $::raspberrypi_config::hdmi_timing_h_front_porch_0   != undef or
      $::raspberrypi_config::hdmi_timing_h_sync_pulse_0    != undef or
      $::raspberrypi_config::hdmi_timing_h_back_portch_0   != undef or
      $::raspberrypi_config::hdmi_timing_v_active_lines_0  != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_polarity_0 != undef or
      $::raspberrypi_config::hdmi_timing_v_front_porch_0   != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_pulse_0    != undef or
      $::raspberrypi_config::hdmi_timing_v_back_porch_0    != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_offset_a_0 != undef or
      $::raspberrypi_config::hdmi_timing_v_sync_offset_b_0 != undef or
      $::raspberrypi_config::hdmi_timing_pixel_rep_0       != undef or
      $::raspberrypi_config::hdmi_timing_frame_rate_0      != undef or
      $::raspberrypi_config::hdmi_timing_interlaced_0      != undef or
      $::raspberrypi_config::hdmi_timing_pixel_freq_0      != undef or
      $::raspberrypi_config::hdmi_timing_aspect_ratio_0    != undef
  {
    if  $::raspberrypi_config::hdmi_timing_h_active_pixels_0 == undef or
        $::raspberrypi_config::hdmi_timing_h_sync_polarity_0 == undef or
        $::raspberrypi_config::hdmi_timing_h_front_porch_0   == undef or
        $::raspberrypi_config::hdmi_timing_h_sync_pulse_0    == undef or
        $::raspberrypi_config::hdmi_timing_h_back_portch_0   == undef or
        $::raspberrypi_config::hdmi_timing_v_active_lines_0  == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_polarity_0 == undef or
        $::raspberrypi_config::hdmi_timing_v_front_porch_0   == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_pulse_0    == undef or
        $::raspberrypi_config::hdmi_timing_v_back_porch_0    == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_offset_a_0 == undef or
        $::raspberrypi_config::hdmi_timing_v_sync_offset_b_0 == undef or
        $::raspberrypi_config::hdmi_timing_pixel_rep_0       == undef or
        $::raspberrypi_config::hdmi_timing_frame_rate_0      == undef or
        $::raspberrypi_config::hdmi_timing_interlaced_0      == undef or
        $::raspberrypi_config::hdmi_timing_pixel_freq_0      == undef or
        $::raspberrypi_config::hdmi_timing_aspect_ratio_0    == undef
    {
      fail("HDMI:${port} timings must have all items specified if any are specified.")
    }
    else {
      $hdmi_timings = join(
        [
          $::raspberrypi_config::hdmi_timing_h_active_pixels_0,
          $::raspberrypi_config::hdmi_timing_h_sync_polarity_0,
          $::raspberrypi_config::hdmi_timing_h_front_porch_0,
          $::raspberrypi_config::hdmi_timing_h_sync_pulse_0,
          $::raspberrypi_config::hdmi_timing_h_back_portch_0,
          $::raspberrypi_config::hdmi_timing_v_active_lines_0,
          $::raspberrypi_config::hdmi_timing_v_sync_polarity_0,
          $::raspberrypi_config::hdmi_timing_v_front_porch_0,
          $::raspberrypi_config::hdmi_timing_v_sync_pulse_0,
          $::raspberrypi_config::hdmi_timing_v_back_porch_0,
          $::raspberrypi_config::hdmi_timing_v_sync_offset_a_0,
          $::raspberrypi_config::hdmi_timing_v_sync_offset_b_0,
          $::raspberrypi_config::hdmi_timing_pixel_rep_0,
          $::raspberrypi_config::hdmi_timing_frame_rate_0,
          $::raspberrypi_config::hdmi_timing_interlaced_0,
          $::raspberrypi_config::hdmi_timing_pixel_freq_0,
          $::raspberrypi_config::hdmi_timing_aspect_ratio_0,
        ], ' '
      )
    }
  }
  else {
    $hdmi_timings = undef
  }
  if $hdmi_blanking and $::raspberrypi_config::model_version == 4 {
    rapsberrypi_config::waring{ 'The hdmi_blanking_0 feature is not available on Pi 4 models': }
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
      'hdmi_edid_filename'     => $::raspberrypi_config::hdmi_edid_filename_0,
      'hdmi_force_edid_audio'  => $hdmi_force_edid_audio,
      'hdmi_ignore_edid_audio' => $hdmi_ignore_edid_audio,
      'hdmi_force_edid_3d'     => $hdmi_force_edid_3d,
      'hdmi_ignore_cec_init'   => $hdmi_ignore_cec_init,
      'hdmi_ignore_cec'        => $hdmi_ignore_cec,
      'cec_osd_name'           => $::raspberrypi_config::cec_osd_name_0,
      'hdmi_pixel_encoding'    => $::raspberrypi_config::hdmi_pixel_encoding_0,
      'hdmi_blanking'          => $hdmi_blanking,
      'hdmi_drive'             => $::raspberrypi_config::hdmi_drive_0,
      'config_hdmi_boost'      => $::raspberrypi_config::config_hdmi_boost_0,
      'hdmi_group'             => $::raspberrypi_config::hdmi_group_0,
      'hdmi_mode'              => $::raspberrypi_config::hdmi_mode_0,
      'hdmi_timings'           => $hdmi_timings,
      'hdmi_force_mode'        => $hdmi_force_mode,
      'edid_content_type'      => $::raspberrypi_config::hdmi_content_type_0,
      'hdmi_enable_4kp60'      => $hdmi_enable_4kp60,
      'hdmi_cvt_width'         => $::raspberrypi_config::hdmi_cvt_width_0,
      'hdmi_cvt_height'        => $::raspberrypi_config::hdmi_cvt_height_0,
      'hdmi_cvt_framerate'     => $::raspberrypi_config::hdmi_cvt_framerate_0,
      'hdmi_cvt_aspect'        => $::raspberrypi_config::hdmi_cvt_aspect_0,
      'hdmi_cvt_margins'       => $hdmi_cvt_margins,
      'hdmi_cvt_interface'     => $hdmi_cvt_interface,
      'hdmi_cvt_rb'            => $hdmi_cvt_rb,
    }),
    order   => "31${port}",
  }

}
