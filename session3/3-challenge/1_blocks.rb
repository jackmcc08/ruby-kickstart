# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*numbers, &block)
  numbers.reverse.map { |num| block.call(num) }
end

# test = Proc.new { |num| num * 2}
# puts reverse_map(1,2,3, &test).inspect
