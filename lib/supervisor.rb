require 'worker'

class Supervisor < Worker

    attr_accessor :workers

    def initialize(args)
        @workers = args[:workers]
        super(args)
    end 

    def assign_worker()
        @workers[0]
    end

    private

    #filter available times

    
end


