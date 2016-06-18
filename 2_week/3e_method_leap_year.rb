#doctest: checking years
# doctest : leap_year
# >> leap_year?
# => false
# >> leap_year? 2001
# => false
# >> leap_year? 2000
# => true
# >> leap_year? 2004
# => true
# >> leap_year? 2005
# => false
# >> leap_year? 1900
# => false

def leap_year?(year = 2001)
  #puts 'Enter a year here : '
  #year = gets.to_i
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  	puts true
    return true #optional. For doctest purpose only
  else
  	puts false
    return false #optional. For doctest purpose only
  end
end

leap_year?
