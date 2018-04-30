class motd {

  $hostname = $facts['networking']['fqdn']
  $os_name = $facts['os']['name']
  $os_release = $facts['os']['release']

   

  if $hostname == 'puppetsrv.puppet.local' {

    file { '/etc/motd':
      path   => '/etc/motd'
      ensure => file,
      content => "\n\n[PUppet Master] ${hostname} ${os_name}\n\n"
  }
  elseif $facts['networking']['domain'] == 'someother.com'
   {
   File {'/etc/motd': 
     path => '/etc/motd',
     ensure => file,
     content => "\n\n[PUppet Master] ${hostname} ${os_name}\n\n",
     }
    }
}
