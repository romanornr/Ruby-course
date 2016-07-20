require 'benchmark/ips'
# Write a Ruby program that prints the numbers from 1 to 100. But for multiples
# of three print "Fizz" instead of the number and for multiples of five print
# "Buzz". For numbers which are multiples of both three and five print
# "FizzBuzz". Discuss this in the FizzBuzz Forum.
#
# doctest: fizzbuzz(1) should return 1
# >> fizzbuzz(1)
# => 1
# doctest: fizzbuzz(3) should return 'Fizz'
# >> fizzbuzz(3)
# => 'Fizz'
# doctest: fizzbuzz(5) should return 'Buzz'
# >> fizzbuzz(5)
# => 'Buzz'
# doctest: fizzbuzz(15) should return 'FizzBuzz'
# >> fizzbuzz(15)
# => 'FizzBuzz'

def fizzbuzz(number)
  if (number % 3).zero? && (number % 5).zero?
    "FizzBuzz"
  elsif (number % 3).zero?
    "Fizz"
  elsif (number % 5).zero?
    'Buzz'
  else
    number
  end
end

# doctest: fb_build_report(1) should return 1
# >> fb_build_report(1)
# => 1
# doctest: fb_build_report(3) should return 'Fizz'
# >> fb_build_report(3)
# => 'Fizz'
# doctest: fb_build_report(5) should return 'Buzz'
# >> fb_build_report(5)
# => 'Buzz'
# doctest: fb_build_report(15) should return 'FizzBuzz'
# >> fb_build_report(15)
# => 'FizzBuzz'
# doctest: fb_build_report(0) should return 'FizzBuzzDazzKezz'
# >> fb_build_report(0)
# => 'FizzBuzzDazzKezz'
def fb_build_report(number)
  result = ''
  result << 'Fizz' if (number % 3).zero?
  result << 'Buzz' if (number % 5).zero?
  result << 'Dazz' if (number % 7).zero?
  result << 'Kezz' if (number % 11).zero?
  result.empty? ? number : result
end


module Divisibility
  def divisible_by?(number)
    (self % number).zero?
  end
end

Fixnum.include(Divisibility)

RULES = { 3 => 'Fizz', 5 => 'Buzz', 7 => 'Dazz', 11 => 'Kezz' }

# doctest: fb_use_rules(1) should return 1
# >> fb_use_rules(1)
# => 1
# doctest: fb_use_rules(3) should return 'Fizz'
# >> fb_use_rules(3)
# => 'Fizz'
# doctest: fb_use_rules(5) should return 'Buzz'
# >> fb_use_rules(5)
# => 'Buzz'
# doctest: fb_use_rules(15) should return 'FizzBuzz'
# >> fb_use_rules(15)
# => 'FizzBuzz'
# doctest: fb_use_rules(0) should return 'FizzBuzzDazzKezz'
# >> fb_use_rules(0)
# => 'FizzBuzzDazzKezz'
def fb_use_rules(number)
  result = ''git
  result << RULES.each_key.inject('') { |memo, k| memo << RULES[k] if number.divisible_by?(k) ; memo }
  result.empty? ? number : result
end


if __FILE__ == $PROGRAM_NAME
  (-15..15).each {|number| puts fizzbuzz(number)}

Benchmark.ips do |x|
  x.report('fb_if_ifelse') { 31.times {|n| fizzbuzz(n-15) }}
  x.report('fb_build_report') { 31.times {|n| fb_build_report(n-15) }}
  x.report('fb_use_rules') { 31.times {|n| fb_use_rules(n-15) }}
  x.compare!
end

end
