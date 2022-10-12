require 'worker'

class Supervisor < Worker

    attr_accessor :workers

    def initialize(args)
        @workers = args[:workers]
        super(args)
    end 

    def assign_workers(visit)
        @workers
    end


    private

    #filter available times

    
end


