require('rspec')
require('anagram_checker')

describe('anagram_checker') do
  describe('.anagrams_check') do
    it('checks if two words are anagrams and returns an explanatory string when they aren\'t') do
      expect(Anagram_checker.anagrams_check({word1: "ruby", word2: "blarf"})).to(eq("Sorry, those aren't anagrams"))
    end
    it('checks if two words are anagrams and returns an explanatory string when they are') do
      expect(Anagram_checker.anagrams_check({word1: "ruby", word2: "bury"})).to(eq("Yes, those are anagrams"))
    end
  end
  describe('.anagrams_check') do
    it('accounts for the possibility that words might have different cases but should still be anagrams.') do
      expect(Anagram_checker.anagrams_check({word1: "Ruby", word2: "Bury"})).to(eq("Yes, those are anagrams"))
    end
  end
  # describe('.anagrams_check') do
  #   it('checks if two anagrams are also form a palindrome, returning an explanatory string.') do
  #     expect(Anagram_checker.anagrams_check({word1: "Eat", word2: "Tea"})).to(eq("Yes, those are anagrams, and also form a palindrome"))
  #   end
  # end
  # describe('.anagrams_check') do
  #   it('checks if inputs are words (contain vowels).') do
  #       expect(Anagram_checker.anagrams_check({word1: "WV", word2: "VW"})).to(eq("You need to input actual words!"))
  #   end
  # end
  # describe('.anagrams_check') do
  #   it('checks if non anagrams are antigrams.') do
  #     expect(Anagram_checker.anagrams_check({word1: "ruby", word2: "damp"})).to(eq("These words have no letter matches and are antigrams."))
  #   end
  # end
  # describe('.anagrams_check') do
  #   it('ignores spacing and punctuation to only consider letters in a multiword phrase.') do
  #     expect(Anagram_checker.anagrams_check({word1: "Dan Nollette", word2: "Nellda T Note"})).to(eq("Yes, those are anagrams"))
  #   end
  # end
end
