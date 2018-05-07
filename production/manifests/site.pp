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

  group { 'admin':
    ensure   =>  present,
  }

  user {'admin':
    ensure      =>  present,
    home        =>  '/home/admin',
    managehome  =>  true, 
    gid         =>  'admin',
    groups      =>  'wheel',
    password    =>  'jiic3jiic3',
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
