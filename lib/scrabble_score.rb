class Scrabble
  def initialize
    @letter_points = Hash.new()

    letters = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    points = 1
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["D", "G"]
    points = 2
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["B", "C", "M", "P"]
    points = 3
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["F", "H", "V", "W", "Y" ]
    points = 4
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["K"]
    points = 5
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["J", "X"]
    points = 8
    letters.each do |letter|
      @letter_points.store(letter, points)
    end

    letters = ["Q", "Z"]
    points = 10
    letters.each do |letter|
      @letter_points.store(letter, points)
    end
  end

  def score(letter)
    @letter_points.fetch(letter.upcase)
  end
end
