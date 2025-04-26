require 'pry-byebug'

def caesar_cipher(message,cipher_key)
    # binding.pry
    # Create separate alphabet ranges for upper and lowercase letters
    upper = ('A'..'Z').to_a
    lower = ('a'..'z').to_a

    # Create the transformed alphabet ranges, each having been shifted <cipher_key> amount of times. eg: [a,b,c].rotate(1) = [b,c,a]
    trans_upper = upper.rotate(cipher_key).join
    trans_lower = lower.rotate(cipher_key).join

    # With our given message, we call message#tr, with the first argument being our basic uppercase and lowercase letter ranges, and the second argument as our shifted alphabets that we will map to.
    message.tr(upper.join + lower.join, trans_upper + trans_lower)
end

print 'Your message: '
message = gets.to_s.chomp

print 'Your key: '
cipher_key = gets.to_i

puts caesar_cipher(message,cipher_key)

