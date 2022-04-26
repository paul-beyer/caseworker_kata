class Worker 
    attr_accessor :shift_start, :shift_end, :first_name, :last_name, :cell_phone

    def initialize(args)
        @shift_start = args[:shift_start]
        @shift_end = args[:shift_end]
        @first_name = args[:first_name]
        @last_name = args[:last_name]
        @cell_phone = args[:cell_phone]
    end 

end 




