
class Guess
  attr_reader :card,
              :guess



  def initialize(userguess, card)
    @userguess = userguess
    @card = card

  end

  def response
    @userguess
  end

  def correct?
    if userguess = "#{card.value} of #{card.suit}"
      true
    else
      false
    end
  end

  def feedback
    if card.correct? == true
      puts "Correct."
    else
      puts "Incorrect."
    end
  end

end
