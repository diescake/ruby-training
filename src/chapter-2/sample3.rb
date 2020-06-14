# 2.4 数値

puts 10
puts 1.5
puts -3
puts -4.75

# numeric separator
puts 1_000_000_000

puts 10 + 20
puts 100 - 25
puts 12 * 5
puts 20 / 5

# 整数の割り算は切り捨て
puts 1 / 2
puts 1.0 / 2
puts 1 / 2.0
puts 1.to_f / 2

puts 8 % 3
puts 2 ** 3

puts 1 < 2
puts 1 <= 2
puts 1 > 2
puts 1 >= 2
puts 1 == 2
puts 1 == 1
puts 1 != 2

puts 2 * 3 + 4 * 5 - 6 / 2
puts 2 * (3 + 4) * (5 - 6) / 2

# 演算子に ++ や -- はない
puts n = 100 #=> 100
puts n += 1 #=> 101
puts n -= 2 #=> 99
puts n *= 2 #=> 198
puts n /= 3 #=> 66
puts n **= 2 #=> 4356

# Ruby では暗黙的な型変換は行われない
# s = 1 + 'hoge' #=> `+': String can't be coerced into Integer (TypeError)
s = 1.to_s + 'hoge'
puts s

puts "Number is #{n}"

# 丸め誤差を防止するためには Rational クラスを利用する

puts 0.1 * 3.0 #=> 0.30000000000000004
puts (0.1r * 3.0r).to_f #=> 0.3

puts n.rationalize #=> 4356/1


# 2.5 真偽値と条件分岐

# 偽: false または nil
# 真: 偽以外

t1 = true
t2 = true
f1 = false
f2 = false

puts t1 && t2
puts t1 && f1

puts t1 || t2
puts t1 || f1

puts t1 && t2 || f1 && f2
puts (t1 && t2) || (f1 && f2)

puts !t1, !!t1

puts !0, !1, !nil


# if 文は最後に評価された式の戻り値を返す
result =
  if n > 10
    '10 より大きい'
  else
    '10 より小さい'
  end

puts result

# if 修飾子 (後置 if)
point = 7
day = 1

point *= 5 if day == 1
puts point

# if 文ではワンライナーで書くのは大変
if n > 10 then puts 'hoge' end
puts 'hoge' if n > 10

# return は省略するのが一般的
def add a, b
  a + b
  # return a + b
end

puts add 1, 2

def hello
  puts 'hello'
end

hello

# 引数の括弧も省略可能だが、引数がある場合は省略しないのが一般的らしい
# def greeting country
def greeting(country)
  return 'country を入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  elsif country == 'english'
    'hello'
  else
    'んがょぺ'
  end
end

puts greeting nil
puts greeting 'japan'
puts greeting 'english'
puts greeting 'alian'

# 引数の数がマッチしないとエラーになる
# `greeting': wrong number of arguments (given 0, expected 1) (ArgumentError)
# puts greeting

