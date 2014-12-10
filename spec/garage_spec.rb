require './lib/garage.rb'

describe Garage do 
	let(:garage) {Garage.new}
	let(:bike) {Bike.new}
	let(:van) {Van.new}

	it "should take bikes from van" do
	end 

	it "should repair bikes" do
		garage.repair
		expect(garage.bkn_bikes).to eq (0)
	end

	it "should release bikes" do
	end

end