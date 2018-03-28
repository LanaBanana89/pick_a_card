# Программа, которая выбирает произвольную карту игральной колоды

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts 'Pick a Card. (c) goodprogrammer.ru'

# Массивы с наборами мастей и достоинств
values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
suits = ['♦','♠','♥ ','♣']

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "#{value} of #{suit}"
  end
end

cards.shuffle!

puts "How many cards do you pick?"
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end
