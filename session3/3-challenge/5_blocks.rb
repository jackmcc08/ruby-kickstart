# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


def spiral_access(array, &block)
  height = array.length
  width = array[0].length
  total = height * width
  counter = 1
  start = 0
  width -= 1
  height -= 1
  index = 0

  until counter > total
    array[index][start..width].each do |elem|
      # puts array[index][start..width].inspect
      block.call(elem)
      counter += 1
      return if counter > total
    end
    array[index + 1..height-1].each do|arr|
      # puts array[index + 1..height-1].inspect
      block.call(arr[width])
      counter += 1
      return if counter > total
    end
    array[height][start..width].reverse.each do |elem|
      # puts array[height][start..width].inspect
      block.call(elem)
      counter += 1
      return if counter > total
    end
    array[index + 1..height-1].reverse.each do |arr|
      # puts array[index + 1..height-1].inspect
      block.call(arr[start])
      counter += 1
      return if counter > total
    end
    index += 1
    start += 1
    width -= 1
    height -= 1



  end


  # array[0].each{|elem| block.call(elem)}
  # array[1..-2].each { |arr| block.call(arr.last) }
  # array[-1].reverse.each { |elem| block.call(elem) }
  # array[1..-2].reverse.each { |arr| block.call(arr.first) }
  # array[1][1..-2].each{|elem| block.call(elem)}
  # array[2..-3].each { |arr| block.call(arr[-2]) }
  # array[-2][1..-2].reverse.each { |elem| block.call(elem) }
  # array[-3][1..2].each{ |elem| block.call(elem) }

  # array.each do |arr|
  #   block.call(arr)
  # end
end


two_d = [
  [ 1,  2,  3,  4, 5],
  [16, 17, 18, 19, 6],
  [15, 24, 25, 20, 7],
  [14, 23, 22, 21, 8],
  [13, 12, 11, 10, 9],
]
order = []
spiral_access two_d do |i|
  order << i
end
puts order.inspect # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
