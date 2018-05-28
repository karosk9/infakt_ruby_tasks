class CaesarCipher

  def initialize(text, displacement = 13)
    @text = text
    @displacement = displacement
  end

  def perform
    alphabet = ('a'..'z').to_a
    ciphred_text = @text.split('').map do |letter|
      if alphabet.include?(letter.downcase) == false
        letter
      else
        letter_index = alphabet.index(letter.downcase)+ @displacement
        letter_index = letter_index - alphabet.length if letter_index >= alphabet.length
        letter.downcase! != nil ? letter = alphabet[letter_index].upcase : letter = alphabet[letter_index]
      end
    end.join
    ciphred_text
  end
end
