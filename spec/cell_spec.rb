require 'cell'

describe Cell do 
  it 'know its value' do
    cell = Cell.new 0, 0
    expect(cell.value).to eq 0
  end

  it 'knows its position' do
    cell = Cell.new 0, 8
    expect(cell.position).to eq 8
  end

  it 'knows whether it is not solved' do
    cell = Cell.new 0, 7
    expect(cell).not_to be_solved
  end
  
  it 'knows whether it is solved' do
    cell = Cell.new 1, 8
    expect(cell).to be_solved
  end

  it 'knows what row it is in' do
    cell = Cell.new 1, 7
    expect(cell.row).to eq 3
  end
  
  it 'knows what column it is in' do
    cell = Cell.new 1, 8
    expect(cell.column).to eq 3
  end
  
  it 'knows what column it is in' do
    cell = Cell.new 1, 7
    expect(cell.column).to eq 2
  end

  it 'should know what box it is in' do
    cell = Cell.new 1, 3
    expect(cell.box).to eq 1
  end

end

