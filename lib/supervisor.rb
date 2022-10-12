require 'worker'

class Supervisor < Worker

    attr_accessor :workers

    def initialize(args)
        @workers = args[:workers]
        super(args)
    end 

    def eligible_workers(visit)
        eligible_workers = []
        @workers.each do |worker|
            if visit.end_time <= worker.shift_end
                eligible_workers << worker
            end
        end
       eligible_workers
    end
end
