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
    
    it 'should know it has no rows' do
  	  expect(grid).not_to have_rows
  	end

  	it 'should know it has rows' do
  	  grid.split_the_string
  	  grid.split_the_array_into_rows(9)
  	  expect(grid).to have_rows
  	end

  	it 'should split array into 9 rows' do
  	  grid.split_the_string
  	  grid.split_the_array_into_rows(9)
  	  expect(grid.row_count).to eq 9
  	end

  end
end
