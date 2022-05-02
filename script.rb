def caesar_cipher(input_string, shift_factor)
  array_from_input = input_string.split("")
  new_array = array_from_input.map do |char|
    if char.ord.between?(65, 90)
      shift(char, shift_factor, 65, 90)
    elsif char.ord.between?(97, 122)
      shift(char, shift_factor, 97, 122)
    else
      char = char
    end
  end
  new_array.join
end

def shift(input_char, shift_by, lower_limit, upper_limit)
    if (input_char.ord + shift_by) < lower_limit
      input_char = ((input_char.ord) + shift_by + 26).chr
    elsif (input_char.ord + shift_by) > upper_limit
      input_char = ((input_char.ord) + shift_by - 26).chr
    else
      input_char = ((input_char.ord) + shift_by).chr
    end
end

p caesar_cipher("What a string!", 5)