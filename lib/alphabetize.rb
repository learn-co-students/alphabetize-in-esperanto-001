ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "




def alphabetize(arr)
    
        arr.sort_by {|item| i = 0
        sum = ESPERANTO_ALPHABET.index(item[i])
        if arr.index(item)+1 < arr.length
          j = 1
        else
          j = -1
        end
        while item[i] == arr[arr.index(item)+j][i] 
        i+=1
        sum += ESPERANTO_ALPHABET.index(item[i])*0.01**i
        end
        sum     
}
  
       # code here
end


