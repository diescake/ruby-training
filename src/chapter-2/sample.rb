puts '2'.to_s
puts 1.to_s
puts nil.to_s
puts true.to_s
puts false.to_s
puts /\d+/.to_s

puts 10.to_s(16)
puts 10.to_s 16

puts '1'.to_s; puts '2'.to_s; puts '3'.to_s

# 改行できるよ
puts 10.to_s \
  16

=begin
複数行コメントだよ
変わった文法だね
=end

# 複数行コメントでも
# こっちの方が一般的っぽいよ
# rubocop のデフォルト設定だと、=begin, =end は warning になってたよ
