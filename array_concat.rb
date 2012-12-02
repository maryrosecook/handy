a = ["a", ["b", "c", "d"], "e", ["f"], ["g", ["h", "i"], "j", "k"], "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def concat(a)
  return "" if a.first.nil?
  return concat(a.first) + concat(a[1..-1]) if a.first.kind_of?(Array)
  a.first + concat(a[1..-1])
end

puts concat(a)
