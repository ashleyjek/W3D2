class Card

    attr_reader :face_val, :current_state, :hidden_state

    def initialize

        @face_val =  ['a', 'a', 'b', 'b', 'c', 'c', 'd', 'd', 'e', 'e', 'f', 'f', 'g', 'g', 'h', 'h']

        @hidden_state = '?' #side(false) = hidden, side(true) = reveal

        @current_state = @hidden_state

    end

    def hide
       @current_state = @hidden_state
    end

    def reveal
        @current_state = face_val
        # puts "card is face-up"
    end



    


    # @face_val =  ['a', 'a', 'b', 'b', 'c', 'c', 'd', 'd', 'e', 'e', 'f', 'f', 'g', 'g', 'h', 'h']