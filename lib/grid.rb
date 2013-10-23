class Grid

  def initialize cells
    @cells = cells
  end

  attr_reader :cells

  def split_the_string
  	@cells = @cells.split('')
  end

  def cell_count
    @cells.count
  end

  def to_integer_array
    @cells = @cells.map {|element| element.to_i }
  end

  def split_the_array_into_rows number
  	@rows = @cells.each_slice(number).to_a
  end

  def has_rows?
    @rows
  end

  def row_count
    @rows.count
  end


end