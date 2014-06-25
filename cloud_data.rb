#!/usr/bin/ruby

require 'yaml'
require 'base64'
require 'uri'
require 'net/http'

$host = ENV['INSTANCE_NAME']
$variant = ENV['OS_VARIANT']
$osfamily, $osversion = $variant.split('-')
$config = {}

derp_file = "http://lsd.cat.pdx.edu/host/ks?name=#{URI.escape(ENV['INSTANCE_OS']).sub("+","%2B")}"

#puts derp_file
#Kernel.exit(0)

def get_kickstart(url)
  location = URI.parse(url)
  #puts location
  response = Net::HTTP.get_response(location)
  case response
  when Net::HTTPSuccess then
    response
  else
    return nil
  end
end

def parse_kickstart(kickstart)
  sections = {}
  section = nil
  kickstart.split("\n").each do |line|
    if line =~ /^%([a-z]+)/
      if $1 != "include"
        section = $1
      end
    elsif section
      if !sections[section]
        sections[section] = []
      end
      sections[section].push line.gsub(ENV['INSTANCE_OS'],$host)
    end
  end

  sections.keys.each do |key|
    sections[key] = sections[key].join("\n")
  end

  return sections
end

kickstart = get_kickstart(derp_file)

if !kickstart
  exit(1)
end

$kickstart = parse_kickstart(kickstart.body)

require './defaults.rb'

variant_file = "./variants/#{ENV['OS_VARIANT']}.rb"

if File.exist?(variant_file)
  require variant_file
end

puts $config.to_yaml
