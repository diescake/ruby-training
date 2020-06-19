# 3つの整数を受け取り、それぞれ16進数に変換した文字列を返す
def to_hex(r, g, b)
  raise 'Unexpected parameter' if !(0..255).include?(r)
  raise 'Unexpected parameter' if !(0..255).include?(g)
  raise 'Unexpected parameter' if !(0..255).include?(b)

  r_s = r.to_s(16)
  g_s = g.to_s(16)
  b_s = b.to_s(16)

  r_s = "0#{r_s}" if r_s.length == 1
  g_s = "0#{g_s}" if g_s.length == 1
  b_s = "0#{b_s}" if b_s.length == 1

  "##{r_s}#{g_s}#{b_s}"
end

# 16進数文字列を受け取り、R,G,B のそれぞれを10進数の整数に変換した値を配列として返す
def to_ints(hex)
  raise 'Unexpected parameter' if hex.length != 7
  raise 'Unexpected parameter' if hex[0] != '#'

  r_s = "#{hex[1..2]}"
  g_s = "#{hex[3..4]}"
  b_s = "#{hex[5..6]}"

  [r_s.to_i(16), g_s.to_i(16), b_s.to_i(16)]
end
