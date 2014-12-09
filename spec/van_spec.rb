require './lib/van'


describe Van do 

  let(:van) {Van.new}	
  let(:station) {DockingStation.new}
  let(:bike) {Bike.new}

  it "should have no bikes initially" do
  	expect(van.bikes_in_van).to eq (0)
  end

  it "should take a bike" do
  	van.load(bike)
  	expect(van.bikes_in_van).to eq(1)
  end

  it "should collect broken bikes from the station" do
	bkn_bike,wking_bike = Bike.new, Bike.new
	bkn_bike.break!
	station.dock(wking_bike)
	station.dock(bkn_bike)
	van.collect(station)
	expect(van.bikes_in_van).to eq(1)
	expect(station.broken_bikes.count).to eq(0)
  end
end  
