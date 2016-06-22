module Prompt
	def self.module(input)
		print input
		string = gets
	end
end

include Prompt

question = 'What operating system do you use: '
puts "You use #{Prompt.module(question)}"