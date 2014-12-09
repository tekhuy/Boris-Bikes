require './lib/van'

describe Van do 

let(:van) {Van.new}	
let(:station) {Station.new}
let(:bike) {Bike.new}

it "should have no bikes initially" do
	expect(van.bikes_in_van).to eq (0)
end
	
end