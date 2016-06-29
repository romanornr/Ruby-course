collection = [1, 2, 3, 4, 5]

puts collection.inject(:+)
puts collection.reduce(:+)
puts collection.reduce {|sum, number| sum += number}