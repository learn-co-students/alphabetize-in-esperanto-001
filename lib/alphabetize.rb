def alphabetize(phrases)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  phrases.sort_by do |phrase|
    phrase_no_spaces = phrase.strip.delete(" ")
    order_digits = ["."]
    
    phrase_no_spaces.each_char do |char|
      char_order = esperanto_alphabet.index(char)
      
      if char_order < 10
        order_digits << 0
      end
      
      order_digits << char_order
    end
    
    order_digits.join.to_f
  end
end
