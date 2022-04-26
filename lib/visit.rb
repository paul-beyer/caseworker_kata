class Visit
    attr_accessor :urgency, :reason, :travel_time, :worker

    def initialize(args)
        @urgency = args[:urgency]
        @reason = args[:reason]
        @travel_time = args[:travel_time]
    end 

   
end 
