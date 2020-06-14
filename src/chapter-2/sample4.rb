def clear
  puts "\e[H\e[2J"
end

clear

# 2.8 文字列についてもっと詳しく

# class メソッドでクラス名を確認
puts clear.class #=> nilClass clear が実行された結果戻り値が nil になるため
puts nil.class
puts 'abc'.class
puts 3.class
puts 1.3.class
puts true.class
puts false.class

ret = true

puts ret.class

# %記法で文字列を作る
puts %q!He said, "Don't speak."!
puts %Q!He said, #{3.class}!

# ヒアドキュメント

puts <<TEXT
これはヒアドキュメントやで。
複数行に渡るなギア文字列を作成するのに便利なんや。
TEXT

puts <<-TEXT
これはヒアドキュメントやで。
<<- を使うと最後の識別子をインデントさせることができるんや。
使わずにインデントするとランタイムエラーや。
TEXT

puts <<~TEXT
  これはヒアドキュメントやで。
  <<~ を使うとインデントが無視されるんや。便利やなぁ。
TEXT

n = '式展開もできるんや'

puts <<TEXT
これはヒアドキュメントやで。
#{n}
TEXT

puts <<'TEXT'
これはヒアドキュメントやで。
#{n}
識別子を '' で括ると変数を展開できなくなるやで。
TEXT

puts <<"TEXT"
これはヒアドキュメントやで。
#{n}
識別子を "" で括ると変数を展開できるやで。省略した場合と同じや。
TEXT

def return_here_document(id)
  puts '------'
  puts id
  puts '------'
  id
end

a = return_here_document(<<TEXT)
hoge
foo
TEXT

puts a

# 識別子に関数を指定すると、文字列に対して実行してくれる
b = <<TEXT.upcase
pomeranian
pometeus
TEXT

puts b

# springf

puts sprintf('%0.3f', 1.2)
puts '%0.3f' % 1.2


puts 123.to_s
puts [10, 20, 30].join
puts 'Hi!' * 10
puts String.new('hello')
puts ?a


# 2.9 数値についてもっと詳しく

puts 0b11111111
puts 0377 # 8進数
puts 0xff

puts 0b1010.to_s(2)
puts (~0b1010).to_s(2)
puts (0b1010 >> 2).to_s(2)
puts (0b1010 << 2).to_s(2)

puts 2e-3

# Numeric クラスのサブクラス達

puts 10.class #=> Integer
puts 10.5.class #=> Float

puts 3r.class #=> Rational
puts 3i.class #=> Complex


# 2.10 真偽値と条件分岐についてもっと詳しく

puts 1 && 2 && 3 #=> 3
puts 1 && nil && 3 #=> nil
puts 1 && 2 && false #=> false

puts 1 || 2 || 3 #=> 1
puts nil || 2 || 3 #=> 2

def find_user(name)
  if name == 'Alice'
    nil
  elsif name == 'Bob'
    'Bob'
  else name == 'Carol'
    nil
  end
end

user = find_user('Alice') || find_user('Bob') || find_user('Carol')
puts user

t1 = true
t2 = true
f1 = false

# and と or は優先順位が低い
# && と || の関係とは異なり、and と or は優先度は同じ
t1 || t2 && f1 #=> true
t1 or t2 and f1 #=> false

status = 'error'

# elsif 相当はない
unless status == 'ok'
  puts 'Error'
else
  puts 'Fine'
end

country = 'italy'

# when に複数の文字列を指定可能
greet = case country
  when 'japan', '日本'
    'こんにちは'
  when 'us', 'アメリカ'
    'Hello'
  when 'italy', 'イタリア'
    'ciao'
  else
    'unknown'
  end

puts greet

n = 11

# 改行できないみたい
message = n > 10 ? '10より大きいよ' : '10より小さいよ'

puts message

a, b = 100, 500

puts a, b
