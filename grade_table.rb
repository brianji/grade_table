#!/usr/bin/ruby

require 'csv'

csv_file = CSV.read(ARGV[0])
table_name = ARGV[0].split(".")[0]
table_file = File.open(table_name + ".out", 'w')

# Start table
table_file.write "<h2>#{table_name.upcase}</h2>\n"
table_file.write '<table border="1px solid black">' + "\n"

# Table contents
csv_file.each { |row|
	table_file.write "\t<tr>\n"
	
	row.each { |col|
		table_file.write "\t\t<td>#{col}</td>\n"
	}
	
	table_file.write "\t</tr>\n"
}

# End table
table_file.write "</table>\n"