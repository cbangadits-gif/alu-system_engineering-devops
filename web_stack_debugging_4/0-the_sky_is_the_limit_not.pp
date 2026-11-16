# Raise the open files limit for nginx to fix failed requests under load
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
