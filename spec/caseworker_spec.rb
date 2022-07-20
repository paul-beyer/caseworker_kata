require 'caseworker'
require 'visit'

RSpec.describe CaseWorker do

  describe "#assignable" do

    it "answers true if junior and is a check-in" do
      caseworker = CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'junior')
                    
      expect(caseworker.assignable('check-in')).to be(true)
    end
  end
end

