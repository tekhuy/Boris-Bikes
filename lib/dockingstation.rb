MAX_DOCKING_BIKES = 20


class DockingStation
	def initalize
		@bike_count = 0  			  #how many bikes are docked 
		@dockings = MAX_DOCKING_BIKES #available dockings
	end	
	def bike_count
		@bike_count 
	end
	def dock(bike)
		@bike_count += 1
	end

	def full?
		return @bike_count == MAX_DOCKING_BIKES
	end
		

end
