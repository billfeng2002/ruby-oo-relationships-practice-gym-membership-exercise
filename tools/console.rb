# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1=Lifter.new("Bill", 100)
l2=Lifter.new("john", 50)

g1=Gym.new("fancy one")
g2=Gym.new("not fancy one")

l1.sign_up(3, g1)
l2.sign_up(4, g1)
l2.sign_up(6, g2)

binding.pry

puts "Gains!"
