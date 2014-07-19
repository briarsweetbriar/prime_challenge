class TablePrinter

  attr_accessor :table, :column_size
  def initialize(table)
    @table = table
    @column_size = set_column_size
  end

  def print
    table.each{ |row| print_row row }
  end

  private
  def set_column_size
    last_cell.to_s.length
  end

  def last_cell
    table.last.last
  end

  def print_text(text)
    $stdout.write text
  end

  def new_line
    print_text "\n"
  end

  def print_row(row)
    row.each{ |cell| print_cell cell }
    new_line
  end

  def print_cell(text)
    text = text.to_s
    blanks = column_size - text.length + 1
    blanks.times{ text = " " + text }
    print_text text
  end
end