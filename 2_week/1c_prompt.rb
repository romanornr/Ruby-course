module Promptable
	def self.prompt(input)
		print input
	  gets.chomp
	end
end

include Promptable

answer = Promptable.prompt('What operating system do you use: ')
puts "You use #{answer} as an operating system"