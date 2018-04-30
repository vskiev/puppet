node default {
  
  include 'motd'

  user { 'glscott_user':
          name       => 'glscott',
          groups     => 'wheel',
          managehome => true,
          password   => '$1$JjT8L6Dp$i8l.1G5NDQ2/1klpYXeDT.',
          ensure     => present
   }
}
