require './grid.rb'
require './cell.rb'
grid = Grid.new('015003002000100906270068430490002017501040380003905000900081040860070025037204600')
grid.split_the_string
grid.to_integer_array
grid.create_cell_objects


require './grid.rb'
require './cell.rb'
grid = Grid.new('015003')
grid.split_the_string
grid.to_integer_array
grid.create_cell_objects
