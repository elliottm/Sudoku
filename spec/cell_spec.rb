require 'cell'

describe Cell do
  it 'can look up its value' do
  	cell = Cell.new 5, 0
  	expect(cell.value).to eq 5
  end

  it 'knows if it is filled out' do
  	cell = Cell.new 5, 0
  	expect(cell).to be_filled_out
  end

  it 'knows if it is not filled out' do
  	cell = Cell.new 0, 0
  	expect(cell).not_to be_filled_out
  end

  it 'knows its position' do
    cell = Cell.new 0, 1
    expect(cell.position_in_puzzle).to eq 1
  end

  it 'knows it is in row one' do
  	cell = Cell.new 0, 1
  	expect(cell.row_position).to eq 1
  end

   it 'knows it is in row 3' do
  	cell = Cell.new 0, 29
  	expect(cell.row_position).to eq 4
  end

  it 'knows it is in column 3' do
  	cell = Cell.new 0, 29
  	cell.row_position
  	expect(cell.column_position).to eq 3
  end 

  it 'knows it is in in box 2' do
  	cell = Cell.new 0, 29
  	cell.row_position
  	cell.column_position
  	expect(cell.box_position).to eq 4
  end


  # it 'can return its row neighbours', :rows=>true do
  #   cell = Cell.new 0, 29
  #   grid = double(:grid,:results => [Cell.new(0,0),Cell.new(100,30)])
  #   expect(cell.row_neighbours(grid).first.value).to eq 100
  # end


  




end