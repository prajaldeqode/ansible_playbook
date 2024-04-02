data_dir = "/var/lib/nomad"
log_level = "DEBUG"
client {
  enabled = true
  servers = ["10.128.0.33:4647","34.30.95.221:4647"]  # IP address and port of the Nomad server
  options {
    "driver.docker.enabled" = "true"
    "plugin.docker.config.image" = "docker:19.03.12"
    "plugin.docker.config.privileged" = "true"
    "plugin.docker.config.volumes.enabled" = "true"
    "plugin.docker.config.network_mode" = "bridge"
    }
}
