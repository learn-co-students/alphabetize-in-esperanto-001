require 'pry'

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  custom_sort = ->(a,b) do
    a.split('').each_with_index do |char, i|
      return alphabet.index(a[i]) <=> alphabet.index(b[i]) if a[i] != b[i]
    end
    return alphabet.index(' ') <=> alphabet.index(b[-1])
  end
  arr.sort(&custom_sort)
end