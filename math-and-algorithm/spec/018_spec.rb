RSpec.describe 'test' do
  it 'test with "5\n100 300 400 400 200\n"' do
    io = IO.popen("ruby math-and-algorithm/018.rb", "w+")
    io.puts("5\n100 300 400 400 200\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
