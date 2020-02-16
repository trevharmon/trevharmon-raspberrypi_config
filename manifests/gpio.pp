# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include raspberrypi_config
class raspberrypi_config::gpio {

  $data = {
    '0'  => $::raspberrypi_config::gpio_0 ?
            { Enum => [ $::raspberrypi_config::gpio_0  ], Array => $::raspberrypi_config::gpio_0,  default => undef },
    '1'  => $::raspberrypi_config::gpio_1 ?
            { Enum => [ $::raspberrypi_config::gpio_1  ], Array => $::raspberrypi_config::gpio_1,  default => undef },
    '2'  => $::raspberrypi_config::gpio_2 ?
            { Enum => [ $::raspberrypi_config::gpio_2  ], Array => $::raspberrypi_config::gpio_2,  default => undef },
    '3'  => $::raspberrypi_config::gpio_3 ?
            { Enum => [ $::raspberrypi_config::gpio_3  ], Array => $::raspberrypi_config::gpio_3,  default => undef },
    '4'  => $::raspberrypi_config::gpio_4 ?
            { Enum => [ $::raspberrypi_config::gpio_4  ], Array => $::raspberrypi_config::gpio_4,  default => undef },
    '5'  => $::raspberrypi_config::gpio_5 ?
            { Enum => [ $::raspberrypi_config::gpio_5  ], Array => $::raspberrypi_config::gpio_5,  default => undef },
    '6'  => $::raspberrypi_config::gpio_6 ?
            { Enum => [ $::raspberrypi_config::gpio_6  ], Array => $::raspberrypi_config::gpio_6,  default => undef },
    '7'  => $::raspberrypi_config::gpio_7 ?
            { Enum => [ $::raspberrypi_config::gpio_7  ], Array => $::raspberrypi_config::gpio_7,  default => undef },
    '8'  => $::raspberrypi_config::gpio_8 ?
            { Enum => [ $::raspberrypi_config::gpio_8  ], Array => $::raspberrypi_config::gpio_8,  default => undef },
    '9'  => $::raspberrypi_config::gpio_9 ?
            { Enum => [ $::raspberrypi_config::gpio_9  ], Array => $::raspberrypi_config::gpio_9,  default => undef },
    '10' => $::raspberrypi_config::gpio_10 ?
            { Enum => [ $::raspberrypi_config::gpio_10 ], Array => $::raspberrypi_config::gpio_10, default => undef },
    '11' => $::raspberrypi_config::gpio_11 ?
            { Enum => [ $::raspberrypi_config::gpio_11 ], Array => $::raspberrypi_config::gpio_11, default => undef },
    '12' => $::raspberrypi_config::gpio_12 ?
            { Enum => [ $::raspberrypi_config::gpio_12 ], Array => $::raspberrypi_config::gpio_12, default => undef },
    '13' => $::raspberrypi_config::gpio_13 ?
            { Enum => [ $::raspberrypi_config::gpio_13 ], Array => $::raspberrypi_config::gpio_13, default => undef },
    '14' => $::raspberrypi_config::gpio_14 ?
            { Enum => [ $::raspberrypi_config::gpio_14 ], Array => $::raspberrypi_config::gpio_14, default => undef },
    '15' => $::raspberrypi_config::gpio_15 ?
            { Enum => [ $::raspberrypi_config::gpio_15 ], Array => $::raspberrypi_config::gpio_15, default => undef },
    '16' => $::raspberrypi_config::gpio_16 ?
            { Enum => [ $::raspberrypi_config::gpio_16 ], Array => $::raspberrypi_config::gpio_16, default => undef },
    '17' => $::raspberrypi_config::gpio_17 ?
            { Enum => [ $::raspberrypi_config::gpio_17 ], Array => $::raspberrypi_config::gpio_17, default => undef },
    '18' => $::raspberrypi_config::gpio_18 ?
            { Enum => [ $::raspberrypi_config::gpio_18 ], Array => $::raspberrypi_config::gpio_18, default => undef },
    '19' => $::raspberrypi_config::gpio_19 ?
            { Enum => [ $::raspberrypi_config::gpio_19 ], Array => $::raspberrypi_config::gpio_19, default => undef },
    '20' => $::raspberrypi_config::gpio_20 ?
            { Enum => [ $::raspberrypi_config::gpio_20 ], Array => $::raspberrypi_config::gpio_20, default => undef },
    '21' => $::raspberrypi_config::gpio_21 ?
            { Enum => [ $::raspberrypi_config::gpio_21 ], Array => $::raspberrypi_config::gpio_21, default => undef },
    '22' => $::raspberrypi_config::gpio_22 ?
            { Enum => [ $::raspberrypi_config::gpio_22 ], Array => $::raspberrypi_config::gpio_22, default => undef },
    '23' => $::raspberrypi_config::gpio_23 ?
            { Enum => [ $::raspberrypi_config::gpio_23 ], Array => $::raspberrypi_config::gpio_23, default => undef },
    '24' => $::raspberrypi_config::gpio_24 ?
            { Enum => [ $::raspberrypi_config::gpio_24 ], Array => $::raspberrypi_config::gpio_24, default => undef },
    '25' => $::raspberrypi_config::gpio_25 ?
            { Enum => [ $::raspberrypi_config::gpio_25 ], Array => $::raspberrypi_config::gpio_25, default => undef },
    '26' => $::raspberrypi_config::gpio_26 ?
            { Enum => [ $::raspberrypi_config::gpio_26 ], Array => $::raspberrypi_config::gpio_26, default => undef },
    '27' => $::raspberrypi_config::gpio_27 ?
            { Enum => [ $::raspberrypi_config::gpio_27 ], Array => $::raspberrypi_config::gpio_27, default => undef },
  }

  concat::fragment { "${config_file} GPIO":
    source  => $::raspberrypi_config::config_file,
    content => epp('raspberrypi_config/gpio.epp', {
      'gpio' => $data,
    }),
    order   => '600',
  }

}
