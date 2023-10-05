# frozen_string_literal: true

LIST_OF_CHARS = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                  '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                  '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => 1, '..---' => 2,
                  '...--' => 3, '....-' => 4, '.....' => 5, '-....' => 6, '--...' => 7, '---..' => 8, '----.' => 9,
                  '-----' => 0 }.freeze
def decode_char(char)
  # decodes a morse code character
  LIST_OF_CHARS[char] if LIST_OF_CHARS.key?(char)
end

def decode_word(str)
  # decode a morse code word
  new_word = []
  chars = str.split
  chars.each do |code|
    new_word.push(decode_char(code))
  end
  new_word.join('')
end

def decode(str)
  # decode morse code
  new_string = []
  words = str.split('   ')
  words.each do |word|
    new_string.push(decode_word(word))
  end
  new_string.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
