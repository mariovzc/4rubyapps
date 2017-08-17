require_relative './card'
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    build_cards
  end
  def take
    @cards.shift
  end
  private
  def build_cards
    [:clubs, :diamonds, :spades, :hearts].each do |suit|
      (2..10).each do |n|
        @cards << Card.new(suit, n)
      end
      ["J","Q","K","A"].each do |face|
        @cards << Card.new(suit, face)
      end
    end
    @cards.shuffle!
  end
end