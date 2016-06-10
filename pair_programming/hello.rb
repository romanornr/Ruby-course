# doctest: I can greet the world by invoking `hello`
# >> hello
# => 'Hello World!'
# doctest: I can greet someone personally
# >> hello "George"
# => "Hello George!"
# The above simply uses the default punctuation, generally expressing excitement
# when we see someone.
# doctest: I can ask if someone is there.
# >> hello('Jake', '?')
# => 'Hello Jake?'
# The pattern is the same when we ask if someone is there as the greeting with
# excitement.  The only thing really different is the 'query'.
# doctest: Non friendly, normal, everyday greeting
# >> hello 'Boss', '.'
# => 'Hello Boss.'
def hello(name = 'World', punctuation = '!')
  'Hello %<name>s%<punctuation>s' % [name: name, punctuation: punctuation]
end
