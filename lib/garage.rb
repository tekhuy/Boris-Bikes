require 'byebug'

class Garage

	def initialize
		@bikes = []
	end

	def repair
		@bikes.each do |bike|
			bike.fix! if bike.broken?
		end
	end

	def bkn_bikes
	   @bikes.select{|bike| bike.broken?}.count
	end

	def rep_bikes
		@bikes.reject{|bike| bike.broken?}.count
	end

	def load(*bikes)
		bikes.each {|bike| @bikes << bike}
		#repair  #immediately repairs of delivered bikes 
	end

	def release(n)
		@bikes.pop(n)
	end

end