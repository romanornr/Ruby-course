include DateyThings
# doctest: checking years
#          starting with year 2001
# >> leap_year? 2001
# => false
# doctest: leap year for 2000
# >> leap_year? 2000
# => true
# doctest: leap year 2004
# >> leap_year? 2004
# => true
# doctest: standard year 2005
# >> leap_year? 2005
# => false
# doctest: standard century 1900
# >> leap_year? 1900
# => false
def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# doctest: minutes in a year 1999
# >> minutes_in_year 1999
# => 525600
# doctest: minutes in a year 2000
# >> minutes_in_year 2000
# => 527040
def minutes_in_year(year)
  days_in_year(year) * minutes_in_day
end

include UsefulThings

if __FILE__ == $PROGRAM_NAME
  year = prompt
  report = format(
  '%<year>i: %<is_or_not>s a leap year with %<minutes_in_year>i minutes.'\
    % {
      is_or_not: is_or_not(leap_year?(year)),
      minutes_in_year: minutes_in_year(year),
      year: year
      }
  )
    print report
end

BEGIN {
  module DateyThings
    def minutes_in_day
      24 * 60
    end

    def days_in_year(year)
      if leap_year? year
        366
      else
        365
      end
    end
  end
}

BEGIN {
  module UsefulThings
    def is_or_not(boolean)
      boolean ? 'is' : 'is not'
    end

    def prompt
      print 'Enter a year here:> '
      gets.to_i
    end
  end
}
__END__

Enter a year here :> 2000
You entered 2000, and it is a leap year, and has 527040 minutes in it.

  Enter a year here :> 2001
You entered 2001, and it is not a leap year, and has 525600 minutes in it.

