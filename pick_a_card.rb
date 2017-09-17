current_path = File.dirname(__FILE__)

# Массивы с наборами мастей и достоинств
values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
#suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'] # Буби, Черви, Крести, Пики

if File.exist?(current_path + "/data/suits.txt")
  f = File.new(current_path + "/data/suits.txt","r:UTF-8")
  file = f.readlines
  f.close
  file.delete_at(0) # удаляю первый элемент в массиве, т.к. он пустой
  puts "#{values.sample}#{file.sample}"
else
  puts "Файл не найден"

end

# Выведем произвольную карты, выбрав по одному элементу из массивов
