class Anagram_checker
  def self.anagrams_check(parameters)
    word1 = parameters.fetch(:word1)
    word2 = parameters.fetch(:word2)
    letters1 = word1.downcase.split("").sort
    letters2 = word2.downcase.split("").sort
    if !(has_vowels?(letters1) && has_vowels?(letters2))
      return "You need to input actual words!"
    elsif word1.downcase.reverse == word2.downcase()
      return "Yes, those are anagrams, and also form a palindrome"
    elsif (letters1 == letters2)
      return "Yes, those are anagrams"
    elsif are_antigrams?(letters1, letters2)
      return "These words have no letter matches and are antigrams."
    else
      "Sorry, those aren't anagrams"
    end
  end

  def self.has_vowels?(letters)
    letters.each do |letter|
      if (letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "y")
        return true
      end
    end
    return false
  end

  def self.are_antigrams?(letters1, letters2)
    letters1.each do |letter1|
      letters2.each do |letter2|
        if letter1 == letter2
          return false
        end
      end
    end
    return true
  end
end
