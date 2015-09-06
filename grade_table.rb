#!/usr/bin/ruby

require 'csv'

# Exit if no file provided
if ARGV.length == 0 then abort "Usage: #{$0} ASSIGNMENT_NAME.csv" end

csv_file = CSV.read ARGV[0]

puts "<h2>#{ARGV[0].split(".")[0].upcase}</h2>" # Title
puts '<table border="1px solid black">'

# Table header
print "<tr>"
csv_file[0].each { |col| print "<th>#{col.strip}</th>" }
puts "</tr>"

# Table contents
csv_file[1...csv_file.length].each { |row|
	print "<tr>"
	row.each { |col| print "<td>#{col.strip}</td>" }
	puts "</tr>"
}

puts "</table>"
