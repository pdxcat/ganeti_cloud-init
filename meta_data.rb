#!/usr/bin/ruby

require 'yaml'
require 'base64'
require 'uri'
require 'net/http'

$host = ENV['INSTANCE_NAME']
$variant = ENV['OS_VARIANT']
$osfamily, $osversion = $variant.split('-')
$config = {}

$config['instance-id'] = $host;

puts $config.to_yaml
