
$config = {
  "hostname" => ENV['INSTANCE_NAME'].sub(/\..*$/,''),
  "fqdn"     => ENV['INSTANCE_NAME'],
  "user"     => "root",
  "disable_root" => 0,
  "lock-passwd"  => true,
  "ssh_authorized_keys" => ["ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwkyYVN6PZlvdfFm8jqR1SFi8L6E6ba3GCo2Zpf3p09ePiPll7PsVm6+yrimvnxwQ9iy0C\
QtlzMW8ISbRV9MszTukkDfYumfgKIgq6UyVxSQDF5CXryUOxkOGvmKI8VdJcWK4BEF6woFqIc7Uck/hwy/6+57AJJU2G5EAD6/bYuoo26ZBkaG07G+sY5Qil9Zq+EmjtPqwWrPA\
vMsWz8r+N+28OOCzFfc5CLyTec5bQakDTpp+iTJPrtKK3L7MsJNwTxoiG6PynrZhKrrdxOvEl9qPFx88qc2LTjYYNOhuT2BwVKzCO9xFS3Bb2rQ1ZFD2s/ou+HTgGP35Rgilh6D\
l/7KPNbxlEZ0pYbH8iiZYLg3ZtxuS1u+MHo4zir2RUHHBarQ8wDTnFsvKTG+pQ5xodfso/I9mDXKrrlFl94/rx6cZIe0hum3Id5dTR+9EwNKlVnRFDFXERWe7pZ8SSVKd3tfAoL\
t4DsLwyQhXmqGfGSirgTO7/BPGAJlFxVDLL93kMkWs0YsrFudL+QMeCFC8lkINpbnT2BYhsv6D/kpNmnvIKwGFkBbImBkY4XDswE4xM38MN8+p6533DI2gnKFW9EfQZVJy3sJxX\
U16lY2HCicQrinR7wLUdKNIlFpd+UdasfJAd3381WAhsNUbRI5yAYhELc/VvQ11Qhkt090UKaU= root@nightshade.cat.pdx.edu"],
  "chpasswd"   => {"expire" => false},
  "ssh_pwauth" => false,
  "bootcmd"    => [
                   "mkdir -p /disk/trump",
                  ],
  "write_files" => [
                    { "encoding"    => "b64",
                      "owneer"      => "root:root",
                      "path"        => "/tmp/puppet.conf",
                      "permissions" => "0644",
                      "content"     => Base64.encode64(File.open("./puppet.conf").read)
                    },
                    { "encoding"    => "b64",
                      "owneer"      => "root:root",
                      "path"        => "/tmp/copycfg",
                      "permissions" => "0655",
                      "content"     => Base64.encode64(File.open("./copycfg").read)
                    }
                   ]

}
