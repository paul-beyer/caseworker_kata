class CaseWorker
    attr_accessor :experience

    def initialize(args)
        @experience = args[:experience]
        super(args)
    end 

end 