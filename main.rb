require_relative 'HashMap'

hashmap = HashMap.new

puts('Testing the hashing')
puts(hashmap.hash('blablabla'))

puts('Testing the setting')
hashmap.set('parilla', 2)