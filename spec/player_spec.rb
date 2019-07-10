require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name) }
  describe '#name' do
    it "returns it's name" do
      expect(subject.name).to eq name
    end
  end
end 
