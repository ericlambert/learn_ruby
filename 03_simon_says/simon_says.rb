#write your code here
def echo(text)
	text
end

def shout(text)
	echo(text.upcase)
end

def repeat_int(text, count)
	if count == nil
		count = 2
	end

	output = ""

	count.times do 
		output += text + " "
	end

	output.strip
end

def repeat(*args)
	count = 0
	if args.size == 1
		count = 2
	else args.size == 2
		count = args[1]
	end
	repeat_int(args[0], count)
end

def start_of_word(word, charCount)
	word[0..charCount-1]
end

def first_word(sentence)
	sentence[0..sentence.index(' ') - 1]
end

def titleize(text)
	littleWords = ["and", "or", "the", "over", "to", "the", "a", "but"]
	text = text.capitalize # Always capitalize the first word 

	output = text.split(" ").map { |word| 
		if littleWords.include?(word)
			word
		else
			word.capitalize
		end
	}.join(" ")

	output
end