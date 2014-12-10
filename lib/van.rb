class Van

VAN_CAPACITY = 5

	def initialize(options = {})
		@capacity = options.fetch(:capacity, VAN_CAPACITY)
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
		how_many_bkn = station.count_broken
		to_take = [free_space,how_many_bkn].min
		
		@bikes << station.release_N_bkn_to_van(to_take)
	end	

	def full?
		free_space == 0
	end

	def unload()
		@bikes.pop(bikes_in_van)
	end

end