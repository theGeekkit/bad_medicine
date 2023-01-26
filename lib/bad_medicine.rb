# frozen_string_literal: true

require_relative "bad_medicine/version"

class Game
  def initialize
    @player = Player.new # initialize player character
    @location = Location.new #initialize starting location
  end

  def run
    loop do
      display_location # method to display current location and options
      input = gets.chom{ case input
      when 'n'
        @location = move_north # method to move player north
      when 's'
        @location = move south # method to move player south
      when 'q'
        puts "Thanks for playing!"
        break
      else
        puts "Invalid input. Please try again."
      end
    end
  end
end

game = Game.new
game.run

module BadMedicine
  class Error < StandardError; end
  # Your code goes here...
end
