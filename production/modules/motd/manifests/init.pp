class motd {

  $hostname = $facts['networking']['fqdn']
  $os_name = $facts['os']['name']
  $os_release = $facts['os']['release']
  $os_uptime = $facts['system_uptime']['uptime']

  if $hostname == 'Node1'
   File {'/etc/motd': 
     path => '/etc/motd',
     ensure => file,
     content => "\n\n[PUppet Master] ${hostname} ${os_name} ${os_release} ${uptime}\n\n",
     }
}
