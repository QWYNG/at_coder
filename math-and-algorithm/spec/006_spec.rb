RSpec.describe 'test' do
  it 'test with "100\n"' do
    io = IO.popen("ruby math-and-algorithm/006.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("203\n")
  end

  it 'test with "27\n"' do
    io = IO.popen("ruby math-and-algorithm/006.rb", "w+")
    io.puts("27\n")
    io.close_write
    expect(io.readlines.join).to eq("57\n")
  end

end
