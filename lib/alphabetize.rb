require 'pry'
def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  hash = {}
  alphabet.split("").each_with_index do |x,y|
    hash[x] = y + 1
  end
  hash[" "] = 0

  arr.sort_by do |word|
    sum = ""
    word.split("").each do |letter|
      if hash[letter] < 10
        sum += "0" + hash[letter].to_s
      else
        sum += hash[letter].to_s
      end
    end
    sum = "." + sum
    sum.to_f
  end
end
