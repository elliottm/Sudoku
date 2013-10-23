class Cell

	def initialize value, position
		@value = value
		@position = position
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

  def row_position
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
    return @column = 1 if @position % 9
    nil
  end


end
