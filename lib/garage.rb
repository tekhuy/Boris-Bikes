class Garage

	def initialize
		@bkn_bikes = []
		@rep_bikes = []
	end

	def repair
		@bkn_bikes.each do |bike|
			bike.fix!
			@rep_bikes << @bkn_bikes.delete(bike)
		end
	end

	def bkn_bikes
		@bkn_bikes.count
	end

	def rep_bikes
		@rep_bikes.count
	end

	def load(*bikes)
		bikes.each {|bike| @bkn_bikes << bike}
	end

	def release(n)
		@rep_bikes.pop(n)
	end

end