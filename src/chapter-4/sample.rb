puts [].class #=> Array

a = ['apple', 2, 'hazy']
puts a

b = [
  [10, 20, 30],
  [40 ,50, 60],
  [70, 80, 90]
]

puts b
puts b[1][2] #=> 60
puts b.length #=> 3
puts b[1].length #=>3

# 元の配列長より拡張されると nil で埋められる
c = []
c[5] = 'end'

print c #=> [nil, nil, nil, nil, nil, "end"]
puts

# 最後尾に要素を積む
d = [1, 2, 3]
d << 100
d << 200
d << 300

print d #=> [1, 2, 3, 100, 200, 300]
puts

# 特定位置の要素を削除する
d.delete_at(3)

print d #=> [1, 2, 3, 200, 300]
puts

n1, n2, n3 = d

print n1, n2, n3 #=> 123
puts

quotient, remainder = 7645.divmod(3)
puts quotient, remainder #=> 2548 1

numbers = [1, 2, 3, 4]
sum = 0

# ブロック引数(n)の名称は自由
numbers.each do |i|
  sum += i
end

puts sum #=> 10

# 真を返した要素を削除する
# mutate するので注意
numbers.delete_if do |n|
  n.odd?
end

print numbers #=> [2, 4]
puts

# ブロック引数が不要な場合は省略が可能
numbers.each do
  puts 'hello'
end

# ワンライナーの書き方色々

sum = 0
numbers.each do |n| sum += n end

puts sum #=> 6

sum = 0
numbers.each { |n| sum += n }

puts sum #=> 6


# map / collect
numbers = [1, 2, 3, 4, 5]
new_numbers = []

numbers.each { |n| new_numbers << n * 10}
print new_numbers #=> [10, 20, 30, 40, 50]
puts

# select / find_all
numbers = [1, 2, 3, 4, 5]
new_numbers = []

new_numbers = numbers.filter { |n| n.even? }
print new_numbers #=> [2, 4]
puts

# find / detect
numbers = [1, 2, 3, 4, 5]

new_number = numbers.find { |n| n.even? }
puts new_number #=> 2

# inject /reduce
numbers = [1, 2, 3, 4, 5]

sum = numbers.reduce(0) { |acc, n| acc + n }
puts sum #=> 15

#&とシンボルを利用したショートハンド
print ['ruby', 'java', 'perl'].map { |s| s.upcase }
puts

print ['ruby', 'java', 'perl'].map(&:upcase)
puts

# range
puts (1..5).class #=> Range

range1 = 1..5
range2 = 1...5

puts range1.include?(1) #=> true
puts range2.include?(1) #=> true

puts range1.include?(5) #=> true
puts range2.include?(5) #=> false
puts range2.include?(4.9) #=> true

a = [1, 2, 3, 4, 5]
print a[1..3] #=> [2, 3, 4]
puts

print a[1...3] #=> [2, 3]
puts

# range と不等号

def liquid?(temperature)
  0 <= temperature && temperature < 100
end

def graceful_liquid?(temperature)
  (0...100).include?(temperature)
end

puts liquid?(-1) #=> false
puts liquid?(0) #=> true
puts liquid?(99) #=> true
puts liquid?(100) #=> false

puts graceful_liquid?(-1) #=> false
puts graceful_liquid?(0) #=> true
puts graceful_liquid?(99) #=> true
puts graceful_liquid?(100) #=> false


# range と case

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..38
    600
  else
    1000
  end
end

puts charge(3)
puts charge(3.5)
puts charge(8)
puts charge(8.5)
puts charge(20)

print (1..5).to_a #=> [1, 2, 3, 4, 5]
puts

print (1..5).to_a
puts

print ('a'..'z').to_a
puts

print [*1..5] #=> [1, 2, 3, 4, 5]
puts

(1..5).each { |n| print n } #=> 12345
puts

(1..5).step(2) { |n| print n } #=> 135
puts
