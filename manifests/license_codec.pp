# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::license_codec {

  $mpg2 = $::raspberrypi_config::decode_mpg2 ? {
    Regex   => [$::raspberrypi_config::decode_mpg2],
    Array   => $::raspberrypi_config::decode_mpg2,
    default => [],
  }

  $wvc1 = $::raspberrypi_config::decode_wvc1 ? {
    Regex   => [$::raspberrypi_config::decode_wvc1],
    Array   => $::raspberrypi_config::decode_wvc1,
    default => [],
  }

  concat::fragment { "${::raspberrypi_config::config_file} License/Codec":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/license_codec.epp', {
      'decode_MPG2' => $mpg2,
      'decode_WVC1' => $wvc1,
    }),
    order   => '200',
  }

}
