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

   it 'knows it is in row nine' do
  	cell = Cell.new 0, 79
  	cell.row_position
  	expect(cell.row).to eq 9
  end
    

  it 'knows it is in row 1' do
  	cell = Cell.new 0, 9
  	cell.column_position
  	expect(cell.column).to eq 1
  end

  it 'knows its candidates/values are posssible' do
  end




end