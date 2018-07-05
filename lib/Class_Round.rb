require './lib/Class_Guess'
require './lib/Class_Card'
require './lib/Class_Deck'

class Round
  attr_reader :deck,
              :guesses,
              :current_card,
              :record_guess,
              :userguess,
              :first,
              :hash,
              :value,
              :suit


def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = current_card
    @userguess = userguess
    @record_guess = record_guess
    @hash = hash


  end


  def current_card
    @deck.cards.first
  end

  #def record_guess(hash)

  #  guesses << Guess.new(hash, current_card)
  #  hash = "#{guess.value} of #{guess.suit}"
 #end

  #end
end
