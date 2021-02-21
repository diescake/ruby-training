# def to_hex(r, g, b)
#   s = [r, g, b].map { |n| n.to_s(16).rjust(2, '0') }
#   "##{s[0]}#{s[1]}#{s[2]}"
# end

def to_hex(r, g, b)
  [r, g, b].reduce('#') { |hex, n| hex + n.to_s(16).rjust(2, '0') }
end

# def to_ints(hex)
#   r = hex[1, 2]
#   g = hex[3, 2]
#   b = hex[5, 2]
#
#   [r, g, b].map(&:hex)
# end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
