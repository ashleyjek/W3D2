require "./card.rb"
require "byebug"
class Board 


    def initialize

        @board = Array.new(4) {Array.new(4,"?")}

        # @populate = Card.new

    end 

    def [](pos)

        row, col = pos 

        @board[row][col]

    end


    def []=(pos, val)

        row, col = pos 

        @board[row][col] = val

    end


    def num_hidden

        @board.flatten.count {|ele| ele != "?" }

    end 

    def won?

        @board.each do |row|
            row.all? {|ele| ele == true }
            return true 
        end 

    return false 

    end 


    def render 

        @board.each do |row|
            puts row.join(" ")
        end 

    end 


    def place_cards 

        # while num_hidden <= 0
        #     @board.map do |row|
        #         row.map do |ele|
        #             value = ('a'..'h').to_a.sample
        #             if ele == "?"
        #                 "a"
        #             end
        #         end
        #     end
        # end

        p num_hidden
        while num_hidden <= 16
            row = rand(0...@board.length)
            p row
            col = rand(0...@board.length)
            p col
            value = ('a'..'h').to_a.sample
            p value
            pos = [row, col]
            p pos
            p self[pos] = value
        
          end
            # r_row = rand(0...@board.length)
            # r_col = rand(0...@board.length)
            # value = ('a'..'h').to_a.sample
            # pos = [r_row, r_col]
            # self[pos] = Card.new(value).face_val
        # end
         

    end 


    def hidden_cards_grid


        @board.map do |row|
            row.map do |ele|
                if ele != '?'
                    "?"
                end 
            end 
        end 


    end


    def self.print_board(arr)

        arr.each do |row|
            puts row.join(" ")
        end 

    end 


    def cheat 

        Board.print_board(@board)

    end

    

end