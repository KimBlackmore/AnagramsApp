class Word

	def self.reverse_letters(word)
		new_word = []
		length = word.length
		word.each_with_index do |letter,i| 
			new_word[length-i-1] = letter
		end
		return new_word
	end

	def self.find_anagrams(word)
		all_words = []
		for i in 0..2
			ch = word[i]
			new_word = ch.to_s
			letter = ch
	 
	 		remaining_letters = word.to_s.delete(ch)
			new_word << remaining_letters
			all_words << new_word

			new_word = word[i]
			new_word << reverse_letters(remaining_letters.chars).join
			all_words << new_word		
		end
		return all_words
	end
end
