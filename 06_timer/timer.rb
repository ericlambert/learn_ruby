class Timer
	def initialize
		@seconds = 0
	end

	def seconds=(num)
		@seconds = num
	end

	def seconds
		@seconds
	end

	def time_string
		minutes = seconds / 60
		hours = minutes / 60
		self.seconds = seconds % 60
		minutes = minutes % 60

		hours.to_s.rjust(2, "0") + ":" + 
		minutes.to_s.rjust(2, "0") + ":" + 
		seconds.to_s.rjust(2, "0")
	end
end
