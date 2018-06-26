require('rspec')
require('scrabble_score')

describe('#scrabble_score') do
  it('accepts input of frog') do
    expect(scrabble_score("frogs")).to(eq(9))
  end
  it('accepts input of letter q and returns score of 10') do
    expect(scrabble_score("q")).to(eq(10))
  end
  it('parse word into individual letters and parse score') do
    expect(scrabble_score("frogs")).to(eq(9))
  end
end
