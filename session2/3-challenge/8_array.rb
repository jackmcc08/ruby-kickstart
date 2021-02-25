# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(contents)
  index = 0
  contents.each do |elem|
    puts "#{elem}, #{contents[index + 1]}, #{contents[index + 2]}"
    if elem == contents[index + 1] && elem == contents[index + 2]
      return true
    end
    index = index + 1
  end
  false
end


# puts got_three?(['a', 'a','b',  'a', 'b'])
