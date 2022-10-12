class Worker 
    attr_accessor :shift_start, :shift_end, :first_name, :last_name

    def initialize(args)
        @shift_start = args[:shift_start]
        @shift_end = args[:shift_end]
        @first_name = args[:first_name]
        @last_name = args[:last_name]
    end 

end 




