 # require 'pry'
ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  transform(arr)
  sorter(transform(arr))
  retransform(sorter(transform(arr)))
end

def transform(arr)
  transformed_arr = []
  arr.each do |phrase|
    transformed_phrase = []
    phrase.each_char do |c|
      ESPERANTO_ALPHABET.each_char do |letter|
        if c == letter
          transformed_phrase <<  ESPERANTO_ALPHABET.index(letter)
        end
      end
    end
    transformed_arr << transformed_phrase
  end
  transformed_arr
end

def retransform(arr)
  retrans_arr = []
  arr.each do |phrase|
    esp_phrase = ""
    phrase.each do |num|
      esp_phrase  << ESPERANTO_ALPHABET[num]
    end
    retrans_arr.push(esp_phrase)
  end
  retrans_arr
end

def sorter(arr)
  sorted_array = arr.sort_by do |num_array|
    num_array.each do |num|
      num.magnitude
    end
  end
  sorted_array
end
