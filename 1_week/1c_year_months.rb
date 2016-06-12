def seconds_in_year
  365.25 * 60 * 60 * 24
end

def year_and_months(seconds)
  raw_years = seconds / seconds_in_year
  years = raw_years.floor
  months = ((raw_years - years) * 12).floor
  [years, months]
end

ages = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

ages.each do |seconds|
  puts "You are %i years and %i months old." % year_and_months(seconds)
end
