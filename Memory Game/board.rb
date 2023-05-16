class Board 
    require './card.rb'

    attr_reader :populate

    def initialize

       

        @populate = Card.new

        
        @board = Array.new(4) {Array.new(4, Card.new.face_val)}

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

        @board.each do |row|
            puts row.join(" ")
        end 

    end 


    def won?


    end 


    def hidden_board 

        @board.map do |row|
            row.map do |ele|
                if ele != '?'
                    '?'
                end 
            end 
        end 


    end 


    # def reveal?

    #     @board.each do |row|
    #         row.each do |card|
    #           card.  

    # end 



end 