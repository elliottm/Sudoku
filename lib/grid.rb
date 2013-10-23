class Grid

  def initialize cells
    @cells = cells
    @rows
  end
  
  def split_the_string
  	@cells = @cells.split('')
  end

  def cell_count
    @cells.count
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