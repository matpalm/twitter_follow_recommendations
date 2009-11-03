#!/usr/bin/env ruby
require 'web_cache'
webcache = WebCache.new
STDIN.each do |line|
	id,rating = line.split "\t"
	info = webcache.user_info_for id
	puts "#{info['name']}\thttp://twitter.com/#{info["screen_name"]}\t#{rating}"
end
