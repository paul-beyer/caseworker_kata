gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'lib/supervisor'
require_relative 'lib/caseworker'


class SupervisorTest < Minitest::Test

    def test_supervisor_can_assign_worker 
        caseworkers = [CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'junior')]
        supervisor = Superviser.new(shift_start: 8, shift_end: 5, workers: caseworkers)
        caseworker = supervisor.assign_caseworker
        assert caseworker != nil
    end 

    
end



