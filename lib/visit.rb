class Visit
    attr_accessor :duration_minutes, :start_time

    def initialize(args)
        @duration_minutes = args[:duration_minutes]
        @start_time = args[:start_time]
    end 

    def end_time
        @start_time + (@duration_minutes * 60)
    end

   
end 
