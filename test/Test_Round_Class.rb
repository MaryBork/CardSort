require 'minitest/autorun'
require 'minitest/pride'
require './lib/Class_Guess'
require './lib/Class_Card'
require './lib/Class_Deck'
require './lib/Class_Round'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new ([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_deck_of_cards_exists
   card_1 = Card.new("3", "Hearts")
   card_2 = Card.new("4", "Clubs")
   deck = Deck.new ([card_1, card_2])
   round = Round.new(deck)

   assert_equal deck, round.deck
end

def test_guesses_array
  card_1 = Card.new("3", "Hearts")
  card_2 = Card.new("4", "Clubs")
  deck = Deck.new ([card_1, card_2])
  round = Round.new(deck)

 assert_equal [], round.guesses
end

def test_current_card_in_deck
  card_1 = Card.new("3", "Hearts")
  card_2 = Card.new("4", "Clubs")
  deck = Deck.new ([card_1, card_2])
  round = Round.new(deck)

  assert_equal card_1, round.current_card
end

#def test_record_guess
  #card_1 = Card.new("3", "Hearts")
  #card_2 = Card.new("4", "Clubs")
#  deck = Deck.new ([card_1, card_2])
#  guess = Guess.new("10 of Hearts",card_1)
  #round = Round.new(deck)


  #assert_equal round.record_guess({value: "3", suit: "Hearts"}), guesses[1]
#end
end
