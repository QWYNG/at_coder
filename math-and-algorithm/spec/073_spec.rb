RSpec.describe 'test' do
  it 'test with "2\n3 5\n"' do
    io = IO.popen("ruby math-and-algorithm/073.rb", "w+")
    io.puts("2\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

end
