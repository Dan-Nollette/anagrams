require('./lib/anagram_checker')
loop do
  puts "Please enter the first word or phrase (enter q to quit):"
  word1 = gets.chomp
  if word1 == "q"
    break
  end
  puts "Please enter the first word or phrase:"
  word2 = gets
  puts (Anagram_checker.anagrams_check({phrase1: word1, phrase2: word2})) +"\n\n"

end
