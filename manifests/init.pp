# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config (
  # General options
  Stdlib::Absolutepath                        $config_file,
  Boolean                                     $show_warnings,
  Boolean                                     $warnings_as_errors,
  # Memory options
  Optional[Integer[16,944]]                   $gpu_mem,
  Optional[Integer[16,192]]                   $gpu_mem_256,
  Optional[Integer[16,448]]                   $gpu_mem_512,
  Optional[Integer[16,944]]                   $gpu_mem_1024,
  Variant[Boolean,Integer[0,1],Undef]         $disable_l2cache,
  # License key and codec options
  Variant[Regexp[/^0x[a-fA-Z\d]{8}$/],Array[Regexp[/^0x[a-fA-Z\d]{8}$/],0,8],Undef]
                                              $decode_MPG2,
  Variant[Regexp[/^0x[a-fA-Z\d]{8}$/],Array[Regexp[/^0x[a-fA-Z\d]{8}$/],0,8],Undef]
                                              $decode_WVC1,
  # Video options
  # - Composite video mode options
  Optional[Enum[0,1,2,3,16,18]]               $sdtv_mode,
  Optional[Integer[1,3]]                      $sdtv_aspect,
  Variant[Boolean,Integer[0,1],Undef]         $sdtv_disable_colour_burst,
  Variant[Boolean,Integer[0,1],Undef]         $enable_tvout,
  # - HDMI mode options
  # - - HDMI port 0
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_edid_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_edid_file_0,
  Optional[String]                            $hdmi_edid_filename_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_edid_audio_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_edid_audio_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_edid_3d_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_cec_init_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_cec_0,
  Optional[String]                            $cec_osd_name_0,
  Optional[Integer[0,4]]                      $hdmi_pixel_encoding_0,
  Optional[Integer[0,1]]                      $hdmi_blanking_0,
  Optional[Integer[1,2]]                      $hdmi_drive_0,
  Optional[Integer[0,11]]                     $config_hdmi_boost_0,
  Optional[Integer[0,2]]                      $hdmi_group_0,
  Optional[Integer[0,87]]                     $hdmi_mode_0,
  Optional[Integer[1]]                        $hdmi_timings_h_active_pixels_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_timings_h_sync_polarity_0,
  Optional[Integer[0]]                        $hdmi_timings_h_front_porch_0,
  Optional[Integer[0]]                        $hdmi_timings_h_sync_pulse_0,
  Optional[Integer[1]]                        $hdmi_timings_h_back_porch_0,
  Optional[Integer[1]]                        $hdmi_timings_v_active_lines_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_timings_v_sync_polarity_0,
  Optional[Integer[0]]                        $hdmi_timings_v_front_porch_0,
  Optional[Integer[0]]                        $hdmi_timings_v_sync_pulse_0,
  Optional[Integer[1]]                        $hdmi_timings_v_back_porch_0,
  Optional[Enum[0]]                           $hdmi_timings_v_sync_offset_a_0,
  Optional[Enum[0]]                           $hdmi_timings_v_sync_offset_b_0,
  Optional[Enum[0]]                           $hdmi_timings_pixel_rep_0,
  Optional[Integer[1]]                        $hdmi_timings_frame_rate_0,
  Optional[Enum[0]]                           $hdmi_timings_interlaced_0,
  Optional[Integer[1]]                        $hdmi_timings_pixel_freq_0,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                              $hdmi_timings_aspect_ratio_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_mode_0,
  Optional[Enum[0,4]]                         $edid_content_type_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_enable_4kp60_0,
  Optional[Integer[1]]                        $hdmi_cvt_width_0,
  Optional[Integer[1]]                        $hdmi_cvt_height_0,
  Optional[Integer[1]]                        $hdmi_cvt_framerate_0,
  Variant[Integer[1,6],Enum['4:3','14:9','16:9','5:4','16:10','15:9',],Undef]
                                              $hdmi_cvt_aspect_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_margins_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_interface_0,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_rb_0,
  # - - HDMI port 1
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_edid_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_edid_file_1,
  Optional[String]                            $hdmi_edid_filename_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_edid_audio_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_edid_audio_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_edid_3d_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_cec_init_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_cec_1,
  Optional[String]                            $cec_osd_name_1,
  Optional[Integer[0,4]]                      $hdmi_pixel_encoding_1,
  Optional[Integer[0,1]]                      $hdmi_blanking_1,
  Optional[Integer[1,2]]                      $hdmi_drive_1,
  Optional[Integer[0,11]]                     $config_hdmi_boost_1,
  Optional[Integer[0,2]]                      $hdmi_group_1,
  Optional[Integer[0,87]]                     $hdmi_mode_1,
  Optional[Integer[1]]                        $hdmi_timings_h_active_pixels_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_timings_h_sync_polarity_1,
  Optional[Integer[0]]                        $hdmi_timings_h_front_porch_1,
  Optional[Integer[0]]                        $hdmi_timings_h_sync_pulse_1,
  Optional[Integer[1]]                        $hdmi_timings_h_back_porch_1,
  Optional[Integer[1]]                        $hdmi_timings_v_active_lines_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_timings_v_sync_polarity_1,
  Optional[Integer[0]]                        $hdmi_timings_v_front_porch_1,
  Optional[Integer[0]]                        $hdmi_timings_v_sync_pulse_1,
  Optional[Integer[1]]                        $hdmi_timings_v_back_porch_1,
  Optional[Enum[0]]                           $hdmi_timings_v_sync_offset_a_1,
  Optional[Enum[0]]                           $hdmi_timings_v_sync_offset_b_1,
  Optional[Enum[0]]                           $hdmi_timings_pixel_rep_1,
  Optional[Integer[1]]                        $hdmi_timings_frame_rate_1,
  Optional[Enum[0]]                           $hdmi_timings_interlaced_1,
  Optional[Integer[1]]                        $hdmi_timings_pixel_freq _1,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                              $hdmi_timings_aspect_ratio_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_mode_1,
  Optional[Enum[0,4]]                         $edid_content_type_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_enable_4kp60_1,
  Optional[Integer[1]]                        $hdmi_cvt_width_1,
  Optional[Integer[1]]                        $hdmi_cvt_height_1,
  Optional[Integer[1]]                        $hdmi_cvt_framerate_1,
  Variant[Integer[1,6],Enum['4:3','14:9','16:9','5:4','16:10','15:9',],Undef]
                                              $hdmi_cvt_aspect_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_margins_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_interface_1,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_cvt_rb_1,
  # - LCD display/touchscreen options
  Variant[Boolean,Integer[0,1],Undef]         $ignore_lcd,
  Variant[Boolean,Integer[0,1],Undef]         $display_default_lcd,
  Optional[Integer[1]]                        $lcd_frames,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']] $lcd_rotate,
  Variant[Boolean,Integer[0,1],Undef]         $disable_touchscreen,
  Variant[Boolean,Integer[0,1],Undef]         $enable_dpi_lcd,
  Optional[Enum[0,2]]                         $dpi_group,
  Optional[Enum[0,87]]                        $dpi_mode,
  Optional[Integer[1]]                        $dpi_timings_h_active_pixels,
  Variant[Boolean,Integer[0,1],Undef]         $dpi_timings_h_sync_polarity,
  Optional[Integer[0]]                        $dpi_timings_h_front_porch,
  Optional[Integer[0]]                        $dpi_timings_h_sync_pulse,
  Optional[Integer[1]]                        $dpi_timings_h_back_porch,
  Optional[Integer[1]]                        $dpi_timings_v_active_lines,
  Variant[Boolean,Integer[0,1],Undef]         $dpi_timings_v_sync_polarity,
  Optional[Integer[0]]                        $dpi_timings_v_front_porch,
  Optional[Integer[0]]                        $dpi_timings_v_sync_pulse,
  Optional[Integer[1]]                        $dpi_timings_v_back_porch,
  Optional[Enum[0]]                           $dpi_timings_v_sync_offset_a,
  Optional[Enum[0]]                           $dpi_timings_v_sync_offset_b,
  Optional[Enum[0]]                           $dpi_timings_pixel_rep,
  Optional[Integer[1]]                        $dpi_timings_frame_rate,
  Optional[Enum[0]]                           $dpi_timings_interlaced,
  Optional[Integer[1]]                        $dpi_timings_pixel_freq,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                              $dpi_timings_aspect_ratio,
  # - Generic display options
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_force_hotplug,
  Variant[Boolean,Integer[0,1],Undef]         $hdmi_ignore_hotplug,
  Variant[Boolean,Integer[0,1],Undef]         $disable_overscan,
  Optional[Integer[0]]                        $overscan_left,
  Optional[Integer[0]]                        $overscan_right,
  Optional[Integer[0]]                        $overscan_top,
  Optional[Integer[0]]                        $overscan_bottom,
  Variant[Boolean,Integer[0,1],Undef]         $overscan_scale,
  Optional[Integer[1]]                        $framebuffer_width,
  Optional[Integer[1]]                        $framebuffer_height,
  Optional[Integer[1]]                        $max_framebuffer_width,
  Optional[Integer[1]]                        $max_framebuffer_height,
  Optional[Enum[8,16,24,32]]                  $framebuffer_depth,
  Variant[Boolean,Integer[0,1],Undef]         $framebuffer_ignore_alpha,
  Optional[Enum[0,1,2,3,7]]                   $framebuffer_priority,
  Variant[Boolean,Integer[0,1],Undef]         $test_mode,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']] $display_hdmi_rotate,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']] $display_lcd_rotate,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']] $display_rotate,
  Variant[Boolean,Integer[0,1],Undef]         $disable_fw_kms_setup,
  Variant[Boolean,Integer[0,1],Undef]         $dispmanx_offline,
  # Camera settings
  Variant[Boolean,Integer[0,1],Undef]         $disable_camera_led,
  # Boot options
  Optional[String]                            $start_file,
  Optional[String]                            $fixup_file,
  Variant[Boolean,Integer[0,1],Undef]         $start_x,
  Variant[Boolean,Integer[0,1],Undef]         $start_debug,
  Variant[Boolean,Integer[0,1],Undef]         $disable_commandline_tags,
  Variant[String]                             $cmdline,
  Variant[String]                             $kernel,
  Variant[Boolean,Integer[0,1],Undef]         $arm_64bit,
  Variant[Boolean,Integer[0,1],Undef]         $arm_control,
  Optional[Regexp[/^0x[a-fA-Z\d]{4,8}$/]]     $kernel_address,
  Variant[Boolean,Integer[0,1],Undef]         $kernel_old,
  Variant[String,Array[String,1],Undef]       $ramfsfile,
  Optional[Regexp[/^0x[a-fA-Z\d]{4,8}$/]]     $ramfsaddr,
  Optional[String]                            $initramfs_file,
  Variant[Regexp[/^0x[a-fA-Z\d]{4,8}$/],Enum[0,'followkernel'],Undef]
                                              $initramfs_addr,
  Optional[Integer[1]]                        $init_uart_baud,
  Optional[Integer[1]]                        $init_uart_clock,
  Optional[Integer[0]]                        $bootcode_delay,
  Optional[Integer[0]]                        $boot_delay,
  Optional[Integer[0]]                        $boot_delay_ms,
  Variant[Boolean,Integer[0,1],Undef]         $disable_splash,
  Variant[Boolean,Integer[0,1],Undef]         $enable_gic,
  # GPIO control
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_0,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_1,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_2,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_3,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_4,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_5,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_6,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_7,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_8,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_9,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_10,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_11,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_12,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_13,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_14,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_15,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_16,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_17,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_18,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_19,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_20,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_21,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_22,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_23,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_24,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_25,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_26,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                              $gpio_27,
  # Overcloacking options
  Optional[Integer[1]]                        $arm_freq,
  Optional[Integer[1]]                        $gpu_freq,
  Optional[Integer[1]]                        $core_freq,
  Optional[Integer[1]]                        $h264_freq,
  Optional[Integer[1]]                        $isp_freq,
  Optional[Integer[1]]                        $v3d_freq,
  Optional[Integer[1]]                        $sdram_freq,
  Optional[Integer[1]]                        $over_voltage,
  Optional[Integer[1]]                        $over_voltage_sdram,
  Optional[Integer[1]]                        $over_voltage_sdram_c,
  Optional[Integer[1]]                        $over_voltage_sdram_i,
  Optional[Integer[1]]                        $over_voltage_sdram_p,
  Variant[Boolean,Integer[0,1],Undef]         $force_turbo,
  Optional[Integer[0,60]]                     $initial_turbo,
  Optional[Integer[0]]                        $arm_freq_min,
  Optional[Integer[0]]                        $core_freq_min,
  Optional[Integer[0]]                        $gpu_freq_min,
  Optional[Integer[0]]                        $h264_freq_min,
  Optional[Integer[0]]                        $isp_freq_min,
  Optional[Integer[0]]                        $v3d_freq_min,
  Optional[Integer[0]]                        $sdram_freq_min,
  Optional[Integer[0]]                        $over_voltage_min,
  Optional[Integer[0,85]]                     $temp_limit,
  Optional[Integer[0,70]]                     $temp_soft_limit,
  Variant[Boolean,Integer[0,1],Undef]         $never_over_voltage,
  Variant[Boolean,Integer[0,1],Undef]         $disable_auto_turbo,
  # Miscellaneous options
  Variant[Boolean,Integer[0,2],Undef]         $avoid_warnings,
  Optional[Enum['msg','assert','ex','info','level','list']]
                                              $logging_level,
  Optional[String]                            $include,
) {

  contain raspberrypi_config::boot
  contain raspberrypi_config::camera
  contain raspberrypi_config::gpio
  contain raspberrypi_config::license_codec
  contain raspberrypi_config::memory
  contain raspberrypi_config::misc
  contain raspberrypi_config::overclock
  contain raspberrypi_config::video::composite
  contain raspberrypi_config::video::generic
  contain raspberrypi_config::video::hdmi0
  contain raspberrypi_config::video::hdmi1
  contain raspberrypi_config::video::lcd

  concat { $config_file:
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0755', # This is the permission that is installed by defaulto
  }

  concat::fragment { "${config_file} Preamble":
    source  => $config_file,
    content => "# This file is managed by Puppet -- DO NOT EDIT\n\n",
    order   => '000',
  }

}
