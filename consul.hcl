node_name  = "consul-client"
server     = false
datacenter = "dc1"
data_dir   = "consul/data"
log_level  = "INFO"
retry_join = ["10.0.1.4"]
service {
  id      = "dns"
  name    = "dns"
  tags    = ["primary"]
  address = "localhost"
  port    = 8600
  check {
    id       = "dns"
    name     = "Consul DNS TCP on port 8600"
    tcp      = "localhost:8600"
    interval = "10s"
    timeout  = "1s"
  }
}

