#!/usr/bin/env ruby
puts ARGV[0].scan(//^\D*(\d\D*){10}$//).join
