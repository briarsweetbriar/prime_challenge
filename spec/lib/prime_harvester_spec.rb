require "spec_helper"
require "prime_harvester"

RSpec.describe PrimeHarvester do
  describe "#gather" do
    before :each do
      @prime_harvester = PrimeHarvester.new(10)
    end

    it "returns an array" do
      expect(@prime_harvester.gather.kind_of?(Array)).to be true
    end
    
    it "returns an array of prime numbers" do
      expect(@prime_harvester.gather).to eq([2,3,5,7,11,13,17,19,23,29])
    end
  end
end