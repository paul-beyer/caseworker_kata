require 'supervisor'
require 'caseworker'

RSpec.describe Game do
    describe "#score" do
      it "returns 0 for an all gutter game" do
        game = Game.new
        20.times { game.roll(0) }
        expect(game.score).to eq(0)
      end
    end
  end

#class SupervisorTest < Minitest::Test
#
#    def test_supervisor_can_assign_worker 
#        caseworkers = [CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'junior')]
#        supervisor = Superviser.new(shift_start: 8, shift_end: 5, workers: caseworkers)
#        caseworker = supervisor.assign_caseworker
#        assert caseworker != nil
#    end 
#
#    
#end


