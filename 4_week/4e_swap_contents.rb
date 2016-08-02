def file_swap(file_a, file_b)
  file_a = File.open(file_a, "r")
  file_b = File.open(file_b, "w")
  while(input = file_a.gets)
    file_b.puts input
  end
  file_a.close
  file_b.close
end

file_a = "test1.txt"
file_b = "test2.txt"
file_tmp = File.new("temp.txt","w")

file_swap(file_a, file_tmp)
file_swap(file_b, file_a)
file_swap(file_tmp, file_b)
File.delete(file_tmp)
