a = ["magazine", "Sunday", "Jump"]

puts a.sort_by{|s|s.length}

puts a.sort{|l,r|l.length <=> r.length}