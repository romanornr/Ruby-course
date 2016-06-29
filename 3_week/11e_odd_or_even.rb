def odd_or_even(collection)
  collection.each do |number|
    puts "The number " + (number % 2 == 0 ? "#{number} is even" : "#{number} is odd")
  end
end

collection = [12, 23, 456, 123, 4579]

odd_or_even(collection)