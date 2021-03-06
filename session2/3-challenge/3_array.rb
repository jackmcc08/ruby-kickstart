# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    result = ""
    self.each_char.with_index { |chr, index| result << chr if index.even?  }
    result
  end

end


# puts "Four score and seven years ago...".every_other_char
