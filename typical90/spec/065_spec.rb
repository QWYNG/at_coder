RSpec.describe 'test' do
  it 'test with "3 1 2 5\n4 2 4\n"' do
    io = IO.popen("ruby typical90/065.rb", "w+")
    io.puts("3 1 2 5\n4 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "65 6 12 35\n30 18 35\n"' do
    io = IO.popen("ruby typical90/065.rb", "w+")
    io.puts("65 6 12 35\n30 18 35\n")
    io.close_write
    expect(io.readlines.join).to eq("257190020\n")
  end

  it 'test with "23502 65936 72385 95835\n72759 85735 72385\n"' do
    io = IO.popen("ruby typical90/065.rb", "w+")
    io.puts("23502 65936 72385 95835\n72759 85735 72385\n")
    io.close_write
    expect(io.readlines.join).to eq("229429276\n")
  end

end
