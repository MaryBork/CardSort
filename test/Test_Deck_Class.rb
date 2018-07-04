require 'minitest/autorun'
require 'minitest/pride'
require './lib/Class_Guess'
require './lib/Class_Card'
require './lib/Class_Deck'

class DeckTest < MiniTest::Test

def test_it_exists
  card_1 = Card.new(3, "Hearts")
  card_2 = Card.new(4, "Clubs")
  card_3 = Card.new(5, "Diamonds")
  deck = Deck.new([card_1, card_2, card_3])

  assert_instance_of Deck, deck
end

def test_deck_of_cards_array
  card_1 = Card.new(3, "Hearts")
  card_2 = Card.new(4, "Clubs")
  card_3 = Card.new(5, "Diamonds")
  deck = Deck.new([card_1, card_2, card_3])

assert_equal [card_1, card_2, card_3], deck.cards
end

def test_cards_number
  card_1 = Card.new(3, "Hearts")
  card_2 = Card.new(4, "Clubs")
  card_3 = Card.new(5, "Diamonds")
  deck = Deck.new([card_1, card_2, card_3])

  assert_equal 3, deck.count
end

end
