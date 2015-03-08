def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	arr.inject(0) {|sum, num| sum += num}
end

def multiply(*numbers)
  	numbers.inject(1) { |product, number| product * number}
end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)
	num.downto(1).inject(1){|product, number| product * number}
end




