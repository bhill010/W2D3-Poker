class Card
  attr_reader :color, :symbol, :value

  COLORS = [
    :black,
    :red
  ]

  SYMBOLS = [
    :diamond,
    :heart,
    :club,
    :spade
  ]

  VALUES = (2..14).to_a

  def initialize(color = nil, symbol = nil, value = nil)
    @color = color || COLORS.shuffle.first
    @symbol = symbol || SYMBOLS.shuffle.first
    @value = value || VALUES.shuffle.first
  end
end

if __FILE__ == $PROGRAM_NAME
  card = Card.new
  p card.color
  p card.symbol
end
