require_relative './deck'
class Hand
  attr_reader :cards
  def initialize(deck)
    @deck = deck
    @cards =[]
  end
  def hit!
    @cards << @deck.take
  end
  def value
    val = 0
    @cards.each do |card|
      val += card.value
    end
    val
  end
  def to_s
    str = ""
    @cards.each do |card|
      str += "#{card}   "
    end
    str.strip
  end
end