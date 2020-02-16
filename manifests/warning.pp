define raspberrypi_conifg::warning (
  String  $message          = $itle,
  Boolean $show_warning     = $::raspberrypi_config::show_warnings,
  Boolean $warning_as_error = $::raspberrypi_config::warnings_as_errors,
) {

  if $warning_as_error_error {
    fail($message)
  }
  else {
    if $how_warning {
      notify{ $message: }
    }
  }

}
