# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

require 'to_words'

class BeerSong
  def initialize(number)
    if !number.is_a? Integer
      number
    elsif number > 99
      number = 99
    elsif number <= 0
      number = 0
    end
    @bottles = number
  end

  def print_song

    if @bottles.is_a? String || @bottles == 0
      return String.new
    elsif @bottles > 0
      while @bottles >= 1
          puts "#{@bottles.to_words.capitalize.split(' ').join('-')} #{@bottles == 1 ? "bottle" : "bottles"} of beer on the wall,",
          "#{@bottles.to_words.capitalize.split(' ').join('-')} #{@bottles == 1 ? "bottle" : "bottles"} of beer,",
          "Take one down, pass it around,",
          "#{(@bottles - 1).to_words.capitalize.split(' ').join('-')} #{(@bottles - 1) == 1 ? "bottle" : "bottles"} of beer on the wall."
          @bottles = @bottles - 1
      end
    end
  end
end


song = BeerSong.new(24)
song.print_song

puts 99.to_words
