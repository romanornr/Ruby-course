def reverse_word(text)
  text = text.split(" ")
  reversed_text = []
  text_length = text.length
  while text_length  > 0
    text_length  -= 1
    reversed_text << text[text_length ]
  end
  reversed_text.join(' ')
end

text = "I have no life"
puts reverse_word(text)