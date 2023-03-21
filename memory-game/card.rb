class Card
    
    attr_accessor :face_up, :value 
    
    def initialize(value)
        @face_up = false  
        @value = value 
    end 

    def hide
        self.face_up = false
    end

    def reveal
        self.face_up = true  
    end 

    def to_s
        hidden_value = @value 
        hidden_value = ''
    end 

    def ==
        @value == other_card.value  
    end 

end 