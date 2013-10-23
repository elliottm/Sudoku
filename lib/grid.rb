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
  	@cells = @cells.each_slice(number).to_a
  end

  def row_count
  	@cells.count
  end
  
  def lookup_rows number
  	@cells[number]
  end

  def lookup_cell number, number1
    cell_value = @cells[number][number1]
  end

  def solved? 
    @solved
  end

  def solved_lookup number, number1
  	if lookup_cell(number, number1) > 0
  	  @solved = true
  	else 
  	  @solved = false
  	end
  end

end