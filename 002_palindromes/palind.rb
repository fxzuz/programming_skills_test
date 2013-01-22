#!/usr/bin/env ruby

words = []
ARGF.each do |line|
    word = line.chomp.downcase
    half = word.length / 2

    is_palindrom = 1
    for i in 1 .. half
        first = i - 1
        last  = i * -1

        if word[first] != word[last, 1]
            is_palindrom = 0
            break
        end
    end

    if is_palindrom > 0
        words.push(word)
    end
end

words.sort.each do |word|
    puts word
end
