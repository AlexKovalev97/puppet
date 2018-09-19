node 'agent-centos.epam.com' {
  include role::zabbix::server
}

node 'agent-ubuntu.epam.com' {
  include role::zabbix::agent
}
