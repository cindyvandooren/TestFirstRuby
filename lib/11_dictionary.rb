class Dictionary
  # TODO: your code goes here!
 	attr_accessor :entries

  	def initialize
  		@entries = {}  	
  	end 

  	def add(entry)
  		if entry.is_a?(Hash)
  			entry.each do |key, value|
  				@entries[key] = value
	  		end 
	  	else 
	  		@entries[entry] = nil
	  	end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(data)
		self.keywords.include?(data)
	end

	def find(string)
		result = {}
		last_character_string = string.length - 1

		#loop through all the keywords
		self.keywords.each do |keyword|
			#if the prefix or test word is equal to the keyword
			#add the keyword to the result hash
			if keyword == string
				result[keyword] = @entries[keyword]
			else
				#only if the keyword is longer than the prefix...
				if keyword.length >= string.length
					#see if the first letters of the keyword are equal to the prefix
					#if so, add the keyword to the result hash
					if keyword[0..last_character_string] == string
						result[keyword] = @entries[keyword]
					end
				end
			end
		end
		result
	end

	def printable
		print = []
		#loop through all the hash keys and values
		#add them to the list to be printed
		@entries.sort.each do |k, v|
			print << "[#{k}] \"#{v}\""
		end
		#print list using \n
		print.join("\n")
	end
end

