require_relative '../lib/worker'

class CaseWorker < Worker
    attr_accessor :experience

    def initialize(args)
        @experience = args[:experience]
        super(args)
    end 

end