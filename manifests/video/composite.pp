# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::video::composite {

  $sdtv_disable_colour_burst = $::raspberrypi_config::sdtv_disable_colour_burst ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::sdtv_disable_colour_burst,
  }
  $enable_tvout = $::raspberrypi_config::enable_tvout ? {
    undef   => undef,
    0       => false,
    1       => true,
    default => $::raspberrypi_config::enable_tvout,
  }
  if $enable_tvout and ($::raspberrypi_config::model_type != 'B' or $::raspberrypi_config::model_version != 4) {
    rapsberrypi_config::waring{ 'The enable_tvout feature is only available on Pi 4B models': }
  }

  concat::fragment { "${config_file} Video Composite":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/video/composite.epp', {
      'sdtv_mode'                 => $::raspberrypi_config::sdtv_mode,
      'sdtv_aspect'               => $::raspberrypi_config::sdtv_aspect,
      'sdtv_disable_colour_burst' => $sdtv_disable_colour_burst,
      'enable_tvout'              => $enable_tvout,
    }),
    order   => '300',
  }

}
