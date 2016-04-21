
def reverse_letters(word)
	puts "#{word} : in reverse_letters"
	new_word = []
	length = word.length
	word.each_with_index do |letter,i| 
		new_word[length-i-1] = letter
	end
	return new_word
end