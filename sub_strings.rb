def substrings (string, dict)
    matches = {}
    dict.each do |word|
        matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
    end
    matches
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("Below", dict)
puts substrings("Howdy partner, sit down! How's it going?", dict)