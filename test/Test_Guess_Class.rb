require 'minitest/autorun'
require 'minitest/pride'
require './lib/Class_Guess'
require './lib/Class_Card'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new(10, "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_card_exists
   card = Card.new(10, "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Card, guess.card

  end

def test_response_method
  card = Card.new(10, "Hearts")
  guess = Guess.new("10 of Hearts", card)

  assert_equal "10 of Hearts", guess.response
end

 def test_correct_method
   card = Card.new(10, "Hearts")
   guess = Guess.new("10 of Hearts", card)

   assert_equal guess.correct?, true
end

def feedback
  card = Card.new(10, "Hearts")
  guess = Guess.new("10 of Hearts",card)

  assert_equal guess.feedback, "Correct"
end

def false_card_still_works
  card = Card.new("Queen", "Clubs")
  guess = Guess.new("2 of Diamonds", card)

  assert_instance_of Guess, guess
  assert_instance of Card, guess.card
  assert_equal "2 of Diamonds", guess.response
  assert_equal guess.correct?, false
  assert_equal guess.feedback, "Incorrect"
end
end
