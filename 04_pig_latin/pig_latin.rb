# If a word begins with a vowel sound,
# add an "ay" sound to the end of the word.

# If a word begins with a consonant sound, 
# move it to the end of the word, and then
# add an "ay" sound to the end of the word.

def translate (text)
	words = text.split(" ").map {|word|
		#  ***determine if the word is capitalized***
		isCapitalized = false
		if word == word.capitalize
			isCapitalized = true
		end

		# ***determine if the word ends with punctuation.***
		# ***If so store it for later then remove it from the word***
		isPunctuated = false
		indexOfPunctuation = word.index(/[!:;.?,]/)
		punctuation = ""
		if indexOfPunctuation == word.length - 1
			isPunctuated = true
			punctuation = word[indexOfPunctuation]
		end
		word = word.sub(punctuation,"")

		# ***do the translating on the word***
		indexOfFirstVowel = word.index(/[aAeEiIoOuU]/) # where is the first vowel?
		if indexOfFirstVowel != 0
			if word[indexOfFirstVowel] == "u" && 
			  (word[indexOfFirstVowel-1] == "q" || word[indexOfFirstVowel-1] == "Q")
				indexOfFirstVowel += 1 # if the first vowel is a 'u' preceeded by a 'q' then slice after the 'u'
			end
			# remove the begining consonant and append it to the end
			word = word.slice(indexOfFirstVowel,word.length - indexOfFirstVowel) + 
				word.slice(0,indexOfFirstVowel)
		end
		# "ay" will always be appended
		word = word + "ay"

		# ***restore capitalization and punctuation where needed***
		if isCapitalized
			word = word.capitalize
		end
		if isPunctuated
			word = word + punctuation
		end

		word
	}.join(" ")

	words
end
