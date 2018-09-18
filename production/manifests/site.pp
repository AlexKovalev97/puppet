node 'agent-centos.epam.com' {
class { 'webserver': }

}

node 'agent-ubuntu.epam.com' {
class { 'webserver': }
include '::mysql::server'
  mysql::db { 'test_mdb':
    user     => 'test_user',
    password => 'password',
    host     => 'agent-ubuntu',
    grant    => ['SELECT', 'UPDATE'],
  }
}
