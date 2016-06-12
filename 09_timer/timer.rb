class Timer
    attr_reader :seconds 
    attr_accessor :minutes 
    attr_accessor :hours

    def initialize
        @seconds = 0
        @minutes = 0
        @hours = 0
    end

    def time_string 
        "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"      
    end

    def padded(value)
        
        if value >= 10
            value.to_s
    
        else 

            "0#{value.to_s}"
    
        end
    end

    def seconds=(value)
        
        @seconds = value % 60
        @minutes += value / 60
        @hours = @minutes / 60
        @minutes = @minutes % 60 
    
    end

end

timer = Timer.new
