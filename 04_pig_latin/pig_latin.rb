def translate(str)
    res = []
    vowels = ["a", "e", "i", "o", "u"]
    str.split.each do |word|
        if vowels.include?(word[0])
            word = "#{word}ay"
        else
            i = 0
            while i < word.length
                if vowels.include?(word[i])
                    break
                elsif word[i...i + 2] == "qu"
                    i += 2
                    break
                end
                i += 1
            end
            prefix = word[0...i]
            suffix = word[i...word.length]
            word = "#{suffix}#{prefix}ay"
        end
        res.push word;
    end
    res.join(" ")
end