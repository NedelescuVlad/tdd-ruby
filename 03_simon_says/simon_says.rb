def echo(echoThis) 
    echoThis
end

def shout(shoutThis)
    shoutThis.upcase
end

def repeat(repeatThis, n = 2)
    result = ''
    n.times do 
        result += " #{repeatThis}" 
    end
    result.strip
end

def start_of_word(word, n)
    word.slice(0,n)
end

def first_word(sentence)
    sentence.scan(/\w+/).first
end

def titleize(title)
    words = title.split
    
    for i in 0..words.count 
        if (i == 0 || (words[i] != nil && words[i] != 'over' && words[i] != 'the' && words[i] != 'and'))    
            words[i].capitalize!
        end
    end

    words.join(' ')
end
