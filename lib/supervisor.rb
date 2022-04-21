require_relative '../lib/worker'

class Superviser < Worker

    attr_accessor :workers

    def initialize(args)
        @workers = args[:workers]
        super(args)
    end 
end


