_application_list="${_application_list:-tor,tor-arm,tor-geoipdb,deb.torproject.org-keyring}"
_bind9_dir="${_bind9_dir:-/etc}"
_bind9_user="${_bind9_user:-named}"
_bind9_ipv4="${_bind9_ipv4:-127.0.0.1}"
_bind9_port="${_bind9_port:-53}"
_connection_count="${_conncetion_count:-8}"
_enable_ipv6="${_enable_ipv6:-no}"
_external_parse="${_external_parse:-1}"
_exit="${_exit:-0}"
_firejail_bridge_interface="${_firejail_bridge_interface:-br0}"
_firejail_bridge_ipv4="${_firejail_bridge_ipv4:-10.10.20.1}"
_firejail_bridge_forward="${_firejail_bridge_forward:-enabled}"
_firejail_dir="${_firejail_dir:-/etc}"
_firejail_host_interface="${_firejail_host_interface:-eth0}"
_firejail_nat_ipv4="${_firejail_nat_ipv4:-10.10.20.0}"
_firejail_service_name="${_firejail_service_name:-nginx}"
_fail2ban_dir="${_fail2ban_dir:-/etc}"
_install_method="${_install_method:-aptget}"
_nginx_dir="${_nginx_dir:-/etc}"
_nginx_index="${_nginx_dir:-index.html}"
_nginx_http_port="${_nginx_http_port:-8080}"
_nginx_service_name="${_nginx_service_name:-hidden_service}"
_nginx_ssl_port="${_nginx_ssl_port:-8443}"
_openssh_port="${_openssh_port:-22}"
_passwd="${_passwd:-12}"
_privoxy_dir="${_privoxy_dir:-/etc}"
_privoxy_user="${_privoxy_user:-privoxy}"
_polipo_dir="${_polipo_dir:-/etc}"
_polipo_user="${_polipo_user:-polipo}"
_squid_dir="${_squid_dir:-/etc}"
_squid_user="${_squid_dir:-squid}"
_temp_dir="${_temp_dir:-/tmp/tor_source_download}"
_tor_user="${_tor_user:-debian-tor}"
_tor_directory="${_tor_directory:-/etc}"
_tor_dir_port="${_tor_dir_port:-9030}"
_tor_dns_port="${_tor_dns_port:-5300}"
_tor_node_types="${_tor_node_types:-client}"
_tor_bridge_nickname="${_tor_bridge_nickname:-Bridge_Node}"
_tor_exit_nickname="${_tor_exit_nickname:-Exit_Node}"
_tor_relay_nickname="${_tor_relay_nickname:-Relay_Node}"
_tor_relay_bandwidth_rate="${_tor_relay_bandwidth_rate:-5}"
_tor_relay_bandwidth_burst="${_tor_relay_bandwidth_burst:-10}"
#_tor_service_nickname="${_tor_service_nickname:-service}"
#_tor_service_clients="${_tor_service_clients:-${USER}}"
_tor_web_dir="${_tor_web_dir:-/var/www/tor}"
_tor_service_clients="${_tor_service_clients:-USER}"
_tor_or_port="${_tor_or_port:-443}"
_tor_ssh_port="${_tor_ssh_port:-22422}"
_tor_socks_bind_address="${_tor_socks_bind_address:-${_lo_ipv4%/*}}"
_tor_socks_listen_address="${_tor_socks_listen_address:-${_lo_ipv4%/*}}"
_tor_web_port="${_tor_web_port:-8080}"
### Default_variables_help default_variables_help default_variables.sh
#	File:	${_script_dir}/functions/tor/sample_vars/default_variables.sh
#	Loads defaults for any veriable not already set via [${_script_name}] arguments that
#	modify one or two values, ie [${_script_name -C=4] would only change the
#	[\$_connection_count] variable's value while leaving all others unchanged.
#	Do Not edit this file without first reading through all of the source code
#	of [${_script_name}]
#	instead copy [${_script_dir}/functions/tor/sample_vars/blank_torinstall_vars.sh]
#	to a file path of your choosing, modify it, then load with the follwoing
#	[ ${_script_name} -vf="..." ]
#	to load your own custom variables file into [${_script_name}]
#	this is because [default_variables.sh] file only contains
#	minum defaults where as [blank_torinstall_vars.sh] contains all
#	available variables allong with helpfull documentation near the end.
#	This variables file also combines any additional applications sellected
#	via [-A="nginx"] option to allow for combining actions for installing
#	Tor services and web services. By default only Tor's neaded packages are downloaded
#	via [-I="aptget"] and inlcude; tor tor-arm tor-geoipdb and keyring if [-I="source"]
#	then only Tor is downloaded from github and setup.
#	Future versions of [${_script_name}] will enable downloading of other source code.
####
