# fixing Apache is returning a 500 error

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php; sudo service apache2 restart',
  path    => '/usr/local/bin/:/bin/ '
}
