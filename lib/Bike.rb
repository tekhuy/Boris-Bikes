class Bike
	def initialize(bike_id)
		@broken = false
		@rented = 0
		@bike_id = bike_id
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
	end

	def rent(user)
		@rented = user
	end

	def rented?
		@rented  != 0
	end

	def bike_id
		@bike_id
	end

end
