# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Class Objects 29:29
puts
puts
puts "**********CLASS OBJECTS**********"
puts
puts
# Object oriented languages - we basically model real world objects
# using classes & just like every day objects, objects are going to
# have attributes which we will call INSTANCE VARIABLES as well as
# capabilities which we will call METHODS.

class Animal

  # initialize is called when an Animal object is created
  # you can set default values here.
  def initialize
    puts "Creating a New Animal"
  end
  
  def set_name(new_name)
    # Sets the value for an instance variable
    @name = new_name
  end
  
  def get_name
    @name
  end
  
  # Provides another way to GET the value for "name"
  def name
    @name
  end
  
  # Provides another way to SET the value for "name"
  def name=(new_name)
    
    # We can eliminate bad input in our SETTERS
    if new_name.is_a?(Numeric) # <--- Numeric, what other things like this are there in Ruby?
      puts "Name Can't Be A Number"
    else
      @name = new_name
    end
  end

end

# Creates a new Animal object
cat = Animal.new
puts

# SETS the Animals name
cat.set_name("Peekaboo")

# GETS the Animal "name" - get_name returns the value of "name"
puts cat.get_name
puts

# Using the alternative way of getting the name value
puts cat.name
puts

# Using the alternative way of SETting a value for name
cat.name = "Sophie"
puts cat.name
puts

class Dog

  # shortcut for creating all GETter functions
  attr_reader :name, :height, :weight
  
  # shortcut for creating all SETter functions
  attr_writer :name, :height, :weight
  
  # creater SETter and GETter methods (Use this one) - BUT WHY?
  attr_accessor :name, :height, :weight
  
  def bark
    return "Generic Bark"
  end
end

rover = Dog.new
rover.name = "Rover"
puts rover.name
puts
puts rover.bark
puts



# # # Inheritance 33:19
puts
puts
puts "**********INHERITANCE**********"
puts
puts
# When you INHERIT from another class you get all its methods and variables
# You can only inherit from one class

class GermanShepard < Dog

  # You can overwrite methods as you need
  
  def bark
    return "Loud Bark"
  end
end

max = GermanShepard.new

max.name = "Max"

printf "%s goes %s \n", max.name, max.bark() # printf????? and there is sprintf...


