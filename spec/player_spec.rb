require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name) }
  describe '#name' do
    it "returns it's name" do
      expect(subject.name).to eq name
    end
  end
  describe '#reduce_HP' do
    it "reduces HP by 10" do
      player.attack(player)
      expect(player.health_points).to eq 90
    end
  end
end
