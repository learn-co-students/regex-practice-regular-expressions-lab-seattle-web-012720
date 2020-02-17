def starts_with_a_vowel?(word)
    vowel = word.scan(/\A[aeiouAEIOU]/)
    vowel.empty? ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun+\w+ing\b/)
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    array = text.scan(/\A[A-Z].+\W\z/)
    array.empty? ? false : true
end

def valid_phone_number?(phone)
    if phone.match(/[a-z]/i)
        return false
    else
        digits = phone.scan(/\d/)
        digits.length == 10 ? true : false
    end
end
