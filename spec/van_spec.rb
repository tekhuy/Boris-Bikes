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

  it "should not take more its capacity" do
  	van_small = Van.new(:capacity => 1)
  	bkn_bike1,bkn_bike2 = Bike.new,Bike.new
  	bkn_bike1.break!
  	bkn_bike2.break!
  	
  	station.dock(bkn_bike1)
  	station.dock(bkn_bike2)

  	van_small.collect(station)
  	expect(van_small.bikes_in_van).to eq(1) 
  end

  it "should be full when its capacity is reached" do
  	van_small = Van.new(:capacity => 3)
  	bikes=[]
  	5.times {bikes << Bike.new}
  	bikes.each {|bike| bike.break!}
  	bikes.each {|bike| station.dock(bike)}
  	van_small.collect(station)
  	#expect(van_small).to be_full
  	expect(van_small.bikes_in_van).to eq(3)
  	#expect(station.count_broken).to eq(5)
  	#expect(van_small.free_space).to eq(3)
  end

  it 'should unload the van ' do
  	bikes = []
  	5.times { van.load(Bike.new)} # loads bikes directly to the van
  	van.unload()
  	expect(van.bikes_in_van).to eq(0)
  end

end  
