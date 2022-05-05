RSpec.describe 'test' do
  it 'test with "2\n2 50\n4 100\n"' do
    io = IO.popen("ruby math-and-algorithm/024.rb", "w+")
    io.puts("2\n2 50\n4 100\n")
    io.close_write
    expect(io.readlines.join).to eq("50.000000000000\n")
  end

end
