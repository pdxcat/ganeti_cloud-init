#!/usr/bin/ruby

require 'yaml'
require 'base64'

$host = ENV['INSTANCE_NAME']
$variant = ENV['OS_VARIANT']
$osfamily, $osversion = $variant.split('-')
$config = {}

require './defaults.rb'

variant_file = "./variants/#{ENV['OS_VARIANT']}.rb"

if File.exist?(variant_file)
  require variant_file
end

puts $config.to_yaml
