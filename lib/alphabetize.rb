def alphabetize(arr)
  # code here
  sorted = arr.sort{ |a, b| 
    index_array(a) <=> index_array(b)  
  }
end

def index_array(str)
  str.split("").collect{ |letter| esperanto_index(letter)}
end

def esperanto_index(ch)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_alphabet.index(ch)
end