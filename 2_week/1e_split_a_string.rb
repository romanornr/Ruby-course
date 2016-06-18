def split(text)
  text.split("\n").map.with_index(1) do |text, index|
    "Line #{index}: #{text}"
  end.join("\n")
end
def ran_directly?
  __FILE__ == $PROGRAM_NAME
end

if ran_directly?
  s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
  puts split(s)
end
