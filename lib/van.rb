class Van

VAN_CAPACITY = 5

	def initialize(options = {})
		@van = options.fetch(:capcaity, VAN_CAPACITY)
		@bikes = []
	end

	def bikes_in_van
		@bikes.count
	end
end