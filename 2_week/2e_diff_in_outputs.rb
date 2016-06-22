def mtdarry
  10.times.map { |num| num }
end

puts "Using puts mtdarry"
puts "+-=" * 7
p mtdarry

puts "Using mtdarry without puts"
puts "+-=" * 7
mtdarry


__END__
Why does the following output happen?

Using puts mtdarry
+-=+-=+-=+-=+-=+-=+-=
0
1
2
3
4
5
6
7
8
9
10
Using mtdarry without puts
+-=+-=+-=+-=+-=+-=+-=
0
1
2
3
4
5
6
7
8
9

After my modification using map
Using puts mtdarry
+-=+-=+-=+-=+-=+-=+-=
0
1
2
3
4
5
6
7
8
9
Using mtdarry without puts
+-=+-=+-=+-=+-=+-=+-=

  Notice no output, when no 'puts' is being used.

Using the debugging Kernel method called 'p'
because of map.
============================================
Using p mtdarry
+-=+-=+-=+-=+-=+-=+-=
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
Using mtdarry without puts
+-=+-=+-=+-=+-=+-=+-=
