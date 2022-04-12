require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

beatles = []

CSV.foreach(filepath) do |row|
  # beatles << row
  "#{row[0]} #{row[1]} plays #{row[2].downcase}."
end


# headers: :first_row => turned the headers into my keys
# header_converters: :symbol => turns string keys into symbols
CSV.foreach(filepath, headers: :first_row) do |row|
  beatles << row.to_h
  # "#{row["First Name"]} #{row["Last Name"]} plays #{row["Instrument"].downcase}."
end

p beatles

students = [['azat', 12], ['bora', 24], ['kenji', 85]]

filepath = 'data/students.csv'
# 'wb' option means write over the entire file
# 'ab' option means to append to a file
CSV.open(filepath, 'wb') do |csv|
  csv << ['name', 'age']
  students.each do |student|
    csv << student
  end
end

filepath = 'data/students.csv'
CSV.foreach(filepath) do |row|
  row[1].to_i
end
