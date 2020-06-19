# 3つの整数を受け取り、それぞれ16進数に変換した文字列を返す
def to_hex(r, g, b)
  [r, g, b].each do |n|
    raise 'Unexpected parameter' if !(0..255).include?(n)
  end

  [r, g, b].reduce('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

# 16進数文字列を受け取り、R,G,B のそれぞれを10進数の整数に変換した値を配列として返す
def to_ints(hex)
  raise 'Unexpected parameter' if hex.length != 7
  raise 'Unexpected parameter' if hex[0] != '#'

  r_s = "#{hex[1..2]}"
  g_s = "#{hex[3..4]}"
  b_s = "#{hex[5..6]}"

  [r_s, g_s, b_s].map { |s| s.to_i(16) }
end
