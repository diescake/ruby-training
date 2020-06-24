print '123 456 789'.scan(/\d+/) #=> ["123", "456", "789"]
puts

text = '123,456-789'

puts text[/-\d{3}/] #=> -789
puts text.slice(/-\d{3}/) #=> -789

print text.split(/[,|-]/) #=> ["123", "456", "789"]
puts

puts text.gsub(',', ':')
puts text.gsub(/[,|-]/, ':') #=> 123:456:789
puts text.gsub(/[,|-]/, { '-' => '#' }) #=> 123456#789
puts text.gsub(/[,|-]/) { |matched| matched == ',' ? '=' : '/'}#=> 123=456/789

text = '誕生日は1977年7月17日です'

puts text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3') #=> 誕生日は1977-7-17です
puts text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>-\k<month>-\k<day>') #=> 誕生日は1977-7-17です
