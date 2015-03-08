class RPNCalculator
	attr_accessor :calculator

	def initialize
		@calculator = []
	end

	def push(n)
		@calculator << n
	end

	def plus
		if @calculator.size == 0
			raise "calculator is empty"
		else
			@calculator << @calculator.pop + @calculator.pop
		end
	end

	def value
		@calculator[-1]
	end

	def minus
		if calculator.size == 0
			raise "calculator is empty"
		else
			@calculator << -@calculator.pop + @calculator.pop
		end
	end

	def divide
		if calculator.size == 0
			raise "calculator is empty"
		else
			@calculator << (1.0 / @calculator.pop) * @calculator.pop
		end
	end

	def times
		if calculator.size == 0
			raise "calculator is empty"
		else
			@calculator << @calculator.pop * @calculator.pop
		end
	end

	def tokens(string)
		token = []
		symbols = ["+", "-", "/", "*"]

		string.split(" ").each do |character|
			if symbols.include?(character)
				token << character.to_sym
			else
				token << character.to_i
			end
		end
		token 
	end

	def evaluate(string)
		tokens(string).each do |character|
			if character.is_a?(Fixnum)
				push(character)
			elsif character == :+
				plus
			elsif character == :-
				minus
			elsif character == :*
				times
			elsif character == :/
				divide
			end
		end
		value
	end
end
