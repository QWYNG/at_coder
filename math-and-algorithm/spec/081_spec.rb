RSpec.describe 'test' do
  it 'test with "29000\n"' do
    io = IO.popen("ruby math-and-algorithm/081.rb", "w+")
    io.puts("29000\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
