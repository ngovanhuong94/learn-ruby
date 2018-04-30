$specical_word = ["a", "an", "in", "of", "the", "and"]


class Book
# write your code here
def title=(str)
	@title = self.titleize(str)
end

def title
	@title
end

private

def titleize(str)
	result = []
	arr = str.split(" ")

	if arr.length == 1
		result.push(arr[0].capitalize)
	else
		for i in 0..(arr.length() - 1)
			if i != 0 && i != (arr.length() -1) && $specical_word.include?(arr[i])
				result.push(arr[i])
			else
				result.push(arr[i].capitalize)
			end
		end
	end
	result.join(" ")
end

end




