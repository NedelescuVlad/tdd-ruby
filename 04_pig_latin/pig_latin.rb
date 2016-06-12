def translate(string)
    words = string.split 

    #go through each word
    for i in 0..words.count-1
        
        first_letter = words[i].slice(0) 
        
        #check if the word was initially capitalized
        was_capitalized = capitalized?(words[i])

        # first letter of the word is a vowel
        # just add 'ay' at the end of the word
        if (vowel?(first_letter))
            
            words[i] <<  "ay"
        
        # first letter of the word is a consonant
        else
            
           tail = String.new
           punctuation = String.new
            
            # look for consonants
            while(!vowel?(first_letter)) do 
                
                start_index = 1
                end_index = -1
                
                # add the consonant to the tail tring
                tail += first_letter

                # track last character - will be tested as a punctuation sign
                last_character = words[i].slice(-1)

                # any q followed by a vowel is moved as a group
                if (first_letter == 'q' && vowel?(words[i].slice(1)))
                    tail += words[i].slice(1)
                    start_index = 2
                end
                
                if (punctuation_sign?(last_character))
                    punctuation = last_character
                    end_index = -2
                end

                words[i] = words[i].slice(start_index..end_index)
                first_letter = words[i].slice(0)
            end
            
            words[i] = "#{words[i]}#{tail}ay#{punctuation}"
           
            if (was_capitalized)
                words[i].capitalize!
            end
        end
    end
    words.join(' ')
end

def vowel?(letter)
   letter.match(/[aeiou]/)
end

def punctuation_sign?(letter)
    letter.match(/[\.\?,!]/)
end

def capitalized?(word)
    word == word.capitalize
end
