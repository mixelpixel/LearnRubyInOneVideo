# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Arrays 41:26
puts
puts
puts "**********ARRAYS**********"
puts
puts

#Creating arrays

array_1 = Array.new
array_2 = Array.new(5) # gets nil as default
array_3 = Array.new(5, "empty")
array_4 = [1, 'two', 3, 5.5] # arrays can store multiple object types
array_5 = 1,2,3,5,4,3,'eleven' # don't need the brackets to declare objects in an array

puts array_1
puts array_2
puts array_3
puts array_4
puts array_5
puts

puts 'array_1: ' + array_1.to_s
puts 'array_2: ' + array_2.to_s
puts 'array_3: ' + array_3.to_s
puts 'array_4: ' + array_4.to_s
puts 'array_5: ' + array_5.to_s
puts

# Indexes start at 0
puts array_4[2]
puts

# Return TWO values starting at the 2ND index
puts array_4[2,2].join(', ')
puts

# Return values at indexes 0, 1, and 3
puts array_4.values_at(0,1,3).join(', ')
puts

# Add 0 at the beginning of the array
array_4.unshift(0)
puts array_4.join(', ')
puts

# Remove the first item in the array
array_4.shift()
puts array_4.join(', ')
puts

# Add 100 and 200 to the end of the array
array_4.push(100, 200)
puts array_4.join(', ')
puts

# Remove item at the end of the array
array_4.pop
puts array_4.join(', ')
puts

# Add one array to the end of another
array_4.concat([10, 20, 30])
puts array_4.join(', ')
puts

# Array Methods
puts "Array Size: " + array_4.size().to_s
puts "Array Contains 100: " + array_4.include?(100).to_s
puts "How Many 100s: " + array_4.count(100).to_s
puts "Array Empty: " + array_4.empty?.to_s
puts

# Convert an array into a string
puts array_4.join(', ')

# Print and Inspect the array
p array_4

# Output array in loop
array_4.each do |value|
  puts value
end
puts


