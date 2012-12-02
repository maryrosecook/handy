CHAR_COUNT = 1000
CHARS = {
  0.79 => "abcdefghijklmnopqrstuvwxyz",
  0.93 => "'\",.<>/?=+-_{[}]",
  1.0 => "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}

puts CHAR_COUNT.times.reduce("") { |acc|
  r = rand
  id = CHARS.keys.find { |x| r <= x }
  acc + CHARS[id][rand(CHARS[id].length)]
}.chars.reduce { |acc, x| # add spaces between 'words'
  acc + x + (rand > 0.75 ? " " : "")
}
