$config["bootcmd"].push "sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm"
$config["bootcmd"].push "yum -y install puppet"
$config["bootcmd"].push "/tmp/copycfg"
$config["bootcmd"].push "cp /tmp/puppet.conf /etc/puppet/puppet.conf"
