require_relative './data/suits.txt'

# Массивы с наборами мастей и достоинств
values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
#suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'] # Буби, Черви, Крести, Пики

if File.exist?('data/suits.txt')
  f = File.new('data/suits.txt',"r:UTF-8")
  file = f.readlines
  f.close

end

# Выведем произвольную карты, выбрав по одному элементу из массивов
puts "#{values.sample} of #{file.sample}"