# Make passwordAuthentication and add new private key
file_line { 'replace passwordAuthentication':
  ensure  => 'present',
  path    => '~/.ssh/school',
  replace => true,
  line    => 'PasswordAuthentication no',
  match   => 'PasswordAuthentication yes',
}

file_line { 'add the private key school':
  ensure => 'present',
  path   => '~/.ssh/school',
  line   => 'IdentityFile school',
}
