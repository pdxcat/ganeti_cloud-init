$config["bootcmd"].unshift "apt-get update"
$config["bootcmd"].unshift "dpkg -i /tmp/plabs.deb"
$config["bootcmd"].unshift "wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb -O /tmp/plabs.deb"
