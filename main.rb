require_relative 'HashMap'

hashmap = HashMap.new

puts('Testing the hashing')
puts(hashmap.hash('blablabla'))

puts ''

puts('Testing the setting')
hashmap.set('parilla', 2)
hashmap.set('tacos', 7)
hashmap.set('madero', 33)

puts ''

puts('Testing the getting for the key')
puts(hashmap.get('parilla'))
puts(hashmap.get('tacos'))
puts(hashmap.get('madero'))

puts ''

puts('Testing a key removal')
(hashmap.remove('madero')) 
puts(hashmap.get('parilla'))
puts(hashmap.get('tacos'))
puts "The madero key is removed. #{hashmap.get('madero')}"

puts ''

puts('Testing a method for searching and returning a boolean value for a specific key')
puts "Do we have the parilla key? #{hashmap.has('parilla')}"
(hashmap.remove('parilla')) 
puts "Do we have the parilla key? #{hashmap.has('parilla')}"

puts ''

