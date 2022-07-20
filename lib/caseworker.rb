require 'worker'

class CaseWorker < Worker
    attr_accessor :experience

    def initialize(args)
        @experience = args[:experience]
        super(args)
    end 

    def assignable(visit)
        match_experience_to_visit_type(visit)

    end

    private

    def match_experience_to_visit_type(visit)
    

    end

end