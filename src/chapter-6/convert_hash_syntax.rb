def convert_hash_syntax(code)
  code.gsub(/:(\w+) *=> */, '\1: ')
end
