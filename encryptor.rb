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
    results = letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter)     
    end
    results.join
  end

  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    new_cipher = cipher.invert
    new_cipher[lowercase_letter]
  end

  def decrypt(string)
    letters = string.split("")
    results = letters.collect do |letter|
      decrypted_letter = decrypt_letter(letter)
    end
    results.join
  end

end
