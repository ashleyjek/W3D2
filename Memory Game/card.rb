class Card

    attr_reader :face_val, :side

    def initialize(face_val)
        @face_val = face_val #letter
        @side = false #side(false) = hidden, side(true) = reveal
    end

    def hide
       @side = false
    end

    def reveal
        @side = true
        # puts "card is face-up"
    end

    def to_s(pos)  
        pos.to_s

    end

    def ==(pos)
        self == pos
    end

end