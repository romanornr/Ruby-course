def split(text)
  text.split("\n").map.with_index(1) do |line, index|
    "Line #{index}: #{line}"
  end
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
puts split(s)

