RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby math-and-algorithm/059.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
