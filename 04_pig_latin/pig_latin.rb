#write your code here
$vowels = ['u', 'e', 'o', 'a', 'i']

def translate_word(str)
	index_first_vowel = 0
	str.length.times do |index|
		if $vowels.include?(str[index])
			if str[index] == 'u' && str[index-1] == 'q'
				index_first_vowel = index + 1
			else
				index_first_vowel = index
			end
			break
		end
	end
	str.slice(index_first_vowel, str.length) + str.slice(0, index_first_vowel) + "ay"
end


def translate(str)
	arr = str.split(" ")
	result = []
	arr.each do |item|
		result.push(translate_word(item))
	end
	result.join(" ")
end