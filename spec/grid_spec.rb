require 'grid'

describe Grid do

  context 'initialisation' do
    let(:puzzle) {'012345678'}
    let(:grid) {Grid.new(puzzle)}

    it 'knows its puzzle' do
  	  expect(grid).to have_puzzle
    end

    it 'can convert puzzle into an integer array' do
      expect(grid.convert_puzzle).to eq [0,1,2,3,4,5,6,7,8]
    end

    it 'can implement cells' do
      grid.implement_puzzle_to_cells
      expect(grid.cell_count).to eq 9
    end

    it 'knows all the cells in row 1' do
      cell = double :cell,  {:row => 1 }
      grid.implement_puzzle_to_cells
      expect(grid.row_neighbours(cell).last.value).to eq 2
    end

    it 'knows all the cells in column 1' do
      cell = double :cell,  {:column => 1 }
      grid.implement_puzzle_to_cells
      expect(grid.column_neighbours(cell).last.value).to eq 6
    end

    it 'knows what box it is in' do
      cell = double :cell,  {:box => 1 }
      grid.implement_puzzle_to_cells
      expect(grid.box_neighbours(cell).last.value).to eq 8
    end

    it 'knows which cells are unsolved' do
      cell = double :cell, {:solved? => 0 }
      grid.implement_puzzle_to_cells
      expect(grid.cells_to_be_solved.last.value).to eq 0
    end

    it 'knows which cells are candidates for unsolved' do
      cell = double :cell
      grid.implement_puzzle_to_cells
      grid.candidates(cell)
      expect(grid.candidates(cell)).to eq []
    end







  end
end