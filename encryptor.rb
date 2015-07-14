class Encryptor
  
  def cipher 
     {"a" => "n", "b" => "o", "c" => "p", "d" => "q",
      "e" => "r", "f" => "s", "g" => "t", "h" => "u",
      "i" => "v", "j" => "w", "k" => "x", "l" => "y", 
      "m" => "z", "n" => "a", "o" => "b", "p" => "c",
      "q" => "d", "r" => "e", "s" => "f", "t" => "g",
      "u" => "h", "v" => "i", "w" => "j", "x" => "k",
      "y" => "l", "z" => "m"}
  end
  
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  #Cut the input string into letters
  #Encrypt those letters one at a time, gathering results
  #Join the results back together in one sting

  def encrypt(string)
    letters = string.split("")
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt_letter(letter)     
      results.push(encrypted_letter)
    end
    results.join
  end

end
