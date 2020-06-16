def clear
  puts "\e[H\e[2J"
end

clear

def fizz_buzz(num)
  if num % 15 == 0
    'Fizz Buzz'
  elsif num % 5 == 0
    'Buzz'
  elsif num % 3 == 0
    'Fizz'
  else
    num.to_s
  end
end

def fizz_buzz2(num)
  return 'Fizz Buzz' if num % 15 == 0
  return 'Buzz' if num % 5 == 0
  return 'Fizz' if num % 3 == 0
  return num.to_s
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)

puts fizz_buzz2(1)
puts fizz_buzz2(2)
puts fizz_buzz2(3)
puts fizz_buzz2(4)
puts fizz_buzz2(5)
puts fizz_buzz2(6)
puts fizz_buzz2(15)
