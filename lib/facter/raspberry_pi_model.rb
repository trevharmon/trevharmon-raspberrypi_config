Facter.add('raspberry_pi_model') do

  confine :lsbdistid => 'Raspbian'

  # Data from https://elinux.org/RPi_HardwareHistory
  data = {
    'Beta'   => { 'release_date' => 'Q1 2012',  'model' => 'B (Beta)',                                                 'memory' => '256 MB',                                         },
    '0002'   => { 'release_date' => 'Q1 2012',  'model' => 'B',                               'pcb_revision' => '1.0', 'memory' => '256 MB',                                         },
    '0003'   => { 'release_date' => 'Q3 2012',  'model' => 'B (ECN0001)',                     'pcb_revision' => '1.0', 'memory' => '256 MB',                                         },
    '0004'   => { 'release_date' => 'Q3 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Sony'       },
    '0005'   => { 'release_date' => 'Q4 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Qisda'      },
    '0006'   => { 'release_date' => 'Q4 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Egoman'     },
    '0007'   => { 'release_date' => 'Q1 2013',  'model' => 'A',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Egoman'     },
    '0008'   => { 'release_date' => 'Q1 2013',  'model' => 'A',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Sony'       },
    '0009'   => { 'release_date' => 'Q1 2013',  'model' => 'A',                               'pcb_revision' => '2.0', 'memory' => '256 MB',          'manufacturer' => 'Qisda'      },
    '000d'   => { 'release_date' => 'Q4 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '512 MB',          'manufacturer' => 'Egoman'     },
    '000e'   => { 'release_date' => 'Q4 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '000f'   => { 'release_date' => 'Q4 2012',  'model' => 'B',                               'pcb_revision' => '2.0', 'memory' => '512 MB',          'manufacturer' => 'Qisda'      },
    '0010'   => { 'release_date' => 'Q3 2014',  'model' => 'B+',                              'pcb_revision' => '1.0', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '0011'   => { 'release_date' => 'Q2 2014',  'model' => 'Compute Module 1',                'pcb_revision' => '1.0', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '0012'   => { 'release_date' => 'Q4 2014',  'model' => 'A+',                              'pcb_revision' => '1.1', 'memory' => '256 MB',          'manufacturer' => 'Sony'       },
    '0013'   => { 'release_date' => 'Q1 2015',  'model' => 'B+',                              'pcb_revision' => '1.2', 'memory' => '512 MB',          'manufacturer' => 'Embest'     },
    '0014'   => { 'release_date' => 'Q2 2014',  'model' => 'Compute Module 1',                'pcb_revision' => '1.0', 'memory' => '512 MB',          'manufacturer' => 'Embest'     },
    '0015'   => {                               'model' => 'A+',                              'pcb_revision' => '1.1', 'memory' => '256 MB / 512 MB', 'manufacturer' => 'Embest'     },
    'a01040' => { 'release_date' => 'Unknown',  'model' => '2 Model B',                       'pcb_revision' => '1.0', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'a01041' => { 'release_date' => 'Q1 2015',  'model' => '2 Model B',                       'pcb_revision' => '1.1', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'a21041' => { 'release_date' => 'Q1 2015',  'model' => '2 Model B',                       'pcb_revision' => '1.1', 'memory' => '1 GB',            'manufacturer' => 'Embest'     },
    'a22042' => { 'release_date' => 'Q3 2016',  'model' => '2 Model B (with BCM2837)',        'pcb_revision' => '1.2', 'memory' => '1 GB',            'manufacturer' => 'Embest'     },
    '900021' => { 'release_date' => 'Q3 2016',  'model' => 'A+',                              'pcb_revision' => '1.1', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '900032' => { 'release_date' => 'Q2 2016?', 'model' => 'B+',                              'pcb_revision' => '1.2', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '900092' => { 'release_date' => 'Q4 2015',  'model' => 'Zero',                            'pcb_revision' => '1.2', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '900093' => { 'release_date' => 'Q2 2016',  'model' => 'Zero',                            'pcb_revision' => '1.3', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    '920093' => { 'release_date' => 'Q4 2016?', 'model' => 'Zero',                            'pcb_revision' => '1.3', 'memory' => '512 MB',          'manufacturer' => 'Embest'     },
    '9000c1' => { 'release_date' => 'Q1 2017',  'model' => 'Zero W',                          'pcb_revision' => '1.1', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    'a02082' => { 'release_date' => 'Q1 2016',  'model' => '3 Model B',                       'pcb_revision' => '1.2', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'a020a0' => { 'release_date' => 'Q1 2017',  'model' => 'Compute Module 3 (and CM3 Lite)', 'pcb_revision' => '1.0', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'a22082' => { 'release_date' => 'Q1 2016',  'model' => '3 Model B',                       'pcb_revision' => '1.2', 'memory' => '1 GB',            'manufacturer' => 'Embest'     },
    'a32082' => { 'release_date' => 'Q4 2016',  'model' => '3 Model B',                       'pcb_revision' => '1.2', 'memory' => '1 GB',            'manufacturer' => 'Sony Japan' },
    'a020d3' => { 'release_date' => 'Q1 2018',  'model' => '3 Model B+',                      'pcb_revision' => '1.3', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    '9020e0' => { 'release_date' => 'Q4 2018',  'model' => '3 Model A+',                      'pcb_revision' => '1.0', 'memory' => '512 MB',          'manufacturer' => 'Sony'       },
    'a02100' => { 'release_date' => 'Q1 2019',  'model' => 'Compute Module 3+',               'pcb_revision' => '1.0', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'a03111' => { 'release_date' => 'Q2 2019',  'model' => '4 Model B',                       'pcb_revision' => '1.1', 'memory' => '1 GB',            'manufacturer' => 'Sony'       },
    'b03111' => { 'release_date' => 'Q2 2019',  'model' => '4 Model B',                       'pcb_revision' => '1.1', 'memory' => '2 GB',            'manufacturer' => 'Sony'       },
    'c03111' => { 'release_date' => 'Q2 2019',  'model' => '4 Model B',                       'pcb_revision' => '1.1', 'memory' => '4 GB',            'manufacturer' => 'Sony'       },
  }

  hardware = `/usr/bin/awk '/^Hardware/ {sub("^1000", "", $3); print $3}' /proc/cpuinfo`.strip
  revision = `/usr/bin/awk '/^Revision/ {sub("^1000", "", $3); print $3}' /proc/cpuinfo`.strip
  serial   = `/usr/bin/awk '/^Serial/ {sub("^1000", "", $3); print $3}' /proc/cpuinfo`.strip

  fact = {}
  if data.key?(revision)
    fact = data[revision]
  end
  fact[ 'hardware' ] = hardware
  fact[ 'revision' ] = revision
  fact[ 'serial'   ] = serial

  setcode do
    fact
  end

end
