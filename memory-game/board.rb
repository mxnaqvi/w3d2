require_relative 'card.rb'
class Board
    def initialize
        @grid = Array.new(4) { Array.new (4)}


    end

    def populate
        total_pairs = 8
       values = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E', 'F', 'F', 'G', 'G', 'H', 'H']
       values.sample.each do |ele|
        @grid << ele
       end
    end

    # def render
    # end

    # def won?
    # end

    # def
end