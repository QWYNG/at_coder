RSpec.describe 'test' do
  it 'test with "5\n"' do
    io = IO.popen("ruby math-and-algorithm/026.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("11.416666666667\n")
  end

end
