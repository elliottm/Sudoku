class Cell

  def initialize value, position
    @value = value
    @position = position
    @row = row
    @column = column
    @solved = solved?
  end

  attr_accessor :value
  attr_reader :position, :row, :column

  def solved?
    return true if @value > 0
    false
  end

  def row
    if position < 3
      @row = 1
    elsif position < 6
      @row = 2
    else position < 9
      @row = 3
    end
  end

  def column
    return @column = 3 if @position == 8
    @column = (position+1)%3
  end

  def box
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
 

end
  
  