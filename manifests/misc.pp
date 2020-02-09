# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::misc {

  concat::fragment { "${config_file} Misc":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/misc.epp', {
      'avoid_warnings' => $::raspberrypi_config::avoid_warnings,
      'logging_level'  => $::raspberrypi_config::logging_level,
      'include'        => $::raspberrypi_config::include,
    }),
    order   => '800',
  }

}
