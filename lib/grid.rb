class Grid

  def initialize cells
    @cells = cells
    @results
  end

  attr_reader :cells, :results

  def split_the_string
  	@cells = @cells.split('')
  end

  def cell_count
    @cells.count
  end

  def to_integer_array
    @cells = @cells.map {|element| element.to_i }
  end

  def create_cell_objects
  	@results = to_integer_array.map.with_index {|num, position| cell = Cell.new(num, position)}
  end

  def result_count
  	@results.count
  end

  # def knows_its_position
  # 	@cells.map.with_index.to_a
  # end

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

  def row_neighbours cell
    @row_neighbours = results.select { |c| cell.row == c.row }
  end

  def column_neighbours cell
    @column_neighbours = results.select {|c| cell.column == c.column}
  end

  def box_neighbours cell
  	@box_neighbours = results.select {|c| cell.box == c.box}
  end

  def unsolved
  	@results.select {|c| c.value == 0 }
  end

  def candidates cell

  (1..9).to_a - row_neighbours(cell) - column_neighbours(cell) - box_neighbours(cell)

  end

  # def cell_row_neighbours
  #   cell.row == 
  # end
  
  # @results << (cell = Cell.new(array.each {|num| return num})) 
# def map_elements_into_cell
  # 	@cells.each_slice(1) { |element| result << Cell.new(element)}
  # end
  # array = to_integer_array
 	# counter = 0 
 	# while counter < 5
 	# 	puts array[counter]
 	# 	Cell.new(array[counter])
 	# 	counter +=1
 	# end
 	# array.each {|num| results << cell = Cell.new(num)}

end