require("./lib/scrabble_score")

print "Enter a word: "
word = gets.chomp
scrabble = Scrabble.new
puts "#{word} has a score of #{scrabble.score(word)}"
