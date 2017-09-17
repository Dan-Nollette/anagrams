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
end
