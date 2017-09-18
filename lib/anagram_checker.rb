class Anagram_checker
  def self.anagrams_check(parameters)
    @phrase1 = parameters.fetch(:phrase1).downcase
    @phrase2 = parameters.fetch(:phrase2).downcase
    (@phrase1.split(" ").concat(@phrase2.split(" "))).each do |word|
      unless has_vowels?(word.split"")
        return "You need to input actual words!"
      end
    end
    @phrase1 = letters_only(@phrase1)
    @phrase2 = letters_only(@phrase2)
    letters1 = @phrase1.split("").sort
    letters2 = @phrase2.split("").sort
    if @phrase1.reverse == @phrase2
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

  def self.letters_only (phrase)
    letter_range = 'a'..'z'
    letters = phrase.split("").reject do |character|
      !(letter_range.include?(character))
    end
    letters.join("")
  end
end
