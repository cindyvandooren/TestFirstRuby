class Array 

	def sum
		self.inject(0) {|sum, n| sum + n}
	end

	def square
		self.collect {|n| n ** 2}
	end

	def square!
		self.collect! {|n| n ** 2}
	end
end
