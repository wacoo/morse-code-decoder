LIST_OF_CHARS = {'.-'=> 'A', '-...'=> 'B', '-.-.'=> 'C', '-..'=> 'D', 'E'=> '.', '..-.'=> 'F', '--.'=> 'G', '....'=> 'H', '..'=> 'I', '.---'=> 'J', '-.-'=> 'K', '.-..'=> 'L', '--'=> 'M', '-.'=> 'N', '---'=> 'O', '.--.'=> 'P', '--.-'=> 'Q', '.-.'=> 'R', '...'=> 'S', '-'=> 'T', '..-'=> 'U', '...-'=> 'V', '.--'=> 'W', '-..-'=> 'X', '-.--'=> 'Y', '--..'=> 'Z', '.----'=> 1, '..---'=> 2, '...--'=> 3, '....-'=> 4, '.....'=> 5, '-....'=> 6 , '--...'=> 7, '---..'=> 8, '----.'=> 9, '-----'=> 0};
def decode_char(char)
    # decodes a morse code character
    if LIST_OF_CHARS.key?(char)
        return LIST_OF_CHARS[char]
    end
end

def decode_word(str)
    # decode a morse code word
    new_word = ''
    chars = str.split
    chars.each do |code|
        new_word += decode_char(code)
    end
    return new_word
end

def decode(str)
    # decode morse code
    new_string = ''
    words = str.split('   ')
    words.each do |word|
        new_string += decode_word(word)
    end
end

# puts decode_char('-.-.')
# puts decode_word("-- -.--")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")