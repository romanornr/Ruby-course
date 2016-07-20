module Promptable
	def self.prompt(input)
		print input
	  gets.chomp
	end
end

if __FILE__ == $PROGRAM_NAME
include Promptable

answer = Promptable.prompt('What operating system do you use: ')
puts "You use #{answer} as an operating system"
end
