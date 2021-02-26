# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person

  attr_accessor :name, :age, :quote

  def initialize(options = Hash.new, &initializer )
    @initializer = initializer
    initializer.call self if @initializer != nil
    self.name = options[:name] if options.key?(:name)
    self.age = options[:age] if options.key?(:age)
    self.quote = options[:quote] if options.key?(:quote)
  end

  def reinit
    @initializer.call self
  end

end

artist = Person.new :name => 'Prince' do |person|
  person.age   = 47
  person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
end

puts artist.name   # => "Prince"
puts artist.age    # => 47
puts artist.quote

artist.name = 'The Artist Formarly Known As Prince'
artist.age  = 1999

puts artist.name   # => "The Artist Formarly Known As Prince"
puts artist.age    # => 1999
puts artist.quote
artist.reinit

puts artist.name   # => "The Artist Formarly Known As Prince"
puts artist.age    # => 47
puts artist.quote
