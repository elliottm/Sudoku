grid = Grid.new('015003002000100906270068430490002017501040380003905000900081040860070025037204600')
grid.split_the_string
grid.to_integer_array
grid.split_the_array_into_rows(9)

require './grid.rb'
require './cell.rb'
grid = Grid.new('015003')
grid.split_the_string
grid.to_integer_array
grid.map_elements_into_cell