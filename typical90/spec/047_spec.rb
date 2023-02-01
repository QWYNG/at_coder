RSpec.describe 'test' do
  it 'test with "5\nRGBGB\nGRGRB\n"' do
    io = IO.popen("ruby typical90/047.rb", "w+")
    io.puts("5\nRGBGB\nGRGRB\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3\nRRR\nBBB\n"' do
    io = IO.popen("ruby typical90/047.rb", "w+")
    io.puts("3\nRRR\nBBB\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10\nBGGGRBBGRG\nRGBBRGRGGG\n"' do
    io = IO.popen("ruby typical90/047.rb", "w+")
    io.puts("10\nBGGGRBBGRG\nRGBBRGRGGG\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
