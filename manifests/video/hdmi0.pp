# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::hdmi0 {

  $hdmi_ignore_edid = $::raspberrypi_config::hdmi_ignore_edid_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_9,
  }
  $hdmi_edid_file = $::raspberrypi_config::hdmi_edid_file_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_edid_file_0,
  }
  $hdmi_force_edid_audio = $::raspberrypi_config::hdmi_force_edid_audio_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_force_edid_audio_0,
  }
  $hdmi_ignore_edid_audio = $::raspberrypi_config::hdmi_ignore_edid_audio_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_ignore_edid_audio_0,
  }
  $hdmi_force_edid_3d = $::raspberrypi_config::hdmi_force_edid_3d_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_force_edid_3d_0,
  }
  $hdmi_ignore_cec_init = $::raspberrypi_config::hdmi_ignore_cec_init_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_init_0,
  }
  $hdmi_ignore_cec = $::raspberrypi_config::hdmi_ignore_cec_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_ignore_cec_0,
  }
  $hdmi_timings_h_sync_polarity = $::raspberrypi_config::hdmi_timings_h_sync_polarity_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_timings_h_sync_polarity_0,
  }
  $hdmi_timings_v_sync_polarity = $::raspberrypi_config::hdmi_timings_v_sync_polarity_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_timings_v_sync_polarity_0,
  }
  $hdmi_force_mode = $::raspberrypi_config::hdmi_force_mode_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_force_mode_0,
  }
  $hdmi_enable_4kp60 = $::raspberrypi_config::hdmi_enable_4kp60_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_enable_4kp60_0,
  }
  $hdmi_cvt_margins = $::raspberrypi_config::hdmi_cvt_margins_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_cvt_margins_0,
  }
  $hdmi_cvt_interface = $::raspberrypi_config::hdmi_cvt_interface_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_cvt_interface_0,
  }
  $hdmi_cvt_rb = $::raspberrypi_config::hdmi_cvt_rb_0 ? {
    undef => undef,
    0     => false,
    1     => true,
    default => $::raspberrypi_config::hdmi_cvt_rb_0,
  }

  concat::fragment { "${config_file} Video HDMI [0]":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi/video/hdmi.epp', {
      'port'                         => 0,
      'hdmi_ignore_edid'             => $hdmi_ignore_edid,
      'hdmi_edid_file'               => $hdmi_edid_file,
      'hdmi_edid_filename'           => $::raspberrypi_config::hdmi_edid_filename_0,
      'hdmi_force_edid_audio'        => $hdmi_force_edid_audio,
      'hdmi_ignore_edid_audio'       => $hdmi_ignore_edid_audio,
      'hdmi_force_edid_3d'           => $hdmi_force_edid_3d,
      'hdmi_ignore_cec_init'         => $hdmi_ignore_cec_init,
      'hdmi_ignore_cec'              => $hdmi_ignore_cec,
      'cec_osd_name'                 => $::raspberrypi_config::cec_osd_name_0,
      'hdmi_pixel_encoding'          => $::raspberrypi_config::hdmi_pixel_encoding_0,
      'hdmi_blanking'                => $::raspberrypi_config::hdmi_blanking_0,
      'hdmi_drive'                   => $::raspberrypi_config::hdmi_drive_0,
      'config_hdmi_boost'            => $::raspberrypi_config::config_hdmi_boost_0,
      'hdmi_group'                   => $::raspberrypi_config::hdmi_group_0,
      'hdmi_mode'                    => $::raspberrypi_config::hdmi_mode_0,
      'hdmi_timings_h_active_pixels' => $::raspberrypi_config::hdmi_timings_h_active_pixels_0,
      'hdmi_timings_h_sync_polarity' => $hdmi_timings_h_sync_polarity,
      'hdmi_timings_h_front_porch'   => $::raspberrypi_config::hdmi_timings_h_front_porch_0,
      'hdmi_timings_h_sync_pulse'    => $::raspberrypi_config::hdmi_timings_h_synce_pulse_0,
      'hdmi_timings_h_back_porch'    => $::raspberrypi_config::hdmi_timings_h_back_porch_0,
      'hdmi_timings_v_active_lines'  => $::raspberrypi_config::hdmi_timings_v_active_lines_0,
      'hdmi_timings_v_sync_polarity' => $hdmi_timings_v_sync_polarity,
      'hdmi_timings_v_front_porch'   => $::raspberrypi_config::hdmi_timings_v_front_porch_0,
      'hdmi_timings_v_sync_pulse'    => $::raspberrypi_config::hdmi_timings_v_sync_pulse_0,
      'hdmi_timings_v_back_porch'    => $::raspberrypi_config::hdmi_timings_v_back_porch_0,
      'hdmi_timings_v_sync_offset_a' => $::raspberrypi_config::hdmi_timings_v_sync_offset_a_0,
      'hdmi_timings_v_sync_offset_b' => $::raspberrypi_config::hdmi_timings_v_sync_offset_b_0,
      'hdmi_timings_pixel_rep'       => $::raspberrypi_config::hdmi_timings_pixel_rep_0,
      'hdmi_timings_frame_rate'      => $::raspberrypi_config::hdmi_timings_frame_rate_0,
      'hdmi_timings_interlaced'      => $::raspberrypi_config::hdmi_timings_interlaced_0,
      'hdmi_timings_pixel_freq'      => $::raspberrypi_config::hdmi_timings_pixel_freq_0,
      'hdmi_timings_aspect_ratio'    => $::raspberrypi_config::hdmi_timings_aspect_ratio_0,
      'hdmi_force_mode'              => $hdmi_force_mode,
      'edid_content_type'            => $::raspberrypi_config::hdmi_content_type_0,
      'hdmi_enable_4kp60'            => $hdmi_enable_rkp60,
      'hdmi_cvt_width'               => $::raspberrypi_config::hdmi_cvt_width_0,
      'hdmi_cvt_height'              => $::raspberrypi_config::hdmi_cvt_height_0,
      'hdmi_cvt_framerate'           => $::raspberrypi_config::hdmi_cvt_framerate_0,
      'hdmi_cvt_aspect'              => $::raspberrypi_config::hdmi_cvt_aspect_0,
      'hdmi_cvt_margins'             => $hdmi_cvt_margins,
      'hdmi_cvt_interface'           => $hdmi_cvt_interface,
      'hdmi_cvt_rb'                  => $hdmi_cvt_rb,
    }),
    order   => '310',
  }

}
