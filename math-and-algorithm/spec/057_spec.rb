RSpec.describe 'test' do
  it 'test with "2 6\n"' do
    io = IO.popen("ruby math-and-algorithm/057.rb", "w+")
    io.puts("2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "3 8\n"' do
    io = IO.popen("ruby math-and-algorithm/057.rb", "w+")
    io.puts("3 8\n")
    io.close_write
    expect(io.readlines.join).to eq("153\n")
  end

  it 'test with "4 7\n"' do
    io = IO.popen("ruby math-and-algorithm/057.rb", "w+")
    io.puts("4 7\n")
    io.close_write
    expect(io.readlines.join).to eq("781\n")
  end

end
