s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" 
arr = s.split("\n")
arr.each { |i| print "#{i} \n" }