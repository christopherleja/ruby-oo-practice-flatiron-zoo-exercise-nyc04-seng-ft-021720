require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

bronx = Zoo.new("Bronx Zoo", "Bronx NY")
babu = Animal.new("Ocelot", 12, "Babu", bronx)
shamu = Animal.new("Orca", 15000, "Shamu", bronx)

binding.pry
puts "done"
