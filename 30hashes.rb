# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Hashes 45:43
puts
puts
puts "**********HASHES**********"
puts
puts

# A has is a collection of key:value object pairs
number_hash = { "PI" => 3.14159,
                "Golden" => 1.618,
                "e" => 2.718}

puts number_hash['PI']

superheroes = Hash["Clark Kent", "Superman",
                   "Bruce Wayne", "Batman"]

puts superheroes['Clark Kent']

# Add to a hash
superheroes["Barry Allen"] = "Flash"
puts superheroes["Barry Allen"]

# Set a default key value (return value when key not in hash)
sample_hash = Hash.new("No Such Key")
puts sample_hash["Dog"]

# Combine 2 hashes in a DESTRUCTIVE way with update or
# with no overwriting with merge (but you might get duplicates)
superheroines = Hash["Lisa Marie", "Aquagirl", "Betty Kane", "Batgirl"]
superheroes.update(superheroines)

# Print out each key and value
superheroes.each do |key, value|
  puts key.to_s + ' : ' + value.to_s
end

puts "Has Key Lisa Morel : " + superheroes.has_key?("Lisa Morel").to_s
puts "Has Value Batman : " + superheroes.has_value?("Batman").to_s
puts "Is Hash Empty : " + superheroes.empty?.to_s
puts "Size of Hash : " + superheroes.size.to_s

# Delete a key value
superheroes.delete("Barry Allen")
 
puts "Size of Hash : " + superheroes.size.to_s
puts


