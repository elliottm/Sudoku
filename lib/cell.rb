class Cell

	def initialize value, position
		@value = value
		@position = position
		@row = self.row_position
		@column = self.column_position
		@box = self.box_position
	end

	attr_accessor :value
	attr_reader :position, :row, :column

	def filled_out?
  	if self.value > 0
  	  @filled_out = true
  	else 
  	  @filled_out = false
  	end
  end

  def position_in_puzzle
    @position
  end

  def row_position #build for 9x9 suduko only ! 
    if @position < 8
    	@row = 1
    elsif @position < 17
    	@row = 2
    elsif @position < 26
    	@row = 3
    elsif @position < 35
    	@row = 4
    elsif @position < 44
      @row = 5
    elsif @position < 53
      @row = 6
    elsif @position < 62
    	@row = 7
    elsif @position < 71
    	@row = 8
    else
    	@row = 9
    end
  end
  
  def column_position
    adjust_position = @position + 1
    return @column = 9 if @position == 81
    @column = adjust_position % 9
  end

  def box_position
  	if @row <= 3 and @column <= 3
  		@box = 1
  	elsif @row <= 3 and @column <= 6
  	  @box = 2 
  	elsif @row <= 3 and @column <= 9
  	  @box = 3
  	elsif @row <= 6 and @column <= 3
  	  @box = 4
  	elsif @row <= 6 and @column <= 6
  	  @box = 5
  	elsif @row <= 6 and @column <= 9
  	  @box = 6
  	elsif @row <= 9 and @column <= 3
  	  @box = 7
  	elsif @row <= 9 and @column <= 6
  	  @box = 8
  	else @row <= 9 and @column <= 9
  	  @box = 9
  	end
  end

  # def row_neighbours(grid)
  #   @row_neighbours = grid.results.select { |c| row == c.row}
  # end

  # above = rowneighbours for within cell class..test aswell in spec file !
  #DIGEST !!!!



end
