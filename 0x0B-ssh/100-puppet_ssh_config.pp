# set up your client SSH configuration file so that you can connect
# to a server without typing a password
# Must be configured to use the private key ~/. ssh/school
file { 'USE private key':
  path  =>  '/etc/ssh/ssh_config',
  line  =>  'IdentityFile ~/.ssh/school'
}

file { 'TURN OFF Password Authenticatication':
  path  =>  '/etc/ssh/ssh_config',
  line  =>  'PasswordAuthentication no'
}
