#!/usr/bin/env ruby
#
# Gets all our 100 percent words

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'hundred'
require 'optparse'

cwd = File.dirname( File.absolute_path(__FILE__) )
file = "#{cwd}/../words/SPL/wordlists/en_uk/en_uk\ uncompressed.txt"

OptionParser.new do |opts|
  opts.banner = "Usage: hundred [options]"
  opts.on("-f", "--file [FILE]", "File to take words from") {|f| file = f}
end.parse!

raise "No file selected" if file.nil?
raise "File doesn't exist" unless File.exists? file

hundred = Hundred.new file

puts "Words in #{file} which are '100 Percent':"
hundred.get_words.each do |word|
  puts "\t#{word}"
end
