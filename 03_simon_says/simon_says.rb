def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n = 2)
    ([str] * n).join(" ")
end

def start_of_word(str, n)
    str[0...n]
end

def first_word(str)
    str.split[0]
end

def titleize(str)
    res = []
    little_words = ["and", "the", "over"]
    str = str.split.each do |word|
        if little_words.include?(word)
            res.push word
        else
            res.push word.capitalize
        end
    end
    res.first.capitalize!
    res.join(" ")
end