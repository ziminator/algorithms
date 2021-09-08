def binary_search(list, item)   # передача массива list и значения в качестве аргументов
  low = 0                       # определить минимальное значение
  high = list.length - 1        # получить максимальное значение
  @iter = 0

  while low <= high             # цикл работает пока low меньше или равно high
    mid = (low + high) / 2      # вычислить середину путём деления пополам
    guess = list[mid]           # записать полученное значение в guess
    @iter += 1                   # увеличить кол-во итераций на единицу

    if guess == item            # если guess == item 
      return mid                # вернуть искомое значение
    elsif guess > item          
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return nil
end

my_list = (1..100000000).to_a
puts binary_search(my_list, 3445) # => 1

# We need to use .inspect here because just printing nil
# would output an empty string
puts binary_search(my_list, -1).inspect # => nil
puts "Кол-во итераций #{@iter}"