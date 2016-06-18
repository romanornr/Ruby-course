def line_split(line)
	arr = line.split("\n")
	count = 0
	arr.each { |i| count+=1 
		puts "Line #{count}: #{i}" }
end

line = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" 
line_split(line)