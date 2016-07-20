require_relative '../2_week/1c_prompt'
# Modify your Deaf Grandma program (Week 3 / Exercise6): What if grandma doesn't
# want you to leave? When you shout BYE, she could pretend not to hear you.
# Change your previous program so that you have to shout BYE three times in a
# row. Make sure to test your program: if you shout BYE three times, but not in a
# row, you should still be talking to grandma. You must shout BYE three separate
# times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to
# hear you (and not count it as a BYE).

# doctest: Granny comes into existance
# >> DeafGrandma.new('Granny')
class DeafGrandma
  def initialize(name = 'Granny')
    @name = name
    @done = false
    @count = 0
  end

  # doctest: Granny can respond to something said
  # >> granny = DeafGrandma.new
  # >> granny.respond_to? :response
  # => true
  # doctest: Granny can't hear if you don't yell
  # >> granny.response("something said")
  # => "HUH?! SPEAK UP, SONNY!"
  # doctest: Can hear if shout
  # >> granny.response("SOMETHING SHOUTED").include?('NO, NOT SINCE')
  # => true
  def response(statement)
    @statement = statement
    return bye if statement == 'BYE'
    @statement != @statement.upcase && 'HUH?! SPEAK UP, SONNY!' ||
      "NO, NOT SINCE #{rand(1930..1950)}"
  end

  def bye
    @count += 1
    @count == 3 ? done_visiting : ''
  end

  def done_visiting
    @done = true
    'BYE SONNY!'
  end

  def done?
    @done
  end
end
if __FILE__ == $PROGRAM_NAME
  include Promptable
  granny = DeafGrandma.new
  until granny.done?
    line = Promptable.prompt 'Say something to Grandma '
    puts granny.response(line)
  end
end
