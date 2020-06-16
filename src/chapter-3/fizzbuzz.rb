def fizz_buzz(num)
  return 'Fizz Buzz' if num % 15 == 0
  return 'Buzz' if num % 5 == 0
  return 'Fizz' if num % 3 == 0
  return num.to_s
end
