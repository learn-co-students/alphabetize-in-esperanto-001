require 'pry'
def alphabetize(arr)
alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

no_match = false
letter_counter = 0
until no_match == true
  if arr[0][letter_counter] == arr[1][letter_counter] && letter_counter < arr[0].length
    letter_counter += 1
  else
    no_match = true
  end
end

arr.sort_by do |word| 
  alpha.index(word[letter_counter])
end

end