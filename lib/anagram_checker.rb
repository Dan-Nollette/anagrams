class Anagram_checker
  def self.anagrams_check(parameters)
    word1 = parameters.fetch(:word1)
    word2 = parameters.fetch(:word2)
    letters1 = word1.downcase.split("").sort
    letters2 = word2.downcase.split("").sort
    if word1.downcase.reverse == word2.downcase()
      return "Yes, those are anagrams, and also form a palindrome"
    elsif (letters1 == letters2)
      return "Yes, those are anagrams"
    else
      "Sorry, those aren't anagrams"
    end
  end
end
