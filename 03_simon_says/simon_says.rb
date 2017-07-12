def echo(word)
	word
end

def shout(word)
	word.upcase
end

#def self.repeat (word)
	#"#{word} #{word}"
#end

def repeat(word, number=2)
	repeat = "#{word}"
	for i in (2..number)
		repeat += " #{word}"
	end
	repeat
end

def start_of_word(word, number=1)
	all = ""
	for i in (1..number)
		all += word.split("")[i-1]
	end
	all
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize(word)
	total = word.split(" ").map!{|x|
		if x == "and" || x == "over" || x== "the"
			x = x
		else	
			x.capitalize!
		end
	}
	title = total[0].capitalize
	for i in (1..total.length-1)
		title += (" " + total[i])
	end
	title
end