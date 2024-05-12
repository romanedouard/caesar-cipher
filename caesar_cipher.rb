# frozen_string_literal: true

alphabet_array = ('a'..'z').to_a * 1000

puts 'Enter your secret message:'
secret_message = gets.chomp

puts 'Enter the key:'
key = gets.chomp.to_i

def caesar_cipher(msg, shift, alphabet)
  encrypted_message = []
  msg.each_char do |letter|
    if alphabet.include?(letter)
      alpha_letter_index = alphabet.find_index(letter)
      encrypted_message.push(alphabet[alpha_letter_index + shift])
    else
      encrypted_message.push(letter)
    end
  end
  encrypted_message.join('')
end

encrypted_text = caesar_cipher(secret_message, key, alphabet_array)
puts "Your secret message is #{encrypted_text}"
