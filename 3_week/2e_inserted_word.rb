def replace_word(original, replace, text)
  text.gsub!(original, replace)
end

text = "text text text text text
text text text text text
text text word text text
text text text text text
text text text text text"

original = "word"
replace = "inserted word"

puts replace_word(original, replace, text)