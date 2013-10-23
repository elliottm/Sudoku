require 'grid'

describe Grid do
  context 'initialization' do
  	let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' } 
    let(:grid) { Grid.new(puzzle) }

  	it 'should split puzzle string into and array' do
  	  grid.split_the_string
  	  expect(grid.cell_count).to eq 81
  	end

  	it 'should split into integer array' do
  	  grid.split_the_string
  	  grid.to_integer_array
 	  expect(grid.cells).to start_with [0,1,5,0,0]
	end

	it 'can create 81 cell objects' do
  	  grid.split_the_string
  	  grid.to_integer_array
  	  grid.create_cell_objects
  	  expect(grid.result_count).to eq 81
  	end

  	it 'should split array into 9 rows' do
  	  grid.split_the_string
  	  grid.split_the_array_into_rows(9)
  	  expect(grid.row_count).to eq 9
  	end

  	it 'can look up a row' do
  	  grid.split_the_string
  	  grid.to_integer_array
  	  grid.split_the_array_into_rows(9)
  	  expect(grid.lookup_rows(0)).to eq [0,1,5,0,0,3,0,0,2]
  	end

  	it 'can look up a cell within a row' do
  	  grid.split_the_string
  	  grid.to_integer_array
  	  grid.split_the_array_into_rows(9)
  	  expect(grid.lookup_cell(0,1)).to eq 1
  	end

  	it 'should have an unsolved first cell' do
  	  grid.split_the_string
  	  grid.to_integer_array
  	  grid.split_the_array_into_rows(9)
  	  grid.solved_lookup(0,0)
  	  expect(grid).not_to be_solved
  	end

  	it 'should have a solved second cell' do
      grid.split_the_string
  	  grid.to_integer_array
  	  grid.split_the_array_into_rows(9)
  	  grid.solved_lookup(0,1)
  	  expect(grid).to be_solved
  	end

  end
end
