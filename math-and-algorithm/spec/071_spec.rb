RSpec.describe 'test' do
  it 'test with "2\n1 3 3\n3 1 3\n"' do
    io = IO.popen("ruby math-and-algorithm/071.rb", "w+")
    io.puts("2\n1 3 3\n3 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1.5\n")
  end

end
