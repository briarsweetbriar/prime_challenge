class TableMaker

  attr_accessor :numbers, :table
  def initialize(numbers)
    @numbers = numbers
    @table = [initial_row]
  end

  def create_table
    numbers.each{ |number| fill_row(number) }
    return table
  end

  private
  def initial_row
    numbers.dup.insert(0, "")
  end

  def fill_row(number)
    table << [number]
    numbers.each do |multiplier|
      table.last << number * multiplier
    end
  end
end