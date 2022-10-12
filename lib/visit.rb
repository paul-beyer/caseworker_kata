class Visit
    attr_accessor :duration, :start_time

    def initialize(args)
        @duration = args[:duration]
        @start_time = args[:start_time]
    end 

   
end 
