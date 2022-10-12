require 'supervisor'
require 'worker'

RSpec.describe Supervisor do

  before do
      @workers =  [Worker.new(shift_start: Time.new(2022, 10, 10, 9, 0, 0, "-04:00"), shift_end: Time.new(2022, 10, 10, 15, 0, 0, "-04:00"), first_name: 'Mason', last_name: 'Holsten'),
                   Worker.new(shift_start: Time.new(2022, 10, 10, 9, 0, 0, "-04:00"), shift_end: Time.new(2022, 10, 10, 17, 0, 0, "-04:00"), first_name: 'Lain', last_name: 'Roberts'),
                   Worker.new(shift_start: Time.new(2022, 10, 10, 9, 0, 0, "-04:00"), shift_end: Time.new(2022, 10, 10, 18, 0, 0, "-04:00"), first_name: 'Arvana', last_name: 'Kern')]
      @supervisor = Supervisor.new(shift_start: Time.new(2022, 10, 10, 9, 0, 0, "-04:00"), shift_end: Time.new(2022, 10, 10, 17, 0, 0, "-04:00"), first_name: 'Guyen', last_name: 'Krills', workers: @workers)
      @visit = Visit.new(duration_minutes: 120, start_time: Time.new(2022, 10, 10, 15, 0, 0, "-04:00"))
     
  end 

  describe "attributes" do

    it "supervisor has attributes" do
      expect(@supervisor).to have_attributes(first_name: 'Guyen', last_name: 'Krills', shift_start: Time.new(2022, 10, 10, 9, 0, 0, "-04:00"), shift_end: Time.new(2022, 10, 10, 17, 0, 0, "-04:00"))
    end

    it "supervisor has a list of workers" do
      expect(@supervisor.workers.length).to be == 3
    end
  end

  describe "#eligible_workers" do 

    it "can return workers whose shift is within the visit time frame " do 
      eligible_workers = @supervisor.eligible_workers(@visit)
      expect(eligible_workers.length).to be == 2
    end

  end
end




