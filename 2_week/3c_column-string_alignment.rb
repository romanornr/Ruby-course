# Do: Challenge 3 - Column-String Alignment
# This challenge is a 'light challenge' hopefully for all involved and
# participating in the course so far.
#
# SPLIT A STRING ALIGNMENT CHALLENGE
#
# There is a way to not have to have your line_num variable hanging around
# outside of the block. Did you find it?
#
# @Everyone… Challenge?
#
# Can you do something so that if it isn’t simply 3 lines, or 1000 lines, your
# output ends up something like this? (leading spaces or 0’s acceptable)
#
# Line   1: first line
# Line   2: second line
# Line  10: tenth line
# Line  99: 99th line
# Line 100: 100th line
#
#
# The above is sample output from my test method…
#
# Note the : remains aligned as well as the first letter of the line.Anyone
# else know of a challenge that they think should be able to be solved with the
# knowledge gained so far?
#
# You can also update the first week challenges with things learned from this
# week if you find it makes it simpler, or more elegant! Blocks anyone?
def split(text, simulation = 1)
  text.split("\n").map.with_index(simulation) do |string, index|
    "Line #{index}: #{string}"
  end
end

text = "Welcome to this site.\nYou can larn here\n" * 10
puts split(text)
