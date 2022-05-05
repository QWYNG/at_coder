RSpec.describe 'test' do
  it 'test with "6 2\n"' do
    io = IO.popen("ruby math-and-algorithm/021.rb", "w+")
    io.puts("6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

end
