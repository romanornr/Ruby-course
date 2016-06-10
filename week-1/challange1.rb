seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

def calculate_age_by_seconds(seconds)
		seconds.map do |seconds|
		age = seconds / (365.25 * 60 * 60 * 24)
		age_round = age.floor
		months = ((age - age_round) * 12).floor
		[age_round, months]
		"You are #{age_round} years and #{months} months old"
	end
end

puts calculate_age_by_seconds(seconds)