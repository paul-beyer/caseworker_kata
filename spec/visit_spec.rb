require 'visit'
require 'caseworker'

RSpec.describe Visit do

    before do
        @visit =  Visit.new(duration_minutes: 1, start_time: Time.new(2022, 10, 10, 17, 0, 0, "-04:00"))
    end 
  
    describe "visit attributes" do
  
      it "visit has attributes" do
        expect(@visit).to have_attributes(duration_minutes: 1, start_time: Time.new(2022, 10, 10, 17, 0, 0, "-04:00"))
      end
  
    end
  end