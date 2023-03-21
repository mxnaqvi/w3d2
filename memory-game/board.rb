require_relative 'card.rb'
class Board
    attr_accessor :grid 
    def initialize
        @grid = Array.new(4) { Array.new (4)}

    end

    def [](pos)
        @grid[pos[0]][pos[1]]
    end 

    def []=(pos, val)
        @grid[pos[0]][pos[1]] = val 
    end 
    
    def populate
        total_pairs = 8
        values = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E', 'F', 'F', 'G', 'G', 'H', 'H']
        random_values = values.shuffle 
            @grid.each_with_index do |el1, i|
                el1.each_with_index do |el2, j|
                    random_value = random_values.pop
                    Card.new(random_value)
                     @grid[i][j] = random_value 
                end
            end
    end

    def render
        @grid.each do |row|
            puts row.join
        end
    end

    # def won?
    # end
end