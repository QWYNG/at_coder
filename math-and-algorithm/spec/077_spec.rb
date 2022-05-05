RSpec.describe 'test' do
  it 'test with "2\n1 2\n10 20\n"' do
    io = IO.popen("ruby math-and-algorithm/077.rb", "w+")
    io.puts("2\n1 2\n10 20\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

end
