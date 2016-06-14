def multiplication_table(integer, heading = "", decorate=false)
  x = (1..integer)
  y = (1..integer)

  print heading.center(50)
  print "\n"
  x.each {|x| print '=' * x} unless !decorate
  print "\n"

  y.each do |j|
  x.each {|i| print " %-3d " % (i*j)}
  print "\n"
   end
  x.each {|x| print '=' * x} unless !decorate
  print "\n" * 3
end

multiplication_table( 9, 'Time Table 9' , true)

multiplication_table( 20)