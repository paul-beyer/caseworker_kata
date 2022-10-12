require 'visit'
require 'caseworker'

RSpec.describe Visit do

    before do
        @visit =  Visit.new(duration: 1, start_time: 5)
    end 
  
    describe "visit attributes" do
  
      it "visit has attributes" do
        expect(@visit).to have_attributes(duration: 1, start_time: 5)
      end
  
    end
  end