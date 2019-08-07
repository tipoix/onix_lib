require 'active_support'
require 'active_support/core_ext/string'
require 'nokogiri'
require 'colorize'
require 'fileutils'

require './lib/onix/extras'

require "./lib/onix/v3_0"
require "./lib/onix/reader"

reader = Onix::Reader.new

# puts Onix::V3_0::ProductSupply.to_dot reader
# puts Onix::V3_0::Territory.to_dot reader

Onix::V3_0::Product.to_dot reader

exit

FileUtils.mkdir_p "docs/models_dots"
Onix::V3_0::ClassMap.each do |node, klass|
  puts "@@@@@@@@@ #{klass.name} -> dot ..."
  file_base_name = klass.name.split('::').last
  File.open "docs/models_dots/#{file_base_name}.dot", "w" do |f|
    f.write klass.to_dot reader
  end
  system "dot -T svg -o docs/models_dots/#{file_base_name}.svg docs/models_dots/#{file_base_name}.dot"
end
