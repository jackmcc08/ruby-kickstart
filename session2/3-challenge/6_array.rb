# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

# require 'Prime'

# def prime_chars?(strings)
#   strings.empty? ? false : strings.map! { |string| string.length }.reduce(:+).prime?
# end

# puts prime_chars?([])

def prime_chars?(strings)
  strings.empty? || strings == [''] ? length = false : length = strings.map! { |string| string.length }.reduce(:+)
  if length == false || length == 1
    return false
  elsif length == 2
    return true
  else
    for num in 2..(Math.sqrt(length))
      if length % num == 0
        return false
      end
    end
    return true
  end
end

# puts prime_chars_2?([])
# puts prime_chars?(['a', 'b', 'c'])
