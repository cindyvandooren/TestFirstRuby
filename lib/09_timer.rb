class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		s = (@seconds % 3600) % 60
		m = (@seconds % 3600) / 60
		h = @seconds / 3600
		secs = "#{s / 10}#{s % 10}"
		mins = "#{m / 10}#{m % 10}"
		hrs = "#{h / 10}#{h % 10}"
		return "#{hrs}:#{mins}:#{secs}"
	end
end

