class CaseWorker 
    attr_accessor :shift_start, :shift_end, :experience

    def initialize(args)
        @shift_start = args[:shift_start]
        @shift_end = args[:shift_end]
        @experience = args[:experience]
    end 

end 




