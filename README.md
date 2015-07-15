# Encryptor

This is a tutorial from Jumpstart Labs, where you can encrypt and decrypt messages. 
To use this encryptor clone the repository and load the file in to IRB.  Create an object -- message = Encryptor.new -- then you can use the .encrypt or .decrypt method.  Both of these methods take two parameters.  The first one is your message and the second is going to be the rotation of the cipher.  

Ex.  message.encrypt("Hello", 13)  will use the ROT-13 cipher.
     message.decrypt("Uryy!", 13)  will decrypt the message and give you back "Hello"

Make sure that what ever number you use for the rotation is the same on both the .encrypt and decrypt methods to get the proper results.

Have fun!
