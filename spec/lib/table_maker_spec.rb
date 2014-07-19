require "spec_helper"
require "table_maker"

RSpec.describe TableMaker do
  describe "#create_table" do
    before :each do
      @table_maker = TableMaker.new([2,3])
    end

    it "returns an array of arrays" do
      expect(@table_maker.create_table.kind_of?(Array)).to be true
      expect(@table_maker.create_table[0].kind_of?(Array)).to be true
    end

    it "returns a table whose first entry is a blank string" do
      expect(@table_maker.create_table.first.first).to eq("")
    end

    it "returns a table of squares" do
      expect(@table_maker.create_table).to eq([["", 2, 3], [2, 4, 6], [3, 6, 9]])
    end
  end
end