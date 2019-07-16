class Scrabble
  def initialize
    @letter_points = Hash.new()

    ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"].each do |letter|
      @letter_points.store(letter, 1)
    end
    ["D", "G"].each do |letter|
      @letter_points.store(letter, 2)
    end
    ["B", "C", "M", "P"].each do |letter|
      @letter_points.store(letter, 3)
    end
    ["F", "H", "V", "W", "Y" ].each do |letter|
      @letter_points.store(letter, 4)
    end
    @letter_points.store("K", 5)
    ["J", "X"].each do |letter|
      @letter_points.store(letter, 8)
    end
    ["Q", "Z"].each do |letter|
      @letter_points.store(letter, 10)
    end
  end


  def score(word)
    points = 0
    # word.length.times do |i|
    #   points += @letter_points.fetch(word[i].upcase)
    # end
    word.split("").each do |letter|
      points += @letter_points.fetch(letter.upcase)
    end
    points
  end
end
