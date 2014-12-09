class Van

VAN_CAPACITY = 5

	def initialize(options = {})
		@capacity = options.fetch(:capcaity, VAN_CAPACITY)
		@bikes = []
	end

	def bikes_in_van
		@bikes.count
	end

	def free_space
		@capacity - bikes_in_van
	end	

	def load(bike)
		@bikes << bike
	end
    
	def collect(station)
		bikes_to_be_collected = station.broken_bikes.count
		to_take = [free_space,bikes_to_be_collected].min
		n = 0
		while n < to_take
			bike_to_take = station.broken_bikes[n]
			load(station.release(bike_to_take))
			n += 1
		end
	end	
end