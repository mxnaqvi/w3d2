class Card
    
    attr_accessor :face_up, :value 
    
    def initialize(value)
        @face_up = false  
        @value = ('a'..'z').to_a.sample 
    end 

    def hide
        self.face_up = false
    end

    def reveal
        self.face_up = true  
    end 

    def to_s
        if @face_up == false
            return ''
        elsif @face_up == true
            return @value
        end
    end 

    def ==
        @value == other_card.value  
    end 

end 