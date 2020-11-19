class WrongInputError < StandardError; end


class Hanoi
    
    def initialize
        @towers = Array.new(3) {Array.new(4,"-")}
        @discs = [4,3,2,1]
        @tries = 0
        @towers[0] = @discs
    end

    def play_game
        until game_over?

            
        end
        
    end

    def prompt
        puts "Pick a starting tower and ending tower in following format: 1 to 3"
        begin
        input = gets.chomp.split(" to ").map(&:to_i)
        if ((input[0] > 3) && (input[0] < 1)) || ((input[1] > 3) && (input[1] < 1))
            if !input[0].is_a?(Integer) && !input[0].is_a?(Integer)
                raise WrongInputError.new("Please enter in the correct format")
            end
        end
        input
    end

    def move
        variable = 0
        prompt.each do |s, e|
            @tower[s - 1].reverse_each |i|
                variable = i if i.is_a?(Integer)
                break
            end
        end

    end

    def render
        @towers.each_with_index do |tower, i| 
            print "Tower #{i+1}  "
            puts tower.join(" ")
        end
    end

    def game_over?
        win? || lose?
    end

    def win?
        @towers[2] == @discs
    end

    def lose?
        @tries >= 15
    end

    private
    attr_reader :towers, :discs
    def [](pos)
        x , y = pos
        @towers[x][y]
    end

    def []=(pos, val)
        x , y = pos
        @towers[x][y] = val
    end
end