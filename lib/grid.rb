class Grid 

  def initialize puzzle
    @puzzle = puzzle
    @cells = []
  end

  attr_reader :puzzle, :cells


  def has_puzzle?
    return true if @puzzle != nil
  end
    
  def implement_puzzle_to_cells
    @cells = convert_puzzle.map.with_index { |value, position| Cell.new(value, position) }
  end
  #how to put into initialize?

  def cell_count
    cells.count
  end

  def row_neighbours cell
    @cells.select {|i| cell.row == i.row}
  end
    #how to put into initialize?

  def column_neighbours cell
  	@cells.select {|i| cell.column == i.column}
  end
    #how to put into initialize?

  def box_neighbours cell
  	@cells.select {|i| cell.box == i.box}
  end
    #how to put into initialize?

  def cells_to_be_solved
  	@cells.select {|cell| cell.solved? != true }
  end

  def candidates cell
  	for cell in cells_to_be_solved
  	  (1..9).to_a - row_neighbours(cell) - column_neighbours(cell) - box_neighbours(cell) 
    end
  end
  # def candidates cell
  #   (1..9).to_a - [row_neighbours(cell.solved?)] - [column_neighbours(cell.solved?)] - [box_neighbours(cell.solved?)]
  # end

  # def self.from_string(puzzle)
  # 	converted = ???
  # 	Grid.new(converted)
  # end

 #private breaks as can only be called within the class, eg not outside or through rspec
  def convert_puzzle
    @puzzle = @puzzle.split('').map {|element| element.to_i}
  end

  #above .. can i use no at if re-setting?

   #design?  Below to include above method or set environ in rspec?
end
