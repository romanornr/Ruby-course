def celcius_to_fahrenheit(value)
  (value - 32) / 1.8
end

def celcius_to_Kelvin(value)
  (value * 9/5) - 459.67
end

def celcius_to_delise(value)
  (temperature + 100) / 1.5000
end


  puts "1: From Celcius to Fahrenheit"
  puts "2: From Celcius to Kelvin"
  puts "3: From Celsius to Delise"
  puts "Please type a number of the option available"
  option = gets.to_i

  puts "Please type the temprature:"
  value = gets.to_f

  case option
  when 1
    puts "The answer is #{celcius_to_fahrenheit(value)}"
  when 2
    puts "The answer is #{celcius_to_Kelvin(value)}"
  when 3
    puts "The answer is #{celcius_to_delise}"
  else
    puts "This option is not available"
  end