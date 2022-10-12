require 'worker'

RSpec.describe Worker do

    before do
        @worker = Worker.new(shift_start: 9, shift_end: 5, first_name: 'Yankee', last_name: 'Doodle')
    end 

    describe "worker" do
  
      it "worker has attributes" do
        expect(@worker).to have_attributes(first_name: 'Yankee', last_name: 'Doodle', shift_start: 9, shift_end: 5)
      end
    end
end