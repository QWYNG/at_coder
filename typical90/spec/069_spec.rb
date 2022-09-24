RSpec.describe 'test' do
  it 'test with "2 3\n"' do
    io = IO.popen("ruby typical90/069.rb", "w+")
    io.puts("2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "10 2\n"' do
    io = IO.popen("ruby typical90/069.rb", "w+")
    io.puts("10 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2021 617\n"' do
    io = IO.popen("ruby typical90/069.rb", "w+")
    io.puts("2021 617\n")
    io.close_write
    expect(io.readlines.join).to eq("53731843\n")
  end

end
