# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change these values
# Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
# Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5

class Fraction

  def initialize(a,b)
    @numerator = a
    @denominator = b
  end

  attr_accessor 'numerator'
  attr_accessor 'denominator'

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

  def lowest
    d = gcd(@numerator, @denominator)
    @numerator = @numerator / d
    @denominator = @denominator / d
    return self
  end

  def to_s
    return "#{@numerator}/#{@denominator}"
  end

  def to_f
    return (@numerator.to_f/@denominator.to_f)
  end
end

# half = Fraction.new(20,60)
#
# puts half.numerator
# puts half.denominator
# puts half.to_s
# puts half.to_f
# puts half.lowest.to_s
