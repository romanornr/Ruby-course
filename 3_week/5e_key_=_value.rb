def keys_value(s1, s2)
  keys = s1.split(",")
  value = s2.split(",")

  (0...keys.count).each do |i|
    puts "#{keys[i]} = #{value[i]}"
  end
end

s1 = "CentOS, Windows 7, OSX"
s2 = "Linux, Microsoft, Apple"

keys_value(s1, s2)