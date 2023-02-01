RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby typical90/050.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4 4\n"' do
    io = IO.popen("ruby typical90/050.rb", "w+")
    io.puts("4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 2\n"' do
    io = IO.popen("ruby typical90/050.rb", "w+")
    io.puts("5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "6783 125\n"' do
    io = IO.popen("ruby typical90/050.rb", "w+")
    io.puts("6783 125\n")
    io.close_write
    expect(io.readlines.join).to eq("674508908\n")
  end

end
