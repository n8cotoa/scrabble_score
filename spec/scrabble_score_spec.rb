require('rspec')
require('scrabble_score')

describe('#scrabble_score') do
  it('accepts input') do
    expect(scrabble_score("frogs")).to(eq(true))
  end
end
