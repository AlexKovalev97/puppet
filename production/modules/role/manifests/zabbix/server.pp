# Role for Zabbix server

class role::zabbix::server {
  include profile::zabbix::server
  include profile::db
  include profile::web
}
