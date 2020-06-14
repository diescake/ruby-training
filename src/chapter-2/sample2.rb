s = 'Hello'
n = 123 * 2

puts s, n

# x  # Error, Ruby では、変数宣言時に明示的に初期値を与える必要がある
x = nil

# snake_case 推奨
special_price = 200

# UTF-8 対応
特別価格 = 2000
😭 = 100\

# 再代入可能
special_price = 300
special_price = 'hoge'

# Tuple っぽい感じ
a, b = 1, 2
puts a, b

c, d = 1
puts c, d # d is nil

# ダブルクオートは \n が改行文字として評価される
puts "吾輩は\n猫である"

# シングルクオートは \n は文字列として評価される
puts '吾輩は\n猫である'

# シングルクオートは、文字列内の特殊文字を式として評価しないっぽい
# syntax highlight が効くのでわかりやすい
puts "Hello, #{special_price}"
puts 'Hello, #{special_price}'

# バックスラッシュで打ち消せる
puts "Hello, \#{special_price}"

puts 'hello \'hello\' "hello"'
puts "hello 'hello' \"hello\""

puts 'ruby' == 'ruby'
puts 'ruby' == 'Ruby'
puts 'ruby' != 'perl'
puts 'ruby' != 'ruby'

puts 'A' > 'a'
puts 'A'.ord, 'a'.ord
