class Board 
    require './card.rb'

    attr_reader :populate

    def initialize
        @letters = ("a".."h").to_a
        @cards = []
        @board = Array.new(4) {Array.new}
        @letters.each do |char|
            @cards << Card.new(char)
            @cards << Card.new(char)
        end
        @cards.shuffle!
        @board.each do |row|
            4.times do 
                row << @cards.pop
            end
        end
        @size = 16 
    end 

    def [](pos)

        row, col = pos

        @board[row][col]


    end 


    def []=(pos, val)

        row, col = pos 

        @board[row][col] = val

    end



    def render
        new_arr = []
        @board.each do |row|
            subarr = []
            row.each do |ele|
                subarr << ele.face_val
            end
            new_arr << subarr
        end
        
        new_arr.each do |row|
            puts row.join(" ")
        end

    end 


    def won?


    end 


    def hidden_board 
        hidden = []
        @board.each do |row|
            subarr = []
            row.each do |ele|
                subarr << "?"
            end 
            hidden << subarr
        end  
        hidden

        
    end 


    def face_value_board
        @board.map do |row|
            row.map do |ele|
                ele.face_val
            end
        end

    end
    
    def reveal(pos)
        if self[pos].current_state == self[pos].hidden? 
            self[pos].switch_side
            p hidden_board[0][0]
            p face_value_board[0][0]
            hidden_board[pos[0]][pos[1]] = face_value_board[pos[0]][pos[1]]
            return self[pos].face_val
        end 
    
    end

    def won?
        @board.each do |row|
            row.each do |card|
                if card.hidden?
                    return false
                end
            end
        end
        true
    end



end 