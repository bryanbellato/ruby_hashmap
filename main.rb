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
hashmap.remove('madero')
puts(hashmap.get('parilla'))
puts(hashmap.get('tacos'))
puts "The madero key is removed. #{hashmap.get('madero')}"

puts ''

puts('Testing a method for searching and returning a boolean value for a specific key')
puts "Do we have the parilla key? #{hashmap.has('parilla')}"
hashmap.remove('parilla')
puts "Do we have the parilla key? #{hashmap.has('parilla')}"

puts ''

puts('Testing the array size lookup')
puts(hashmap.length)
hashmap.set('parilla', 2)
hashmap.set('mostaza', 78)
puts(hashmap.length)

puts ''

puts('Testing the array size cleaning')
hashmap.clear
puts(hashmap.get('parilla'))
puts(hashmap.get('tacos'))
puts(hashmap.get('mostaza'))

puts ''

puts ('Testing the getting keys from a array')
hashmap.set('parilla', 2)
hashmap.set('mostaza', 78)
hashmap.set('madero', 33)
hashmap.set('Mc Donalds', 99)
hashmap.set('Burger King', 100)
puts(hashmap.keys)

puts ''

puts ('Testing the getting values from a array')
puts(hashmap.values)

puts ''

puts ('Finally, lets get the full HashMap.')
puts(hashmap.entries)

puts ''