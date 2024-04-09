node_name  = "consul-client"
server     = false
datacenter = "dc1"
data_dir   = "consul/data"
log_level  = "INFO"
retry_join = ["consul-server"]
service {
  id      = "dns"
  name    = "dns"
  tags    = ["primary"]
  address = "10.0.1.4"
  port    = 8600
  check {
    id       = "dns"
    name     = "Consul DNS TCP on port 8600"
    tcp      = "10.0.1.4:8600"
    interval = "10s"
    timeout  = "1s"
  }
}

