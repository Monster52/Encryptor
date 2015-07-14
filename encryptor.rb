class Encryptor
  
  def cipher(rotation) 
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end
  
  def encrypt_letter(letter, rotation)
    cipher_rotation = cipher(rotation)
    cipher_rotation[letter]
  end

  #Cut the input string into letters
  #Encrypt those letters one at a time, gathering results
  #Join the results back together in one sting

  def encrypt(string, rotation)
    letters = string.split("")
    results = letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter, rotation)     
    end
    results.join
  end

  def decrypt_letter(letter, rotation)
    cipher_rotation = cipher(rotation)
    invert_cipher = cipher_rotation.invert
    invert_cipher[letter]
  end

  def decrypt(string, rotation)
    letters = string.split("")
    results = letters.collect do |letter|
      decrypted_letter = decrypt_letter(letter, rotation)
    end
    results.join
  end

end
