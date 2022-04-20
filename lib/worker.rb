class Worker 
    attr_accessor :shift_start, :shift_end

    def initialize(args)
        @shift_start = args[:shift_start]
        @shift_end = args[:shift_end]
    end 

end 




