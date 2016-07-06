# A Benedict monk No. 16 writes down the decimal representations of all natural
# numbers between and including $m$ and $n$, $m \le n$. How many $0$’s will he
# write down?
#
# Input
#
# Input consists of a sequence of lines. Each line contains two unsigned 32-bit
# integers $m$ and $n$, $m \le n$. The last line of input has the value of $m$
# negative and this line should not be processed. There are at most 15,000 test
# cases.
#
# Output
#
# For each line of input print one line of output with one integer number
# giving the number of $0$’s written down by the monk.
#
#     Sample Input 1     Sample Output 1
#     10 11                  1
#     100 200                22
#     0 500                  92
#     1234567890 2345678901  987654304
#     0 4294967295           3825876150
#     -1 -1
#
# doctst: Powers of 10 for 10
# >> powers_of(10)
# => 1
# doctest: Powers of 10 for 100
# >> powers_of(100)
# => 2
# doctest: Powers of 10 for 1.0e15
# >> powers_of(1.0e15)
# => 15
# doctest: Powers of 10 for 1000
# >> powers_of(1000)
# => 3
# doctest: Powers of 10 for 1
# >> powers_of(1)
# => 0
def powers_of(number)
  return 0 if number == 0
  Math.log10(number).floor
end

# doctest: noz(1, 500)
# >> noz(0, 500)
# => 92
# doctest: noz(100, 200)
# >> noz(100, 200)
# => 22
# doctest: noz(10, 11)
# >> noz(10, 11)
# => 1
def noz(lower, upper)
    (powers_of(upper) * 10**powers_of(upper) - 9 * powers_of(upper)) -
  (powers_of(lower) * 10**powers_of(lower) - 9 * powers_of(lower) )
end



def noz_in_range(lower, upper)
  (lower..upper).inject(0) {|memo, n| memo += noz(n) ; memo }
end

if __FILE__ == $PROGRAM_NAME
  # [
  #   [10, 11],
  #   [100, 200],
  #   [0, 500],
  #   [1234567890, 2345678901],
  #   [0, 4294967295],
  [
    [0, 9],
    [0, 99],
    [0, 999],
    [0, 9999],
    [0, 99999],
    [0, 999999],
    [0, 9999999],
    [0, 99999999],
    [0, 999999999],
  ].each do |lower, upper|
    puts 'lower = %d, upper = %d, zeros = %d' % [lower, upper, noz_in_range(lower, upper)]
  end
end
