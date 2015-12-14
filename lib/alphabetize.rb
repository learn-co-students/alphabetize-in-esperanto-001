ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by {|x| x.split("").map{|letter| ESPERANTO_ALPHABET.index(letter)}}
end



