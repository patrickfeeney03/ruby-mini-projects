# Patrick Feeney 30/08/2023

def caesar_cipher(string, shift_amount = 1)
  splitted_array = string.split('')
  encrypted_message = splitted_array.map do |char|
    if char == /[[:upper:]]/.match(char).to_s
      ((((char.ord - 65) + shift_amount) % 26) + 65).chr
    elsif char == /[[:lower:]]/.match(char).to_s
      ((((char.ord - 97) + shift_amount) % 26) + 97).chr
    else
      char
    end
  end.join
  puts encrypted_message
end

test_string = 'What a string!'
puts "\n\nOriginal string:"
puts test_string
puts 'Encrypted string:'
caesar_cipher('What a string!', 5)
puts "\n\n"
