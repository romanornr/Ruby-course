def Deaf_Grandma()
  puts "Say something to grandma: "
  input = gets.chomp
  unless input == "BYE"
    if input != input.upcase
       puts "HUH?! SPEAK UP, SONNY!"       
    elsif !input.empty?
       puts "NO, NOT SINCE #{rand(1930...1950)} !"
    end
    Deaf_Grandma()
  end
  return
end

Deaf_Grandma()
