require 'csv'

# Specify the CSV file name
csv_file = 'data.csv'

# Initialize an array to store the data
csv_data = []

# Read the CSV file and convert it into an array of hashes
CSV.foreach(csv_file, headers: true) do |row|
  csv_data << row.to_h
end

# Print the resulting array of hashes
puts csv_data