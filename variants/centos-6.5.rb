$config["runcmd"].push "sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm"
$config["runcmd"].push "yum -y install puppet"
$config["runcmd"].push "/tmp/copycfg"
$config["runcmd"].push "cp /tmp/puppet.conf /etc/puppet/puppet.conf"
