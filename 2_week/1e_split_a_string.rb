def line_split(line)
  arr = line.split("\n")
  arr.each { |i| print "#{i} \n" }
end

line = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
line_split(line)


__END__

The current run looks like this:

Welcome to the forum. 
Here you can learn Ruby. 
Along with other members. 

It should look something like this:

Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.
