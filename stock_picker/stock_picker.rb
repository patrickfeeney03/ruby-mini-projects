def stock_picker(array)
  return [0, 0] if array.length < 2
  results_hash = Hash.new([])
  array.each_with_index do |number, index|
    temp_hash = Hash.new([])
    ((index + 1)..(array.length - 1)).each do |elem|
      temp_hash[[index, elem]] = (array[elem] - number)
    end
    if temp_hash.any?
      temp_max_key = temp_hash.max_by(&:last)
      results_hash[temp_max_key[0]] = temp_max_key[1]
    end
  end
  p results_hash.max_by(&:last)[0]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
