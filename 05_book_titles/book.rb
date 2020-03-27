def titleize(str)
    res = []
    little_words = ["the", "a", "an", "and", "in", "of"]
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

class Book
    def title=(str)
        @title = titleize(str)
    end

    def title
        @title
    end
end
