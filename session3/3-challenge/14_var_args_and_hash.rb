# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

  def count_clumps(*array)
    array = array.flatten
    return 0 if array == []
    tally = 0
    counter = 0
    count = 0
    while counter < array.length
      if array[counter] == array[counter + 1]
        count += 1
      else
        tally += 1 if count > 0
        count = 0
      end
      counter += 1
    end
    tally
  end

  def same_ends(n, *elements)
    elements = elements.flatten
    return false if n == [] || n == nil || n > elements.length
    elements[0...n] == elements[(elements.length - n)..-1] ? true : false
  end


def problem_14(*inputs)
  inputs.last.is_a?(Hash) ? optional = inputs.pop : optional = {:problem => :count_clumps}
  problems = {:count_clumps => count_clumps(inputs), :same_ends => same_ends(inputs[0], inputs[1..-1])}
  problems[optional[:problem]]
end

# problem_14([])

# problem_14(1, 1, 1, 1, 1)
# puts problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# # problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# # problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   1,  :problem => :same_ends
