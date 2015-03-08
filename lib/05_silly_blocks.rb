def reverser
	result = []

	yield.split(" ").each do |word|
		result << word.reverse
	end

	return result.join(" ")
end

def adder(number = 1)
	yield + number
end

def repeater(number = 1)
	number.times {yield}
end

