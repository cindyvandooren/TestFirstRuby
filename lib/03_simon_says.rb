def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	("#{string} " * num).strip
end

def start_of_word(string, num)
	result = ""
	0.upto(num-1) {|index| result += string[index]}
	result
end

def first_word(string)
	string.strip.split(" ")[0]
end

def titleize(string)
	result = []
	little_words = ["and", "over", "the"]
	string_arr = string.strip.split(" ").each do |word|
		#if the word is the first word of the string or is not a little word => capitalize and add to result
		if (result == [] || little_words.include?(word) == false)
			result << word.capitalize
		#if the word is not the first word of the string and it's not a little word => don't capitalize and add to result
		else
			result << word
		end
	end
	result.join(" ")
end





