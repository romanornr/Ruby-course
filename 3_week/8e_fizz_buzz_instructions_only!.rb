def fizzbuzz()
 numbers = [*1..100]
 numbers.each do |number|
  if number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  elsif number % 3 == 0 && number % 5 == 0
  else
    puts number
  end

 end
end

fizzbuzz()