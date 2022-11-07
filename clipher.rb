# Caesar Cipher - Ruby

def caesar_cipher(message, key)
  message.each_char do | char|
    if /[a-z]/.match(char)
      print (((char.ord - 97 + key) % 26) + 97).chr
    elsif /[A-Z]/.match(char)
      print (((char.ord - 65 + key) % 26) + 65).chr
    else
      print char
    end
  end

end

message =  "What a string!"
shift = 5
caesar_cipher(message, shift)
