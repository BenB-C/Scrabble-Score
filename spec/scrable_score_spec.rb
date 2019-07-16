require("rspec")
require("scrabble_score")

scrabble = Scrabble.new()

describe('Scrabble#score') do
  it("returns a scrabble score for a letter") do
    expect(scrabble.score("a")).to(eq(1))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("D")).to(eq(2))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("B")).to(eq(3))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("F")).to(eq(4))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("K")).to(eq(5))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("J")).to(eq(8))
  end

  it("returns a scrabble score for a letter") do
    expect(scrabble.score("Q")).to(eq(10))
  end

  it("returns a total score for a word") do
    expect(scrabble.score("DOG")).to(eq(5))
  end

end
