seconds = 979000000
seconds_in_a_year = 365 * 60 * 60 * 24

# .to_f for double casting
def calculate_age_by_seconds(seconds, seconds_in_a_year)
	return format("%.2f", (seconds.to_f / seconds_in_a_year))
end

puts calculate_age_by_seconds(seconds,seconds_in_a_year)