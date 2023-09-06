def bubble_sort(numbers)
  count = 0
  k = 2
  sorted_numbers = numbers
  # puts "Starting point: #{sorted_numbers}"
  numbers.each do |number|
    number == numbers.last && break
    for i in 0..(numbers.length - k)
      next unless numbers[i] > numbers[(i + 1)]

      temp = sorted_numbers[i]
      sorted_numbers[i] = sorted_numbers[(i + 1)]
      sorted_numbers[(i + 1)] = temp
      # puts "\t\t#{sorted_numbers}"
    end
    k += 1
    count += 1
    # puts "#{count}. #{sorted_numbers}"
  end
  sorted_numbers
end

p bubble_sort([4, 3, 78, 2, 0, 2])
