class Word <ActiveRecord::Base

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
	 		remaining_letters = word.to_s.delete(word[i])

			new_word =word[i] + remaining_letters
			if new_word!=word && Word.find_by_text(new_word).present?
				all_words << new_word
			end

			new_word = word[i] + reverse_letters(remaining_letters.chars).join
			if new_word!=word && Word.find_by_text(new_word).present?
				all_words << new_word
			end	
		end
		return all_words.uniq
	end
end
