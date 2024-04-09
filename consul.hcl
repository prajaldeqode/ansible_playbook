node_name = "consul-server"
server    = true
bootstrap = true
ui_config {
  enabled = true
}
datacenter = "dc1"
data_dir   = "consul/data"
log_level  = "INFO"

# used for internal RPC and Serf
bind_addr = "10.0.1.4"

# Used for HTTP, HTTPS, DNS, and gRPC addresses.
# loopback is not included in GetPrivateInterfaces because it is not routable.
client_addr = "{{ GetPrivateInterfaces | exclude \"type\" \"ipv6\" | join \"address\" \" \" }} {{ GetAllInterfaces | include \"flags\" \"loopback\" | join \"address\" \" \" }}"

# advertises gossip and RPC interface to other nodes
advertise_addr = "{{ GetInterfaceIP \"en0\" }}"


