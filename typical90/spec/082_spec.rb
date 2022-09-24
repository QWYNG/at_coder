RSpec.describe 'test' do
  it 'test with "3 5\n"' do
    io = IO.popen("ruby typical90/082.rb", "w+")
    io.puts("3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "98 100\n"' do
    io = IO.popen("ruby typical90/082.rb", "w+")
    io.puts("98 100\n")
    io.close_write
    expect(io.readlines.join).to eq("694\n")
  end

  it 'test with "1001 869120\n"' do
    io = IO.popen("ruby typical90/082.rb", "w+")
    io.puts("1001 869120\n")
    io.close_write
    expect(io.readlines.join).to eq("59367733\n")
  end

  it 'test with "381453331666495446 746254773042091083\n"' do
    io = IO.popen("ruby typical90/082.rb", "w+")
    io.puts("381453331666495446 746254773042091083\n")
    io.close_write
    expect(io.readlines.join).to eq("584127830\n")
  end

end
