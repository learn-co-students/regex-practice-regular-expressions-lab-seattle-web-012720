require 'pry'

def starts_with_a_vowel?(word)
    word_return = word[0].scan(/[aeiouAEIOU]/)[0]
    if word_return
        # binding.pry
        return true
    else
        # binding.pry
        return false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    text_array = text.split(' ')
    return_array = []
    un_return = text_array.map do |word|
        if word.scan(/^un/)[0] == "un"
            return_array << word
        end
    end

    ing_return = text_array.each do |word|
        if word.scan(/$ing/) == "ing"
            return_array << word
        end
    end
   
    return_array.uniq
   
end

def words_five_letters_long(text)
    text_array = text.split(' ')
    return_array = []
    text_array.each do |word|
        # binding.pry
        if word.length == 5
            return_array << word
        end
    end
    return_array
end

def first_word_capitalized_and_ends_with_punctuation?(text)

    if text.scan(/^[A-Z]/)[0]
        if text.scan(/\W\z/)[0]
            return true
        else
            return false
        end
    elsif text.scan(/^[a-z]/)[0]
        if text.scan(/\W\z/)[0]
            return false
        end
    end
end

def valid_phone_number?(phone)
    # binding.pry
    digits = phone.scan(/\d/)
    if digits.length == 10
        return true
    end
end
