require './lib/card'
require './lib/deck'

RSpec.describe Card do
  before do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
  end

  describe '#initialize' do
    it 'should initialize an instance of Deck' do
      expect(@deck).to be_instance_of(Deck)
    end
  end
  describe '#count' do
    it 'it can count the number of cards' do
      expect(@cards.count).to eq(3)
    end
  end

  describe '#cards in category' do
    it 'counts cards by category given' do
      expect(@deck.cards_in_category(:STEM)).to eq([@card_2, @card_3])
    end
  end
end
