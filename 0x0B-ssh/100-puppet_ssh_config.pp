# set up your client SSH configuration file so that you can connect
# to a server without typing a password
# Must be configured to use the private key ~/. ssh/school
include stdlib

file_line { 'USE private key':
  path =>  '/etc/ssh/ssh_config',
  line =>  'IdentityFile ~/.ssh/school'
}

file_line { 'TURN OFF Password Authenticatication':
  path =>  '/etc/ssh/ssh_config',
  line =>  'PasswordAuthentication no'
}
