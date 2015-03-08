def translate(string)
	vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	temp_result = []
	final_result = []
	capital_positions = []

	#make a list of all the words in the string and loop through it
	string.split(" ").each_with_index do |word, index|
		#if a word starts with a capital
		#add the index of the word to the capital_positions list
		if word == word.capitalize
			capital_positions << index
		end

		i = 0

		#loop through each word letter by letter as long as the letter is not a vowel
		while vowels.include?(word[i]) == false
			i += 1
		end

		# Whole word indexes
		first_vowel_idx = 0
		last_letter_idx = -1
		begin_to_first_vowel_idx = false
		last_character = word[-1]

		#if the word does not start with a vowel
		if i > 0
			#check if after the consonants at the start of the word or
			#immediately at the start of the word there is a "q" followed by a "u"
			#if so, the index of the first vowel is changed to the position after the "u"
			#the begin_to_first_vowel_idx is than equal to a number i
			if (word[i - 1].downcase == "q" && word[i].downcase == "u")
				first_vowel_idx = i + 1
				begin_to_first_vowel_idx = i
			#if not the first_vowel_idx is just i, so the first vowel is at position i
			#the begin_to_vowel_idx = i-1
			else
				first_vowel_idx = i
				begin_to_first_vowel_idx = i - 1
			end
		end

		#check if the word includes punctuation
		#if so, we change the index of the last letter to -2
		#later on, we will separately add the last character (the punctuation) to the result
		if [',', '!', '"', '.', '?', ':', ';'].include?(last_character)
			last_letter_idx = -2
		end
 
		#we will add the altered word the temp_result list
		#the first part of the string is from the first vowel (afther qu) to the last non punctuation character
		#the second part of the string is the first consonants of the word or "qu" (if applicable)
		#the third part of the string is "ay" in any case
		#the last part is the punctuation (if necessary)
		temp_result << (word[first_vowel_idx..last_letter_idx] +
			(begin_to_first_vowel_idx.is_a?(Fixnum) ? word[0..begin_to_first_vowel_idx] : "") + 
			"ay" + 
			((last_letter_idx == -2) ? last_character : "")).downcase
	end

	#for every word in the temp_result list we will see if its index
	#is in the capital_positions list
	#if so, we capitalize the word and add it to final_result list
	#if not, we add the word to final_result list without changes
	temp_result.each_with_index do |word, index|
		if capital_positions.include?(index)
			final_result << word.capitalize
		else
			final_result << word
		end
	end

	#returns all strings in final_result list joined by space
	return final_result.join(" ")
end