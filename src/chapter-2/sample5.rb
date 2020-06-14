def clear
  puts "\e[H\e[2J"
end

clear

# 2.11 メソッド定義についてもっと詳しく

def greeting(country = 'japan')
  return 'こんにちは' if country == 'japan'
  return 'hello' if country == 'english'
  return 'んがょぺ'
end

puts greeting
puts greeting('alian')

# placeholder のような書き方はダメかも
def default_args(a = 1, b)
  "a=#{a}"
end

def foo(time = Time.now, message = bar)
  "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

puts foo

# 真偽値を返すメソッド名には '?' をつける慣習がある
puts ''.empty?
puts 'abc'.empty?

puts 'hgoefoobar'.include?('efo')
puts 2.even?
puts 1.odd?
puts nil.nil?

def multiple_three?(n)
  n % 3 == 0
end

puts multiple_three?(1)
puts multiple_three?(2)
puts multiple_three?(3)


# mutate するメソッド名には '!' をつける慣習がある
a = 'ruby'

puts a.upcase
puts a

puts a.upcase!
puts a


# 2.12 その他の基礎知識

# どちらも全く同じ。alias メソッドと呼ぶ
puts 'hello'.length
puts 'hello'.size


# Ruby では他の言語では、文となっている構文が式となっている要素が多い
# 式
# メソッドの定義

a = def greeting
  'hello'
end

puts a
puts greeting

# 代入するとエラーになる
puts self
puts __FILE__
puts __LINE__
puts __ENCODING__

a = 'hello'
b = 'hello'

puts a.object_id
puts b.object_id

a = b

puts a.object_id
puts b.object_id

a.upcase!
puts a
puts b


# 標準ライブラリを参照する場合に require する必要がある
require 'date'

puts Date.today

# puts '-------'
# ret = require './fizzbuzz.rb'
# puts '-------'
# puts ret
