#Comparison:
#                 one:     5482.7 i/s
#                 two:     5003.2 i/s - 1.10x slower


require 'benchmark/ips'

def odd_or_even(collection)
  result = collection.each do |number|
    "The number " + (number % 2 == 0 ? "#{number} is even" : "#{number} is odd")
  end
end

def odd_even_function(collection)
 result = collection.map do|element| 
     element.odd? ? "#{element} is odd\n" : "#{element} is even\n"
   end
   result.join
end

collection = [12, 23, 456, 123, 4579]

#puts odd_or_even(collection)

if __FILE__ == $PROGRAM_NAME
  Benchmark.ips do |x|
    x.report(:one) {1000.times{|number|odd_or_even(collection)}}
    x.report(:two) {1000.times{|number|odd_even_function(collection)}}
    x.compare!
  end
end