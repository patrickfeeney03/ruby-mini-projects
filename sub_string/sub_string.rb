dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  splitted_string_array = string.split(' ')
  splitted_string_array.reduce(Hash.new(0)) do |hash, item|
    selected_array = array.select { |word| item.downcase.include? word }
    temp_hash = selected_array.reduce(Hash.new(0)) do |inner_hash, inner_item|
      inner_hash.update(inner_item => inner_hash[inner_item] + 1)
    end
    hash.merge(temp_hash) { |_key, old_val, new_val| old_val + new_val }
  end.sort.to_h
end

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
