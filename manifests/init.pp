# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberry_pi
class raspberry_pi (
  # General options
  Boolean                             $show_warnings                  = true,
  Boolean                             $warnings_as_errors             = false,
  # Memory options
  Optional[Integer[16,944]]           $gpu_mem                        = undef,
  Optional[Integer[16,192]]           $gpu_mem_256                    = undef,
  Optional[Integer[16,448]]           $gpu_mem_512                    = undef,
  Optional[Integer[16,944]]           $gpu_mem_1024                   = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_l2cache                = undef,
  # License key and codec options
  Variant[Regexp[/^0x[a-fA-Z\d]{8}$/],Array[Regexp[/^0x[a-fA-Z\d]{8}$/],0,8],Undef]
                                         $decode_MPG2                 = undef,
  Variant[Regexp[/^0x[a-fA-Z\d]{8}$/],Array[Regexp[/^0x[a-fA-Z\d]{8}$/],0,8],Undef]
                                         $decode_WVC1                 = undef,
  # Video options
  # - Composite video mode options
  Optional[Enum[0,1,2,3,16,18]]       $sdtv_mode                      = undef,
  Optional[Integer[1,3]]              $sdtv_aspect                    = undef,
  Variant[Boolean,Integer[0,1],Undef] $sdtv_disable_colour_burst      = undef,
  Variant[Boolean,Integer[0,1],Undef] $enable_tvout                   = undef,
  # - HDMI mode options
  # - - HDMI port 0
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_edid_0             = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_edid_file_0               = undef,
  Optional[String]                    $hdmi_edid_filename_0           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_edid_audio_0        = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_edid_audio_0       = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_edid_3d_0           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_cec_init_0         = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_cec_0              = undef,
  Optional[String]                    $cec_osd_name_0                 = undef,
  Optional[Integer[0,4]]              $hdmi_pixel_encoding_0          = undef,
  Optional[Integer[0,1]]              $hdmi_blanking_0                = undef,
  Optional[Integer[1,2]]              $hdmi_drive_0                   = undef,
  Optional[Integer[0,11]]             $config_hdmi_boost_0            = undef,
  Optional[Integer[0,2]]              $hdmi_group_0                   = undef,
  Optional[Integer[0,87]]             $hdmi_mode_0                    = undef,
  Optional[Integer[1]]                $hdmi_timings_h_active_pixels_0 = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_timings_h_sync_polarity_0 = undef,
  Optional[Integer[0]]                $hdmi_timings_h_front_porch_0   = undef,
  Optional[Integer[0]]                $hdmi_timings_h_sync_pulse_0    = undef,
  Optional[Integer[1]]                $hdmi_timings_h_back_porch_0    = undef,
  Optional[Integer[1]]                $hdmi_timings_v_active_lines_0  = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_timings_v_sync_polarity_0 = undef,
  Optional[Integer[0]]                $hdmi_timings_v_front_porch_0   = undef,
  Optional[Integer[0]]                $hdmi_timings_v_sync_pulse_0    = undef,
  Optional[Integer[1]]                $hdmi_timings_v_back_porch_0    = undef,
  Optional[Enum[0]]                   $hdmi_timings_v_sync_offset_a_0 = undef,
  Optional[Enum[0]]                   $hdmi_timings_v_sync_offset_b_0 = undef,
  Optional[Enum[0]]                   $hdmi_timings_pixel_rep_0       = undef,
  Optional[Integer[1]]                $hdmi_timings_frame_rate_0      = undef,
  Optional[Enum[0]]                   $hdmi_timings_interlaced_0      = undef,
  Optional[Integer[1]]                $hdmi_timings_pixel_freq_0      = undef,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                      $hdmi_timings_aspect_ratio_0    = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_mode_0              = undef,
  Optional[Enum[0,4]]                 $edid_content_type_0            = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_enable_4kp60_0            = undef,
  Optional[Integer[1]]                $hdmi_cvt_width_0               = undef,
  Optional[Integer[1]]                $hdmi_cvt_height_0              = undef,
  Optional[Integer[1]]                $hdmi_cvt_framerate_0           = undef,
  Variant[Integer[1,6],Enum['4:3','14:9','16:9','5:4','16:10','15:9',],Undef]
                                      $hdmi_cvt_aspect_0              = undef
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_margins_0             = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_interface_0           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_rb_0                  = undef,
  # - - HDMI port 1
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_edid_1             = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_edid_file_1               = undef,
  Optional[String]                    $hdmi_edid_filename_1           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_edid_audio_1        = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_edid_audio_1       = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_edid_3d_1           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_cec_init_1         = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_cec_1              = undef,
  Optional[String]                    $cec_osd_name_1                 = undef,
  Optional[Integer[0,4]]              $hdmi_pixel_encoding_1          = undef,
  Optional[Integer[0,1]]              $hdmi_blanking_1                = undef,
  Optional[Integer[1,2]]              $hdmi_drive_1                   = undef,
  Optional[Integer[0,11]]             $config_hdmi_boost_1            = undef,
  Optional[Integer[0,2]]              $hdmi_group_1                   = undef,
  Optional[Integer[0,87]]             $hdmi_mode_1                    = undef,
  Optional[Integer[1]]                $hdmi_timings_h_active_pixels_1 = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_timings_h_sync_polarity_1 = undef,
  Optional[Integer[0]]                $hdmi_timings_h_front_porch_1   = undef,
  Optional[Integer[0]]                $hdmi_timings_h_sync_pulse_1    = undef,
  Optional[Integer[1]]                $hdmi_timings_h_back_porch_1    = undef,
  Optional[Integer[1]]                $hdmi_timings_v_active_lines_1  = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_timings_v_sync_polarity_1 = undef,
  Optional[Integer[0]]                $hdmi_timings_v_front_porch_1   = undef,
  Optional[Integer[0]]                $hdmi_timings_v_sync_pulse_1    = undef,
  Optional[Integer[1]]                $hdmi_timings_v_back_porch_1    = undef,
  Optional[Enum[0]]                   $hdmi_timings_v_sync_offset_a_1 = undef,
  Optional[Enum[0]]                   $hdmi_timings_v_sync_offset_b_1 = undef,
  Optional[Enum[0]]                   $hdmi_timings_pixel_rep_1       = undef,
  Optional[Integer[1]]                $hdmi_timings_frame_rate_1      = undef,
  Optional[Enum[0]]                   $hdmi_timings_interlaced_1      = undef,
  Optional[Integer[1]]                $hdmi_timings_pixel_freq _1     = undef,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                      $hdmi_timings_aspect_ratio_1    = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_mode_1              = undef,
  Optional[Enum[0,4]]                 $edid_content_type_1            = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_enable_4kp60_1            = undef,
  Optional[Integer[1]]                $hdmi_cvt_width_1               = undef,
  Optional[Integer[1]]                $hdmi_cvt_height_1              = undef,
  Optional[Integer[1]]                $hdmi_cvt_framerate_1           = undef,
  Variant[Integer[1,6],Enum['4:3','14:9','16:9','5:4','16:10','15:9',],Undef]
                                      $hdmi_cvt_aspect_1              = undef
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_margins_1             = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_interface_1           = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_cvt_rb_1                  = undef,
  # - LCD display/touchscreen options
  Variant[Boolean,Integer[0,1],Undef] $ignore_lcd                     = undef,
  Variant[Boolean,Integer[0,1],Undef] $display_default_lcd            = undef,
  Optional[Integer[1]]                $lcd_frames                     = undef,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']]
                                      $lcd_rotate                     = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_touchscreen            = undef,
  Variant[Boolean,Integer[0,1],Undef] $enable_dpi_lcd                 = undef,
  Optional[Enum[0,2]]                 $dpi_group                      = undef,
  Optional[Enum[0,87]]                $dpi_mode                       = undef,
  Optional[Integer[1]]                $dpi_timings_h_active_pixels    = undef
  Variant[Boolean,Integer[0,1],Undef] $dpi_timings_h_sync_polarity    = undef,
  Optional[Integer[0]]                $dpi_timings_h_front_porch      = undef,
  Optional[Integer[0]]                $dpi_timings_h_sync_pulse       = undef,
  Optional[Integer[1]]                $dpi_timings_h_back_porch       = undef,
  Optional[Integer[1]]                $dpi_timings_v_active_lines     = undef,
  Variant[Boolean,Integer[0,1],Undef] $dpi_timings_v_sync_polarity    = undef,
  Optional[Integer[0]]                $dpi_timings_v_front_porch      = undef,
  Optional[Integer[0]]                $dpi_timings_v_sync_pulse       = undef,
  Optional[Integer[1]]                $dpi_timings_v_back_porch       = undef,
  Optional[Enum[0]]                   $dpi_timings_v_sync_offset_a    = undef,
  Optional[Enum[0]]                   $dpi_timings_v_sync_offset_b    = undef,
  Optional[Enum[0]]                   $dpi_timings_pixel_rep          = undef,
  Optional[Integer[1]]                $dpi_timings_frame_rate         = undef,
  Optional[Enum[0]]                   $dpi_timings_interlaced         = undef,
  Optional[Integer[1]]                $dpi_timings_pixel_freq         = undef,
  Variant[Integer[1,8],Enum['4:3','14:9','16:9','5:4','16:10','15:9','21:9','64:27'],Undef]
                                      $dpi_timings_aspect_ratio       = undef,
  # - Generic display options
  Variant[Boolean,Integer[0,1],Undef] $hdmi_force_hotplug             = undef,
  Variant[Boolean,Integer[0,1],Undef] $hdmi_ignore_hotplug            = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_overscan               = undef,
  Optional[Integer[0]]                $ovrecan_left                   = undef,
  Optional[Integer[0]]                $overscan_right                 = undef,
  Optional[Integer[0]]                $overscan_top                   = undef,
  Optional[Integer[0]]                $overscan_bottom                = undef,
  Variant[Boolean,Integer[0,1],Undef] $overscan_scale                 = undef,
  Optional[Integer[1]]                $framebuffer_width              = undef,
  Optional[Integer[1]]                $framebuffer_height             = undef,
  Optional[Integer[1]]                $max_framebuffer_width          = undef,
  Optional[Integer[1]]                $max_framebuffer_height         = undef,
  Optional[Enum[8,16,24,32]]          $framebuffer_depth              = undef,
  Variant[Boolean,Integer[0,1],Undef] $framebuffer_ignore_alpha       = undef,
  Optional[Enum[0,1,2,3,7]]           $framebuffer_priority           = undef,
  Variant[Boolean,Integer[0,1],Undef] $test_mode                      = undef,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']]
                                      $display_hdmi_rotate            = undef,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']]
                                      $display_lcd_rotate            = undef,
  Optional[Enum[0,1,2,3,'0x10000','0x20000']]
                                      $display_rotate                = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_fw_kms_setup          = undef,
  Variant[Boolean,Integer[0,1],Undef] $dispmanx_offline              = undef,
  # Camera settings
  Variant[Boolean,Integer[0,1],Undef] $disable_camera_led            = undef,
  # Boot options
  Optional[String]                    $start_file                    = undef,
  Optional[String]                    $fixup_file                    = undef,
  Variant[Boolean,Integer[0,1],Undef] $start_x                       = undef,
  Variant[Boolean,Integer[0,1],Undef] $start_debug                   = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_commandline_tags      = undef,
  Variant[String]                     $cmdline                       = undef,
  Variant[String]]                    $kernel                        = undef,
  Variant[Boolean,Integer[0,1],Undef] $arm_64bit                     = undef,
  Variant[Boolean,Integer[0,1],Undef] $arm_control                   = undef,
  Optional[Regexp[/^0x[a-fA-Z\d]{4,8}$/]]
                                      $kernel_address                = undef,
  Variant[Boolean,Integer[0,1],Undef] $kernel_old                    = undef,
  Variant[String,Array[String,1],Undef]
                                      $ramfsfile                     = undef,
  Optional[Regexp[/^0x[a-fA-Z\d]{4,8}$/]]
                                      $ramfsaddr                     = undef,
  Optional[String]                    $initramfs_file                = undef,
  Variant[Regexp[/^0x[a-fA-Z\d]{4,8}$/],Enum[0,'followkernel'],Undef]
                                      $initramfs_addr                = undef,
  Optional[Integer[1]]                $init_uart_baud                = undef,
  Optional[Integer[1]]                $init_uart_clock               = undef,
  Optional[Integer[0]]                $bootcode_delay                = undef,
  Optional[Integer[0]]                $boot_delay                    = undef,
  Optional[Integer[0]]                $boot_delay_ms                 = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_splash                = undef,
  Variant[Boolean,Integer[0,1],Undef] $enable_gic                    = undef,
  # Device trees, overlays, and parameters
  #TODO Add this section
  # GPIO control
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_0                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_1                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_2                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_3                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_4                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_5                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_6                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_7                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_8                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_9                        = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_10                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_11                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_12                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_13                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_14                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_15                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_16                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_17                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_18                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_19                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_20                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_21                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_22                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_23                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_24                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_25                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_26                       = undef,
  Variant[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],
    Array[Enum['ip','op','a0','a1','a2','a3','a4','a5','dh','dl','pu','pd','pn','np'],Undef]
                                      $gpio_27                       = undef,
  # Overcloacking options
  Optional[Integer[1]]                $arm_freq                      = undef,
  Optional[Integer[1]]                $gpu_freq                      = undef,
  Optional[Integer[1]]                $core_freq                     = undef,
  Optional[Integer[1]]                $h264_freq                     = undef,
  Optional[Integer[1]]                $isp_freq                      = undef,
  Optional[Integer[1]]                $v3d_freq                      = undef,
  Optional[Integer[1]]                $sdram_freq                    = undef,
  Optional[Integer[1]]                $over_voltage                  = undef,
  Optional[Integer[1]]                $over_voltage_sdram            = undef,
  Optional[Integer[1]]                $over_voltage_sdram_c          = undef,
  Optional[Integer[1]]                $over_voltage_sdram_i          = undef,
  Optional[Integer[1]]                $over_voltage_sdram_p          = undef,
  Variant[Boolean,Integer[0,1],Undef] $force_turbo                   = undef,
  Optional[Integer[0,60]]             $initial_turbo                 = undef,
  Optional[Integer[0]]                $arm_freq_min                  = undef,
  Optional[Integer[0]]                $core_freq_min                 = undef,
  Optional[Integer[0]]                $gpu_freq_min                  = undef,
  Optional[Integer[0]]                $h264_freq_min                 = undef,
  Optional[Integer[0]]                $isp_freq_min                  = undef,
  Optional[Integer[0]]                $v3d_freq_min                  = undef,
  Optional[Integer[0]]                $sdram_freq_min                = undef,
  Optional[Integer[0]]                $over_voltage_min              = undef,
  Optional[Integer[0,85]]             $temp_limit                    = undef,
  Optional[Integer[0,70]]             $temp_soft_limit               = undef,
  Variant[Boolean,Integer[0,1],Undef] $never_over_voltage            = undef,
  Variant[Boolean,Integer[0,1],Undef] $disable_auto_turbo            = undef,
  # Miscellaneous options
  Variant[Boolean,Integer[0,2],Undef] $avoid_warnings                = undef,
  Optional[Enum['msg','assert','ex','info','level','list']]
                                      $logging_level                 = undef,
  Optional[String]                    $include                       = undef,
) {
}
