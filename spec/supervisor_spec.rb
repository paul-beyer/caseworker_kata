require 'supervisor'
require 'caseworker'

RSpec.describe Superviser do

    describe "#assign_caseworker" do

      it "is able to assign a junior caseworker" do
        caseworkers = [CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'senior'),
                       CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'mid'),
                       CaseWorker.new(shift_start: 9, shift_end: 5, experience: 'junior')]
        supervisor = Superviser.new(shift_start: 8, shift_end: 5, workers: caseworkers)
        caseworker = supervisor.assign_caseworker('check-in')
        expect(caseworker.experience).to eq('junior')
      end
    end
  end




