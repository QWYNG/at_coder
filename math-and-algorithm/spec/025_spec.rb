RSpec.describe 'test' do
  it 'test with "5\n3 1 4 1 5\n9 2 6 5 3\n"' do
    io = IO.popen("ruby math-and-algorithm/025.rb", "w+")
    io.puts("5\n3 1 4 1 5\n9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("21.333333333333\n")
  end

end
