# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/




# # # File I/O 52:05
puts
puts
puts "**********FILE I/O**********"
puts
puts

# The class File provides for file manipulation

# Create a file for writing
file = File.new("authors.out", "w")

# Add lines
file.puts "Bill Shakespeare"
file.puts "Agatha Christie"
file.puts "Barbara Cartland"

# Close file
file.close

# Output everything in the file
puts File.read("authors.out")
puts

# Open file for appending
file = File.new("authors.out", "a")
file.puts "Danielle Steel"
file.close
puts File.read("authors.out")
puts

# Create another file containing data separated by commas
file = File.new("author_info.out", "w")
file.puts "William Shakespeare,English,plays and poetry,4 billion"
file.puts "Agatha Christie,English,who done its,4 billion"
file.puts "Barbara Cartland,English,romance novels,1 billion"
file.puts "Danielle Steel,English,romance novel,800 million"
file.close

# Cycle through the data to write a sentence
File.open("author_info.out") do |record|
  record.each do |item|
    
    # Split each line into 4 parts based on commas
    name, lang, specialty, sales = item.chomp.split(',')
    puts "#{name} was an #{lang} author who specialized in #{specialty} and sold over #{sales} books."
  end
end

puts

=begin
The End.
=end

