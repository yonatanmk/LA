require_relative '../lib/Hand.rb'
require_relative '../lib/Card.rb'
# ♠ ♥ ♦ ♣

describe 'Hand:' do
  let(:card1) {Card.new('2', '♥')}
  let(:card2) {Card.new('A', '♣')}
  let(:card3) {Card.new('K', '♦')}
  let(:card4) {Card.new('7', '♠')}
  subject(:hand) {Hand.new card1, card2}

  describe '#initialize:' do
    it 'card_list contains consists only of inputted cards' do
      expect(hand.card_list).to eq([card1, card2])
    end
  end

  describe '#hand_total:' do
    ################################ DO THIS NEXT
  end

  describe '#contains_a11:' do
    before(:each) do
      @hand = hand
      @hand_no_A = Hand.new card1, card3
    end
    it 'reports true when hand contains A' do
      @hand.card_list.each {|card| puts "#{card.face}#{card.symbol}   #{card.value}"}
      puts @hand.contains_a11
      expect(@hand.contains_a11).to eq(true)
    end
    it 'reports false when hand doesnt contains A' do
      expect(@hand_no_A.contains_a11).to eq(false)
    end
    it 'reports false when hand doesnt contains only low A (e.g. A with val = 1)' do
      @hand.hit_me(card3)
      @hand.hand_total
      expect(@hand.contains_a11).to eq(false)
    end
  end

  describe '#hit_me:' do

  end

  describe '#show_hand:' do

  end

  describe '#show_card_at:' do

  end

  describe '#check_split:' do

  end

end
