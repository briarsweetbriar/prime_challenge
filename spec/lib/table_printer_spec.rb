require "spec_helper"
require "table_printer"
require "helpers/capture_output"

RSpec.describe TablePrinter do
  describe "#print" do
    before :each do
      @table_printer = TablePrinter.new([["", 2, 3], [2, 4, 6], [3, 6, 9]])
    end

    it "outputs to stdout" do
      printed = capture_stdout { @table_printer.print }
      expect(printed.length).to be > 0
    end

    it "outputs the table to stdout" do
      printed = capture_stdout { @table_printer.print }
      expect(printed).to eq("   2 3
 2 4 6
 3 6 9
")
    end
  end
end