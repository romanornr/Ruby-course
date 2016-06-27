if 5 > 3 || 5 < 3
	puts "yeah"
else
	puts "booh"
end

if 5 > 3 && 5 < 3
	puts "yeah"
else
	puts "booh"
end

# without the existance of the if statement, nor the ternary...
# doctest: yeah_or_booh returns depending on boolean value
# >> yeah_or_booh true
# => 'yeah'

def yeah_or_booh boolean
  boolean && 'yeah' || 'booh'
end

p yeah_or_booh 5 == 5