require 'supervisor'
require 'worker'

RSpec.describe Supervisor do

  before do
      @workers =  [Worker.new(shift_start: 9, shift_end: 3, first_name: 'Mason', last_name: 'Holsten'),
                   Worker.new(shift_start: 9, shift_end: 5, first_name: 'Lain', last_name: 'Roberts'),
                   Worker.new(shift_start: 9, shift_end: 6, first_name: 'Arvana', last_name: 'Kern')]
      @supervisor = Supervisor.new(shift_start: 9, shift_end: 5, first_name: 'Guyen', last_name: 'Krills', workers: @workers)
      @visit = Visit.new(duration: 2, start_time: 4)
     
  end 

  describe "attributes" do

    it "supervisor has attributes" do
      expect(@supervisor).to have_attributes(first_name: 'Guyen', last_name: 'Krills', shift_start: 9, shift_end: 5)
    end

    it "supervisor has a list of workers" do
      expect(@supervisor.workers.length).to be == 3
    end
  end

  describe "#assign_workers" do 

    it "can accept a visit and return a list of workers" do 
      expect(@supervisor.assign_workers(@visit).length).to be > 0
    end
  end
end




