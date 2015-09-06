#!/usr/bin/ruby

require 'csv'

csv_file = CSV.read(ARGV[0])
table_name = ARGV[0].split(".")[0]

# Start table
puts "<h2>#{table_name.upcase}</h2>"
puts '<table border="1px solid black">'

# Table contents
csv_file.each { |row|
	print "<tr>"
	row.each { |col|
		print "<td>#{col.strip}</td>"
	}
	puts "</tr>"
}

# End table
puts "</table>"
