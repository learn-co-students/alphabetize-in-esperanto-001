require 'pry'

def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".each_char.with_index.to_h
  arr.sort_by! do |phrase|
    phrase.chars.map do |char|
      esperanto[char]
      #binding.pry
    end
  end
end