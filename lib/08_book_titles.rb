class Book
	attr_accessor :title

	def title
		result = []
		little_words = ["a", "an", "the", "in", "of", "and"]
		string_arr = @title.strip.split(" ").each do |word|
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
end
