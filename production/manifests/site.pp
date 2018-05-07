node 'node2.puppet.local' {
#user_password 

}

node default {
  
  include 'motd'

  # Example:
  # user {'username':
  # ensure => present,
  # uid    => '102',
  # gid    => 'wheel',
  # shell  => '/bin/bash',
  # home   => '/home/username',
  # managehome => true,
  # }

  group {
    ensure   =>  present,
  }

  user {'admin':
    ensure      =>  present,
    home        =>  '/home/admin',
    managehome  =>  true,
    password    =>  'jiic3jiic3', 
    gid         =>  'admin',
    groups      =>  'wheel',
    shell       => '/bin/bash',
  }   

  # user { 'glscott_user':
  #         name       => 'glscott',
  #         groups     => 'wheel',
  #         managehome => true,
  #         password   => '$1$JjT8L6Dp$i8l.1G5NDQ2/1klpYXeDT.',
  #         ensure     => present
  #     }

  class {'ntp' : }
}
