class Book
	def title=(text)
		@title = text.titleize
	end 

	def title
		@title
	end
end

class String
	def titleize
		smallWords = ["the", "and", "in", "of", "a", "an"]
		words = self.split(" ").map { |word|
			if smallWords.include? word
				word.downcase
			else
				word.capitalize
			end
		}
		words[0].capitalize!
		words.join(" ")

	end
end
