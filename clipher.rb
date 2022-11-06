# Caesar Cipher - Ruby

def caesar_cipher(message, key)
  message.each_char do | char|
    if char =~ /[a-z]/
      print (((char.ord - 97 + key) % 26) + 97).chr
    elsif char =~ /[A-Z]/
      print (((char.ord - 65 + key) % 26) + 65).chr
    else
      print char
    end
  end

end

message =  "What a string!"
shift = 5
caesar_cipher(message, shift)
