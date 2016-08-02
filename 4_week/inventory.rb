files = Dir.glob('**/*').select do |file|
  old = "old-inventory.txt"
  if File.mtime(file) > File.mtime(old)
    puts file
  end
end
