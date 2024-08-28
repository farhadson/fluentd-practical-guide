# https://docs.fluentd.org/installation/before-install
net.core.somaxconn = 1024
### 4096
net.core.netdev_max_backlog = 5000
net.core.rmem_max = 16777216
### ???? no file
net.core.wmem_max = 16777216
### ???? no file
net.ipv4.tcp_wmem = 4096 12582912 16777216
### ok
net.ipv4.tcp_rmem = 4096 12582912 16777216
### ok
net.ipv4.tcp_max_syn_backlog = 8096
### 4096
net.ipv4.tcp_slow_start_after_idle = 0
### 1
net.ipv4.tcp_tw_reuse = 1
### 2
net.ipv4.ip_local_port_range = 10240 65535
###32768	60999

# If forward uses port 24224, reserve that port number for use as an ephemeral port.
# If another port, e.g., monitor_agent uses port 24220, add a comma-separated list of port numbers.
# net.ipv4.ip_local_reserved_ports = 24220,24224
net.ipv4.ip_local_reserved_ports = 24224



#https://github.com/fluent/fluentd/issues/89
#https://groups.google.com/g/fluentd/c/h-xK5OZ8ytM

### path /etc/sysctl.conf
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 10240 65535

### stackoverflow path 
echo 1024 65535 > /proc/sys/net/ipv4/ip_local_port_range


# https://github.com/Subaru365/fluentd-docker-adtech/issues/1
# https://stackoverflow.com/questions/63600995/how-to-setup-net-ipv4-tcp-tw-recycle-in-a-docker-container
# https://docs.docker.com/reference/cli/docker/container/run/#sysctl
# https://forums.docker.com/t/will-docker-inherit-the-host-kernel-parameters-such-as-tcp-tw-reuse-tcp-fin-timeout/78256
docker --sysctl net.ipv4.ip_local_port_range="1024 65535" image
docker run --sysctl net.ipv4.ip_forward=1 someimage
# https://forum.vyos.io/t/linux-tcp-tw-reuse-2-how-is-this-set-and-what-is-the-significance/5286/4



# https://github.com/fluent/fluent-plugin-opensearch?tab=readme-ov-file#reload_connections
# https://github.com/uken/fluent-plugin-elasticsearch/issues/525#issuecomment-474735508
reload_connections false

reconnect_on_error true
reload_on_failure true
reload_connections false