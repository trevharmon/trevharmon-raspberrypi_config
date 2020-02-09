# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::gpio {

  $gpio0  = $::raspberrypi_config::_0  ? { Enum => [ $::raspberrypi_config::_0  ], Array => $::raspberrypi_config::_0,  default => [] }
  $gpio1  = $::raspberrypi_config::_1  ? { Enum => [ $::raspberrypi_config::_1  ], Array => $::raspberrypi_config::_1,  default => [] }
  $gpio2  = $::raspberrypi_config::_2  ? { Enum => [ $::raspberrypi_config::_2  ], Array => $::raspberrypi_config::_2,  default => [] }
  $gpio3  = $::raspberrypi_config::_3  ? { Enum => [ $::raspberrypi_config::_3  ], Array => $::raspberrypi_config::_3,  default => [] }
  $gpio4  = $::raspberrypi_config::_4  ? { Enum => [ $::raspberrypi_config::_4  ], Array => $::raspberrypi_config::_4,  default => [] }
  $gpio5  = $::raspberrypi_config::_5  ? { Enum => [ $::raspberrypi_config::_5  ], Array => $::raspberrypi_config::_5,  default => [] }
  $gpio6  = $::raspberrypi_config::_6  ? { Enum => [ $::raspberrypi_config::_6  ], Array => $::raspberrypi_config::_6,  default => [] }
  $gpio7  = $::raspberrypi_config::_7  ? { Enum => [ $::raspberrypi_config::_7  ], Array => $::raspberrypi_config::_7,  default => [] }
  $gpio8  = $::raspberrypi_config::_8  ? { Enum => [ $::raspberrypi_config::_8  ], Array => $::raspberrypi_config::_8,  default => [] }
  $gpio9  = $::raspberrypi_config::_9  ? { Enum => [ $::raspberrypi_config::_9  ], Array => $::raspberrypi_config::_9,  default => [] }
  $gpio10 = $::raspberrypi_config::_10 ? { Enum => [ $::raspberrypi_config::_10 ], Array => $::raspberrypi_config::_10, default => [] }
  $gpio11 = $::raspberrypi_config::_11 ? { Enum => [ $::raspberrypi_config::_11 ], Array => $::raspberrypi_config::_11, default => [] }
  $gpio12 = $::raspberrypi_config::_12 ? { Enum => [ $::raspberrypi_config::_12 ], Array => $::raspberrypi_config::_12, default => [] }
  $gpio13 = $::raspberrypi_config::_13 ? { Enum => [ $::raspberrypi_config::_13 ], Array => $::raspberrypi_config::_13, default => [] }
  $gpio14 = $::raspberrypi_config::_14 ? { Enum => [ $::raspberrypi_config::_14 ], Array => $::raspberrypi_config::_14, default => [] }
  $gpio15 = $::raspberrypi_config::_15 ? { Enum => [ $::raspberrypi_config::_15 ], Array => $::raspberrypi_config::_15, default => [] }
  $gpio16 = $::raspberrypi_config::_16 ? { Enum => [ $::raspberrypi_config::_16 ], Array => $::raspberrypi_config::_16, default => [] }
  $gpio17 = $::raspberrypi_config::_17 ? { Enum => [ $::raspberrypi_config::_17 ], Array => $::raspberrypi_config::_17, default => [] }
  $gpio18 = $::raspberrypi_config::_18 ? { Enum => [ $::raspberrypi_config::_18 ], Array => $::raspberrypi_config::_18, default => [] }
  $gpio19 = $::raspberrypi_config::_19 ? { Enum => [ $::raspberrypi_config::_19 ], Array => $::raspberrypi_config::_19, default => [] }
  $gpio20 = $::raspberrypi_config::_20 ? { Enum => [ $::raspberrypi_config::_20 ], Array => $::raspberrypi_config::_20, default => [] }
  $gpio21 = $::raspberrypi_config::_21 ? { Enum => [ $::raspberrypi_config::_21 ], Array => $::raspberrypi_config::_21, default => [] }
  $gpio22 = $::raspberrypi_config::_22 ? { Enum => [ $::raspberrypi_config::_22 ], Array => $::raspberrypi_config::_22, default => [] }
  $gpio23 = $::raspberrypi_config::_23 ? { Enum => [ $::raspberrypi_config::_23 ], Array => $::raspberrypi_config::_23, default => [] }
  $gpio24 = $::raspberrypi_config::_24 ? { Enum => [ $::raspberrypi_config::_24 ], Array => $::raspberrypi_config::_24, default => [] }
  $gpio25 = $::raspberrypi_config::_25 ? { Enum => [ $::raspberrypi_config::_25 ], Array => $::raspberrypi_config::_25, default => [] }
  $gpio26 = $::raspberrypi_config::_26 ? { Enum => [ $::raspberrypi_config::_26 ], Array => $::raspberrypi_config::_26, default => [] }
  $gpio27 = $::raspberrypi_config::_27 ? { Enum => [ $::raspberrypi_config::_27 ], Array => $::raspberrypi_config::_27, default => [] }

  concat::fragment { "${config_file} GPIO":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/gpio.epp', {
      'gpio_0'  => $gpio0,
      'gpio_1'  => $gpio1,
      'gpio_2'  => $gpio2,
      'gpio_3'  => $gpio3,
      'gpio_4'  => $gpio4,
      'gpio_5'  => $gpio5,
      'gpio_6'  => $gpio6,
      'gpio_7'  => $gpio7,
      'gpio_8'  => $gpio8,
      'gpio_9'  => $gpio9,
      'gpio_10' => $gpio10,
      'gpio_11' => $gpio11,
      'gpio_12' => $gpio12,
      'gpio_13' => $gpio13,
      'gpio_14' => $gpio14,
      'gpio_15' => $gpio15,
      'gpio_16' => $gpio16,
      'gpio_17' => $gpio17,
      'gpio_18' => $gpio18,
      'gpio_19' => $gpio19,
      'gpio_20' => $gpio20,
      'gpio_21' => $gpio21,
      'gpio_22' => $gpio22,
      'gpio_23' => $gpio23,
      'gpio_24' => $gpio24,
      'gpio_25' => $gpio25,
      'gpio_26' => $gpio26,
      'gpio_27' => $gpio27,
    }),
    order   => '600',
  }

}
