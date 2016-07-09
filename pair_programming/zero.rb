require 'benchmark/ips'
# doctest: bruteforce_count_zero(begin_number, end_number)
# >> bruteforce_count_zero(1, 100)
# => 11
# >> bruteforce_count_zero(1, 10)
# => 1
# >> bruteforce_count_zero(1, 1000)
# => 192
# >> bruteforce_count_zero(1, 500)
# => 91

def bruteforce_count_zero(begin_number, end_number)
  count = 0
  (begin_number..end_number).each do |end_number|
  end_number = end_number.to_s
  if end_number.include? '0000'
      count += 4
    elsif end_number.include? '000'
      count += 3
    elsif end_number.include? '00'
      count += 2
    elsif end_number.include? '0'
      count += 1
    end
  end
  count
end

# doctest: algorithm_count_zero(begin_number, end_number)
# >> algorithm_count_zero(1, 10)
# => 1
# >> algorithm_count_zero(1, 1000)
# => 192
# >> algorithm_count_zero(1, 10000000)
# => 5888896
# >> algorithm_count_zero(1, 500)
# => 91
# >> algorithm_count_zero(0, 4294967295)
# => 3825876150
def algorithm_count_zero(begin_number, end_number)
  power = Math::log10(end_number) - 1
  if end_number < 100
    return end_number/10
  else
    end_number > 100
    count = (9*(power)-1)*10**power+1
  end
  answer = ((((count / 9) + power)).floor) + 1
end


end_number = 6000
begin_number = 1
puts "Algorithm #{algorithm_count_zero(begin_number, end_number)}"
puts "BruteForce: #{bruteforce_count_zero(begin_number, end_number)}"
#(1..100).each {|end_number| puts bruteforce_count_zero(end_number)}

if __FILE__ == $PROGRAM_NAME
  #(begin_number..end_number).each {|end_number| bruteforce_count_zero(begin_number, end_number)}
  #(begin_number..end_number).each {|end_number| algorithm_count_zero(begin_number, end_number)}
  #Benchmark.ips do |x|
    #x.report('bruteforce') {100.times {|n| bruteforce_count_zero(begin_number, n)}}
    #x.report('algorithm') {100.times {|n| algorithm_count_zero(begin_number, n)}}
    #x.compare!
 # end
end