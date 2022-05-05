RSpec.describe 'test' do
  it 'test with "3\n1 3 5\n"' do
    io = IO.popen("ruby math-and-algorithm/074.rb", "w+")
    io.puts("3\n1 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
