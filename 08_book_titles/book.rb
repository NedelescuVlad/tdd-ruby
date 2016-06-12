class Book
    def title=(value)
        full_title = value.split
        
        full_title[0].capitalize!

        full_title.each do |word|

            if is_allowed(word) 
                word.capitalize!
            end
        end
        @title = full_title.join(' ')
    end

    def title
        @title
    end
    
end
    
def is_allowed(word)
    !word.match(/\band\b|\bin\b|\bthe\b|\bof\b|\ba\b|\ban\b/)
end


book = Book.new


