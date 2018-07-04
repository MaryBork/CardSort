require './lib/Class_Card'

class Deck
  attr_reader :cards,
              :count

  def initialize(cards)
    @cards = cards
    @count = cards.count
  end

end
