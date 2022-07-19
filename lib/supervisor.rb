require 'worker'

class Superviser < Worker

    attr_accessor :workers

    def initialize(args)
        @workers = args[:workers]
        super(args)
    end 

    def assign_caseworker
        @workers[0]
    end
    
end


