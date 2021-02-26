# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def even_integers(num)
  counter = 1
  result = []
  until counter > num
    result << counter if counter.even?
    counter = counter + 1
  end
  result
end

def staircase(number)
  result = Hash.new
  counter = 1
  until counter > number
    result[counter] = even_integers(counter) if counter.odd?
    counter = counter + 1
  end
  result
end

# new_hash = staircase(5, &even_integers)
#
# puts new_hash
