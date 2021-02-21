def fizz_buzz(num)
  return 'Fizz Buzz' if (num % 15).zero?
  return 'Fizz' if (num % 3).zero?
  return 'Buzz' if (num % 5).zero?

  num.to_s
end
