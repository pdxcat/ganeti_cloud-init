$config["apt-mirror"] = "http://mirrors.cat.pdx.edu/ubuntu/"
$config["bootcmd"].push "apt-get update"
$config["bootcmd"].push "apt-get install puppet"
$config["bootcmd"].push "cp /tmp/puppet.conf /etc/puppet/puppet.conf"
